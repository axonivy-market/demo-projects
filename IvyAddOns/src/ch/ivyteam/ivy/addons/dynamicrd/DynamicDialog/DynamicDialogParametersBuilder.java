package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;
import ch.ivyteam.ivy.addons.restricted.util.TypeCategory;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.addons.util.DataClassExplorer;
import ch.ivyteam.ivy.addons.util.ExploreHandler;
import ch.ivyteam.ivy.addons.util.StringUtil;

final class DynamicDialogParametersBuilder
{
  /**
   * Suffix used for data class attributes that received the displayed value of component like ComboBox.
   */
  private static final String DESCRIPTION = "Description";

  private static final int POSITION_DEFAULT_INTERVAL = 1000;

  private DynamicDialogParametersBuilder()
  {
  }

  protected static TreeNode<ComponentParameters> build(Class clazz, List<String> cmsContext,
          String defaultDBConfig, String prefix, final Map<String, Class<?>> classMap) throws AddonsException
  {
    return build(clazz, cmsContext, new ArrayList<TreeNode<ComponentParameters>>(), defaultDBConfig, prefix,
            classMap);
  }

  protected static TreeNode<ComponentParameters> build(Class clazz, List<String> cmsContext,
          final List<TreeNode<ComponentParameters>> componentParameterList, String defaultDBConfig,
          String prefix, final Map<String, Class<?>> classMap) throws AddonsException
  {
    DataClassExplorer<Class> explorer;
    ParametersBuildHandler handler;

    handler = new ParametersBuildHandler(Cms.getCmsContexts(cmsContext), clazz, componentParameterList,
            defaultDBConfig, prefix);
    try
    {
      explorer = DataClassExplorer.createClassExplorer(handler);
      explorer.setClassMap(classMap);
      explorer.explore(clazz);
    }
    catch (AddonsException e)
    {
      throw new DynamicDialogException(e);
    }
    prepareNextToFields(componentParameterList);

    return handler.getRoot();
  }

  private static void prepareNextToFields(final List<TreeNode<ComponentParameters>> componentParameterList)
  {
    Map<String, FieldComponentParameters> nextTo;
    String fullName;
    ComponentParameters parameters;

    nextTo = new HashMap<String, FieldComponentParameters>();

    for (TreeNode<ComponentParameters> parametersNode : componentParameterList)
    {
      parameters = parametersNode.getValue();

      if (parameters instanceof FieldComponentParameters)
      {
        FieldComponentParameters fieldComponentParameters = (FieldComponentParameters) parameters;

        if (!fieldComponentParameters.getNextTo().equals(""))
        {
          fullName = StringUtil.cleanUpPath(fieldComponentParameters.getFullName() + "/"
                  + fieldComponentParameters.getNextTo());
          if (nextTo.containsKey(fullName))
          {
            throw new DynamicDialogException("There is two field components next to '" + fullName + "' - "
                    + fieldComponentParameters.getFullName() + " - " + nextTo.get(fullName));
          }
          nextTo.put(fullName, fieldComponentParameters);
        }
      }
    }
    for (TreeNode<ComponentParameters> parametersNode : componentParameterList)
    {
      parameters = parametersNode.getValue();
      fullName = parameters.getFullName();
      if (nextTo.containsKey(fullName) && parameters instanceof FieldComponentParameters)
      {
        FieldComponentParameters fieldComponentParameters = (FieldComponentParameters) parameters;

        fieldComponentParameters.setComponentNextTo(nextTo.get(fullName));
      }
    }
  }

  private static final class ParametersBuildHandler extends ExploreHandler<Class>
  {
    private Stack<TreeNode<ComponentParameters>> stack;

    private Stack<Class<?>> classStack;

    private List<String> rootCmsContext;

    private TreeNode<ComponentParameters> root;

    private Class rootClass;

    private List<TreeNode<ComponentParameters>> componentParameterList;

    private String defaultDBConfig;

    private String prefix;

    private ParametersBuildHandler(List<String> cmsContext, Class clazz,
            final List<TreeNode<ComponentParameters>> componentParameterList, String defaultDBConfig,
            String prefix)
    {
      super();

      stack = new Stack<TreeNode<ComponentParameters>>();
      classStack = new Stack<Class<?>>();
      rootCmsContext = cmsContext;
      if (rootCmsContext == null)
      {
        rootCmsContext = new ArrayList<String>();
      }
      this.rootClass = clazz;
      this.componentParameterList = componentParameterList;
      this.defaultDBConfig = defaultDBConfig;
      this.prefix = prefix;
    }

    private TreeNode<ComponentParameters> getRoot()
    {
      return root;
    }

    @Override
    public boolean startNode(Class clazz, String name, String qualifiedName) throws AddonsException
    {
      TreeNode<ComponentParameters> parent;
      Class<?> parentClass;
      TreeNode<ComponentParameters> node;
      List<String> cmsContext;
      ComponentParameters parameters;
      ComponentParameters parentParameters;
      Integer position;
      String baseAttributeName;
      boolean isBaseAttribute;
      String elementName;
      String prefixedQualifiedName;
      Class elementClass;

      elementName = name;
      prefixedQualifiedName = qualifiedName;
      elementClass = clazz;

      if (prefix != null)
      {
        prefixedQualifiedName = prefix + prefixedQualifiedName;
      }

      if (elementName.equals(""))
      {
        elementName = elementClass.getSimpleName();
      }

      parent = null;
      parentClass = null;
      parentParameters = null;
      position = POSITION_DEFAULT_INTERVAL;
      if (stack.isEmpty())
      {
        cmsContext = rootCmsContext;

        elementClass = this.rootClass;
      }
      else
      {
        parent = stack.peek();
        parentClass = classStack.peek();
        cmsContext = Cms.getCmsContexts(elementName, parent.getValue().getCmsContexts());
        position = (parent.size() + 1) * POSITION_DEFAULT_INTERVAL;
        parentParameters = parent.getValue();
      }

      node = null;
      isBaseAttribute = true;
      if (parent != null && elementName.endsWith(DESCRIPTION))
      {
        baseAttributeName = elementName.replaceFirst(DESCRIPTION + "$", "");
        try
        {
          for (PropertyDescriptor propertyDescriptor : Introspector.getBeanInfo(parentClass)
                  .getPropertyDescriptors())
          {
            if (propertyDescriptor.getName().equals(baseAttributeName))
            {
              isBaseAttribute = false;
              break;
            }
          }
        }
        catch (IntrospectionException e)
        {
          throw new DynamicDialogException(e);
        }
      }

      if (parent == null || isBaseAttribute)
      {
        if (TypeCategory.getCategory(elementClass) == TypeCategory.TypeCategoryEnum.COMPLEX)
        {
          cmsContext.add(0, "/" + elementClass.getName().replaceAll("[.<>]", "/"));
        }

        if (Cms.coAsBoolean(cmsContext, KnownParameters.EXISTS_PARAMETER, true))
        {
          node = new TreeNode<ComponentParameters>();
          parameters = ComponentParameterFactory.createParametersComponent(elementName, elementClass,
                  (ComplexComponentParameters) parentParameters, cmsContext, prefixedQualifiedName, position,
                  node, defaultDBConfig);
          node.setValue(parameters);

          componentParameterList.add(node);

          if (parent == null)
          {
            root = node;
          }
          else
          {
            parent.add(node);
          }
        }
      }
      stack.push(node);
      classStack.push(elementClass);

      return super.startNode(elementClass, elementName, prefixedQualifiedName) && node != null;
    }

    @Override
    public void endNode(Class object, String name, String uri)
    {
      TreeNode<ComponentParameters> node;

      node = stack.pop();
      classStack.pop();

      if (node != null && node.getChildren() != null)
      {
        Collections.sort(node.getChildren());
      }
      super.endNode(object, name, uri);
    }
  }
}
