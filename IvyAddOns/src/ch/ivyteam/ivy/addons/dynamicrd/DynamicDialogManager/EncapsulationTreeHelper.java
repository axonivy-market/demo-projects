package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.restricted.util.TypeCategory;
import ch.ivyteam.ivy.addons.restricted.util.TypeCategory.TypeCategoryEnum;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.addons.util.DataClassExplorer;
import ch.ivyteam.ivy.addons.util.ExploreHandler;
import ch.ivyteam.ivy.cm.IContentManagementSystem;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.widgets.components.RTableTree;
import ch.ivyteam.ivy.scripting.objects.Tree;

/**
 * Helper class to manage the DynamicDialogManager tree that contains the DC attribute tree.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 04.11.2009
 */
@SuppressWarnings("unchecked")
public final class EncapsulationTreeHelper
{
  private EncapsulationTreeHelper()
  {
  }

  /**
   * Construct a tree where every node are attributes of a dataclass.
   * 
   * @param dataClassName data class's name
   * @param classLoader project class loader that can load the specified class
   * @param cms Ivy content management system to use
   * @param classMap map that contains the class to use for a specific attribute
   * @return a Tree object that contains the attribute hiearchy or null if the class can not be loaded
   * @throws AddonsException
   */
  public static Tree fillTree(String dataClassName, ClassLoader classLoader, IContentManagementSystem cms,
          Map<String, Class<?>> classMap) throws AddonsException
  {
    Class<?> clazz;
    Tree tree;

    tree = null;
    try
    {
      clazz = classLoader.loadClass(dataClassName);
      tree = fillTree(clazz, null, cms, classMap);

    }
    catch (ClassNotFoundException e)
    {
      Ivy.log().error(e.getMessage());
    }
    return tree;
  }

  /**
   * Constructs a tree where every node are attributes of a dataclass.
   * 
   * @param clazz data class type
   * @param cms Ivy content management system to use
   * @param classMap map that contains the class to use for a specific attribute
   * @return a tree object that contains the attribute hiearchy or null if the class can not be loaded
   * @throws AddonsException
   */
  public static Tree fillTree(Class<?> clazz, List<String> rootCmsContext, IContentManagementSystem cms,
          Map classMap) throws AddonsException
  {
    Tree tree;
    DataClassExplorer explorer;

    tree = new Tree();

    explorer = DataClassExplorer.createClassExplorer(new Handler(tree, rootCmsContext, cms));
    explorer.setClassMap(classMap);
    explorer.explore(clazz);

    return tree;
  }

  /**
   * Gets the value of the current selected node.
   * 
   * @param tableTree RList widget that contains the attributes
   * @return value of the current selected node
   */
  public static EncapsulationTreeNodeValue getCurrentSelectionNode(RTableTree tableTree)
  {
    Object object;
    EncapsulationTreeNodeValue value;
    Tree node;

    value = null;

    node = tableTree.getSelectedTreeNode();
    if (node != null)
    {
      object = node.getValue();

      if (object instanceof EncapsulationTreeNodeValue)
      {
        value = (EncapsulationTreeNodeValue) object;
      }
    }
    return value;
  }

  private static final class Handler extends ExploreHandler<Class<?>>
  {
    private Stack<Tree> stack;

    private Tree root;

    private Map<String, String> map;

    private List<String> rootCmsContext;

    private IContentManagementSystem cms;

    private Handler(Tree tree, List<String> rootCmsContext, IContentManagementSystem cms)
    {
      stack = new Stack<Tree>();
      root = tree;
      map = new HashMap<String, String>();
      this.rootCmsContext = rootCmsContext;
      this.cms = cms;
    }

    @Override
    public boolean startNode(Class<?> clazz, String name, String qualifiedName) throws AddonsException
    {
      Tree node;
      List<String> cmsContext;
      List<String> parentCmsContext;
      Boolean isRoot;
      String uri;
      String usedName;
      boolean exploreNode;

      usedName = name;

      exploreNode = true;
      isRoot = false;
      if (stack.empty())
      {
        isRoot = true;
      }

      if (isRoot)
      {
        node = root;
        node.setInfo(clazz.getCanonicalName());
        usedName = clazz.getSimpleName();
      }
      else
      {
        node = new Tree();
      }

      cmsContext = new ArrayList<String>();

      if (clazz != null)
      {
        if (TypeCategory.getCategory(clazz) == TypeCategoryEnum.COMPLEX)
        {
          uri = "/" + clazz.getName().replaceAll("[.<>]", "/");
          cmsContext.add(uri);

          if (map.containsKey(uri))
          {
            Tree t = stack.peek();

            while (t.getParent() != null)
            {
              if (((EncapsulationTreeNodeValue) t.getValue()).getClazz().equals(clazz))
              {
                exploreNode = false;
              }
              t = t.getParent();
            }
          }
          map.put(uri, clazz.getSimpleName());
        }
        cmsContext = Cms.getCmsContexts(cmsContext, cms);

        if (isRoot && rootCmsContext != null)
        {
          cmsContext.addAll(rootCmsContext);
        }
      }

      if (!isRoot)
      {
        parentCmsContext = ((EncapsulationTreeNodeValue) stack.peek().getValue()).getCmsContext();
        cmsContext.addAll(Cms.getCmsContexts(usedName, parentCmsContext, cms));

        for (String s : parentCmsContext)
        {
          s = s.startsWith("X") ? s.substring(1) : s;
          map.put(s + "/" + usedName, usedName + "->" + map.get(s));
        }
      }

      for (String s : cmsContext)
      {
        s = s.startsWith("X") ? s.substring(1) : s;
        if (!map.containsKey(s))
        {
          map.put(s, clazz.getSimpleName() + " - specific context - " + s);
        }
      }

      node.setInfo(usedName);
      node.setValue(new EncapsulationTreeNodeValue(usedName, clazz, false, cmsContext, map, qualifiedName));

      if (!isRoot)
      {
        stack.peek().add(node);
      }

      stack.push(node);

      return exploreNode && super.startNode(clazz, usedName, qualifiedName);
    }

    @Override
    public void endNode(Class<?> clazz, String name, String uri)
    {
      Tree node;
      EncapsulationTreeNodeValue value;

      node = stack.pop();

      if (node.isLeaf())
      {
        value = (EncapsulationTreeNodeValue) node.getValue();
        value.setLeaf(true);
      }

      super.endNode(clazz, name, uri);
    }
  }
}
