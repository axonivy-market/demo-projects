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

  private int maxPosX;

  private int maxPosY;

  /**
   * Creates an object with X and Y initialised to 0.
   */
  public Position()
  {
    this(0, 0);
  }

  /**
   * Creates an initialised Position object.
   * 
   * @param posX X position
   * @param posY Y position
   */
  public Position(int posX, int posY)
  {
    this.posX = posX;
    this.posY = posY;
    maxPosX = posX;
    maxPosY = posY;
  }

  /**
   * Gets the X position.
   * 
   * @return X value
   */
  public final int getPosX()
  {
    return posX;
  }

  /**
   * Gets the Y position.
   * 
   * @return Y value
   */
  public final int getPosY()
  {
    return posY;
  }

  /**
   * Changes the X position.
   * 
   * @param value new X value
   */
  public final void setPosX(int value)
  {
    posX = value;
    if (posX > maxPosX)
    {
      maxPosX = posX;
    }
  }

  /**
   * Changes the Y position.
   * 
   * @param value new Y value
   */
  public final void setPosY(int value)
  {
    posY = value;
    if (posY > maxPosY)
    {
      maxPosY = posY;
    }
  }

  public final int getMaxPosX()
  {
    return maxPosX;
  }

  public final int getMaxPosY()
  {
    return maxPosY;
  }
}
