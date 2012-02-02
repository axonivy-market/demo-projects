package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager;

class ParameterTableTreeNodeContent
{
  protected enum Type
  {
    TRISTATE, STRING, NUMBER, INTEGER, LIST, STATIC, BOOLEAN, OBJECT, EMPTY
  }

  protected enum MyTreeNodeStyle
  {
    NORMAL, BOLD, ITALIC, BOLD_ITALIC
  };

  private Object content;

  private Type type;

  private String[] acceptedValues;

  private MyTreeNodeStyle style = null;

  private Object object = null;

  protected ParameterTableTreeNodeContent(Object content, Type type, String[] acceptedValues)
  {
    this.content = content;
    this.type = type;
    if (acceptedValues != null)
    {
      this.acceptedValues = acceptedValues.clone();
    }
  }

  protected ParameterTableTreeNodeContent(Object content, Type type)
  {
    this(content, type, null);
  }

  protected ParameterTableTreeNodeContent(String value, String[] acceptedValues)
  {
    this(value, Type.LIST, acceptedValues);
  }

  protected ParameterTableTreeNodeContent(String value)
  {
    this(value, Type.STRING);
  }

  protected ParameterTableTreeNodeContent(String value, boolean isEditable)
  {
    this(value, isEditable ? Type.STRING : Type.STATIC);
  }

  protected ParameterTableTreeNodeContent(Integer value)
  {
    this(value, Type.INTEGER);
  }

  protected ParameterTableTreeNodeContent(Number value)
  {
    this(value, Type.NUMBER);
  }

  protected ParameterTableTreeNodeContent(Object value)
  {
    this(value, Type.OBJECT);
  }

  protected ParameterTableTreeNodeContent()
  {
    this(null, Type.EMPTY);
  }

  protected Type getType()
  {
    return type;
  }

  protected Object getContent()
  {
    return content;
  }

  protected Object getDisplayableContent()
  {
    Object result;

    result = content;
    if (type.equals(Type.TRISTATE))
    {
      if (content.equals("1"))
      {
        result = "true";
      }
      else if (content.equals("0"))
      {
        result = "false";
      }
      else
      {
        result = "";
      }
    }
    return result;
  }

  protected final String[] getAcceptedValues()
  {
    return acceptedValues;
  }

  protected final void setContent(Object content)
  {
    this.content = content;
    if (type == Type.TRISTATE)
    {
      if (content.equals("true"))
      {
        this.content = "1";
      }
      else if (content.equals("false"))
      {
        this.content = "0";
      }
    }
  }

  protected final Object getObject()
  {
    return object;
  }

  protected final void setObject(Object object)
  {
    this.object = object;
  }

  protected final MyTreeNodeStyle getStyle()
  {
    return style;
  }

  protected final void setStyle(MyTreeNodeStyle style)
  {
    this.style = style;
  }

  protected final void setAcceptedValues(String[] acceptedValues)
  {
    this.acceptedValues = acceptedValues.clone();
  }

  protected final void setType(Type type)
  {
    this.type = type;
  }
}
