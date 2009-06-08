package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

/**
 * Represents coordinates with X and Y values.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class Position
{
  private int posX;

  private int posY;

  /**
   * Creates an object with X and Y initialised to 0.
   */
  public Position()
  {
    posX = 0;
    posY = 0;
  }

  /**
   * Creates an initialised Position object.
   * 
   * @param _posX X position
   * @param _posY Y position
   */
  public Position(int _posX, int _posY)
  {
    posX = _posX;
    posY = _posY;
  }

  /**
   * Get the X position.
   * 
   * @return X value
   */
  public int getPosX()
  {
    return posX;
  }

  /**
   * Get the Y position.
   * 
   * @return Y value
   */
  public int getPosY()
  {
    return posY;
  }

  /**
   * Change the X position.
   * 
   * @param value new X value
   */
  public void setPosX(int value)
  {
    posX = value;
  }

  /**
   * Change the Y position.
   * 
   * @param value new Y value
   */
  public void setPosY(int value)
  {
    posY = value;
  }
}
