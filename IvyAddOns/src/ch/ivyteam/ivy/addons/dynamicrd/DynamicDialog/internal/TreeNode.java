package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/**
 * This class represent a tree element.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 26.11.2009
 * 
 * @param <T> type of the stored value of this node and its children
 */
@SuppressWarnings("unchecked")
public final class TreeNode<T> implements Collection<TreeNode<T>>, Comparable<TreeNode<T>>, Serializable
{
  private static final long serialVersionUID = -8054975126935018540L;

  private T value;

  private List<TreeNode<T>> children;

  private TreeNode<T> parent;

  /**
   * Constructs a new tree node object.
   */
  public TreeNode()
  {
    super();
  }

  /**
   * {@inheritDoc}
   */
  public boolean add(TreeNode<T> node)
  {
    if (node.parent != null)
    {
      node.parent.remove(node);
    }
    node.parent = this;
    createChildren();
    return children.add(node);
  }

  /**
   * {@inheritDoc}
   */
  @Deprecated
  public boolean addAll(Collection<? extends TreeNode<T>> nodes)
  {
    boolean result;

    result = false;
    for (TreeNode<T> node : nodes)
    {
      result |= add(node);
    }
    return result;
  }

  /**
   * {@inheritDoc}
   */
  public void clear()
  {
    if (children != null)
    {
      children.clear();
    }
  }

  /**
   * {@inheritDoc}
   */
  public boolean contains(Object arg0)
  {
    return children == null ? false : children.contains(arg0);
  }

  /**
   * {@inheritDoc}
   */
  public boolean containsAll(Collection<?> arg0)
  {
    return children == null ? false : children.containsAll(arg0);
  }

  /**
   * Checks if the child list is initialized and initializes it if not.
   */
  private void createChildren()
  {
    if (children == null)
    {
      children = (List<TreeNode<T>>) new ArrayList();
    }
  }

  /**
   * Gets the child list.
   * 
   * @return the children
   */
  public List<TreeNode<T>> getChildren()
  {
    return children;
  }

  /**
   * Gets the parent node of the node.
   * 
   * @return the parent node
   */
  public TreeNode<T> getParent()
  {
    return parent;
  }

  /**
   * Gets the value stored in the node.
   * 
   * @return value
   */
  public T getValue()
  {
    return value;
  }

  /**
   * {@inheritDoc}
   */
  public boolean isEmpty()
  {
    return children == null ? true : children.isEmpty();
  }

  /**
   * {@inheritDoc}
   */
  public Iterator<TreeNode<T>> iterator()
  {
    createChildren();
    return children.iterator();
  }

  /**
   * {@inheritDoc}
   */
  public boolean remove(Object arg0)
  {
    boolean result;

    result = children == null ? false : children.remove(arg0);

    if (result && arg0 instanceof TreeNode)
    {
      TreeNode<T> attribute = (TreeNode) arg0;

      attribute.parent = null;
    }

    return result;
  }

  /**
   * {@inheritDoc}
   */
  public boolean removeAll(Collection<?> arg0)
  {
    boolean result;

    result = false;

    for (Object object : arg0)
    {
      result |= remove(object);
    }
    return result;
  }

  /**
   * {@inheritDoc}
   */
  public boolean retainAll(Collection<?> arg0)
  {
    boolean result;

    result = children == null ? false : children.retainAll(arg0);

    for (Object object : arg0)
    {
      if (object instanceof TreeNode)
      {
        TreeNode<T> attribute = (TreeNode) object;

        if (!attribute.parent.contains(attribute))
        {
          attribute.parent = null;
        }
      }
    }

    return result;
  }

  /**
   * Sets the value stored in the node.
   * 
   * @param value value that this node receive
   */
  public void setValue(T value)
  {
    this.value = value;
  }

  /**
   * {@inheritDoc}
   */
  public int size()
  {
    return children == null ? 0 : children.size();
  }

  /**
   * Says if this node has one child or more.
   * 
   * @return true if the node has children; false otherwise
   */
  public boolean hasChildren()
  {
    return size() != 0;
  }

  /**
   * {@inheritDoc}
   */
  public Object[] toArray()
  {
    return children == null ? new Object[0] : children.toArray();
  }

  /**
   * {@inheritDoc}
   */
  public <E> E[] toArray(E[] arg0)
  {
    E[] result;

    if (children == null)
    {
      result = (E[]) java.lang.reflect.Array.newInstance(Object.class, 0);
    }
    else
    {
      result = children.toArray(arg0);
    }
    return result;
  }

  /**
   * {@inheritDoc}
   */
  public int compareTo(TreeNode<T> arg0)
  {
    if (this == arg0)
    {
      return 0;
    }
    if (arg0 == null)
    {
      return 1;
    }
    if (this.value instanceof Comparable && arg0.value instanceof Comparable)
    {
      return ((Comparable<T>) value).compareTo((T) arg0.value);
    }
    return 1;
  }
}
