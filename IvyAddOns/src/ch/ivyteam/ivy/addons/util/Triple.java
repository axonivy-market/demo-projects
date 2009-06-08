package ch.ivyteam.ivy.addons.util;

import java.io.Serializable;

/**
 * This keeps together three objects.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 * 
 * @param <T> first item
 * @param <V> second item
 * @param <W> third item
 */
public class Triple<T, V, W> implements Serializable
{
  private static final long serialVersionUID = 746391713181558202L;

  protected T first;

  protected V second;

  protected W third;

  /**
   * Creates and empty object.
   */
  public Triple()
  {
    first = null;
    second = null;
    third = null;
  }

  /**
   * Creates and initialised object.
   * 
   * @param _first first object
   * @param _second second object
   * @param _third third object
   */
  public Triple(T _first, V _second, W _third)
  {
    first = _first;
    second = _second;
    third = _third;
  }

  /**
   * @return first object
   */
  public T getFirst()
  {
    return first;
  }

  /**
   * @return second object
   */
  public V getSecond()
  {
    return second;
  }

  /**
   * @return third object
   */
  public W getThird()
  {
    return third;
  }

  /**
   * Changes first object
   * 
   * @param _first new object
   */
  public void setFirst(T _first)
  {
    first = _first;
  }

  /**
   * Changes second object
   * 
   * @param _second new object
   */
  public void setSecond(V _second)
  {
    second = _second;
  }

  /**
   * Changes third object
   * 
   * @param _third new object
   */
  public void setThird(W _third)
  {
    third = _third;
  }

}
