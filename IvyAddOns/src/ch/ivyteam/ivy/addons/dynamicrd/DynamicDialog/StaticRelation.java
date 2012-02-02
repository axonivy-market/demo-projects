package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;

@Deprecated
public class StaticRelation implements Serializable
{
  private static final long serialVersionUID = 2937439995721542481L;

  private Map<String, Item> relations;

  public class Item implements Serializable
  {

    private static final long serialVersionUID = 5664987172289361212L;

    public List<String> cmsContexts;

    public TreeNode<ComponentParameters> attributeDetail;

    public String dbConfig;

    public Item(String dbConfig, TreeNode<ComponentParameters> attributeDetail, List<String> cmsContexts)
    {
      this.dbConfig = dbConfig;
      this.attributeDetail = attributeDetail;
      this.cmsContexts = cmsContexts;
    }
  }

  @SuppressWarnings("unchecked")
  public final void create(String fileName) throws AddonsException
  {
    FileInputStream fis;
    ObjectInputStream in;

    fis = null;
    in = null;
    try
    {
      fis = new FileInputStream(fileName);
      in = new ObjectInputStream(fis);
      relations = (Map<String, Item>) in.readObject();
      in.close();
    }
    catch (IOException ex)
    {
      throw new AddonsException(ex);
    }
    catch (ClassNotFoundException ex)
    {
      throw new AddonsException(ex);
    }
  }

  public final void create(CompositeObject object, String prefix, List<String> cmsContext, String dbConfig,
          Map<String, String> params, String dbSubFolder)
  {
    ArrayList<TreeNode<ComponentParameters>> componentParameterList = new ArrayList<TreeNode<ComponentParameters>>();

    try
    {
      DynamicDialogParametersBuilder.build(object.getClass(), cmsContext, componentParameterList, dbConfig,
              prefix, null);
    }
    catch (AddonsException e)
    {
      throw new DynamicDialogException(e);
    }

    if (relations == null)
    {
      relations = new HashMap<String, Item>();
    }
    for (TreeNode<ComponentParameters> node : componentParameterList)
    {
      relations
              .put(node.getValue().getFullName(), new Item(dbConfig, node, node.getValue().getCmsContexts()));
    }
  }

  public final void save(String fileName)
  {
    FileOutputStream fos = null;
    ObjectOutputStream out = null;

    try
    {
      fos = new FileOutputStream(fileName);
      out = new ObjectOutputStream(fos);
      out.writeObject(relations);
      out.close();
    }
    catch (IOException ex)
    {
      throw new DynamicDialogException(ex);
    }
  }

  public final void update(CompositeObject object, String prefix)
  {
    // Nothing
  }

  public final Item get(String name)
  {
    return relations.get(name);
  }

  public final String[] getCmsContext(String name)
  {
    return relations.get(name).cmsContexts.toArray(new String[] {});
  }
}
