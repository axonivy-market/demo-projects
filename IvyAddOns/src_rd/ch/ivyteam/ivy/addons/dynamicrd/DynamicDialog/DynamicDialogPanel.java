package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.ArrayList;
import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.Component;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentFactory;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentParameters;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.Container;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ContainerParameters;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.FieldComponent;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.Position;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.StaticRelation;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.DataClassAttributeDetail;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.RuntimeRelations;
import ch.ivyteam.ivy.addons.util.StringUtil;
import ch.ivyteam.ivy.addons.xmlserialization.SerializeDataClass;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.BinaryRichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCContainer;

/**
 * NOTE: This is a binary RichDialog. It is not intended to be loaded and/or edited
 * with the VisualEditor.
 */
public class DynamicDialogPanel 
extends BinaryRichDialogGridBagPanel 
implements IRichDialogPanel
{
  private static final long serialVersionUID = 845523074893733115L;

  private RuntimeRelations runtimeRelations = null; // @jve:decl-index=0:

  private StaticRelation staticRelation = null;

  public DynamicDialogPanel()
  {
    super();
  }

  private void constructUI(Container parentContainer, ULCContainer ulcContainer, boolean useParentContainer,
          Position pos, List<DataClassAttributeDetail> attributeDetails)
  {
    Component lastComponent;
    FieldComponent fieldComponent;
    ComponentParameters parameters;
    Container container;
    RuntimeRelations.RuntimeRelationItem relation;

    if (!useParentContainer || pos == null)
    {
      pos = new Position();
    }

    lastComponent = null;
    for (DataClassAttributeDetail attributeDetail : attributeDetails)
    {
      relation = runtimeRelations.get(attributeDetail.fullName);

      parameters = staticRelation.get(attributeDetail.fullName).getComponentParameters();

      if (parameters.isContainer())
      {
        if (parameters.isNewColumn())
        {
          parentContainer.newColumn(pos);
        }
        container = ComponentFactory.CreateContainer(this, parentContainer, ulcContainer,
                (ContainerParameters) parameters, 1);

        if (relation != null)
        {
          relation.component = container;
        }

        container.initialize(pos,
                lastComponent != null && lastComponent instanceof Container ? (Container) lastComponent
                        : null);

        constructUI(container, container.getUlcContainer(), container.useParentContainer(), pos,
                attributeDetail.children);

        lastComponent = container;
      }
      else
      {
        fieldComponent = ComponentFactory.CreateComponent(this, parentContainer, ulcContainer, parameters);

        if (fieldComponent != null)
        {
          fieldComponent.initialize(pos);

          if (relation != null)
          {
            relation.component = fieldComponent;
          }

          // dynamicRelation.setValue(relation);
          // component.setValue(attributeDetail.read.invoke(relation.getTargetObject(),
          // new Object[] {}));
        }
      }
    }
    // finalizeContainer(pos, ulcContainer, useParentContainer);
  }

  private void constructUI(DataClassAttributeDetail attributeDetail)
  {
    ArrayList<DataClassAttributeDetail> attributeDetails;

    attributeDetails = new ArrayList<DataClassAttributeDetail>();

    attributeDetails.add(attributeDetail);

    constructUI(null, this, false, null, attributeDetails);
  }

  public Component getComponent(String fullName)
  {
    Component component;
    RuntimeRelations.RuntimeRelationItem relation;

    fullName = StringUtil.cleanUpPath(fullName);

    component = null;
    if (!fullName.equals(""))
    {
      relation = runtimeRelations.get(fullName);
      if (relation != null)
      {
        component = relation.component;
      }
    }
    return component;
  }

  public CompositeObject getValue()
  {
    return runtimeRelations == null ? null : runtimeRelations.getValue();
  }

  public FieldComponent getFieldComponent(String fullName)
  {
    Component component;
    FieldComponent fieldComponent;

    fieldComponent = null;
    component = getComponent(fullName);
    if (component != null && component instanceof FieldComponent)
    {
      fieldComponent = (FieldComponent) component;
    }
    return fieldComponent;
  }

  protected void invokePostInitialisationMethods(List<DataClassAttributeDetail> attributeDetails)
  {
    RuntimeRelations.RuntimeRelationItem relation;
    FieldComponent fieldComponent;
    Component component;

    if (attributeDetails != null)
    {
      for (DataClassAttributeDetail attribute : attributeDetails)
      {
        relation = runtimeRelations.get(attribute.fullName);
        if (relation != null)
        {
          invokePostInitialisationMethods(attribute.children);

          component = relation.component;
          if (component != null)
          {
            component.init();
          }
          fieldComponent = relation.getFieldComponent();
          if (fieldComponent != null)
          {
            fieldComponent.valueChanged();
          }
        }
      }
    }
  }

  public Boolean isBlocked()
  {
    return validateAndFocus(runtimeRelations.getRootStaticRelation().getAttributeDetail().children, false)[1];
  }

  public Boolean isValid()
  {
    return validateAndFocus(runtimeRelations.getRootStaticRelation().getAttributeDetail().children, false)[0];
  }

  public void serializeXML(String fileName)
  {
    SerializeDataClass s;

    s = new SerializeDataClass(runtimeRelations.getStaticRelation());

    s.serializeXML(getValue(), runtimeRelations.getAttributeDetail());
    s.saveDocument(fileName);
  }

  public void setFocus()
  {
    getNextFocusableComponent().requestFocus();
  }

  public void setFocusOnFirstError()
  {
    validateAndFocus(runtimeRelations.getRootStaticRelation().getAttributeDetail().children, true);
  }

  public void setValue(CompositeObject object)
  {
    runtimeRelations.setValue(object.deepClone());
  }

  public void start()
  {
  }

  public void start(CompositeObject object, ch.ivyteam.ivy.scripting.objects.List<String> cmsContext)
  {
    start(object, cmsContext, null);
  }

  public void start(CompositeObject object, ch.ivyteam.ivy.scripting.objects.List<String> cmsContext,
          String databaseConfiguration)
  {
    StaticRelation staticRelation;
    String fullName;

    fullName = "Object";

    staticRelation = new StaticRelation();

    staticRelation.create(object, fullName, cmsContext, databaseConfiguration);

    start(fullName, object, staticRelation);
  }

  public void start(String fullName, CompositeObject object, StaticRelation _staticRelation)
  {
    GridBagConstraints constraints;
    RFiller filler;

    fullName = StringUtil.cleanUpPath(fullName);

    runtimeRelations = new RuntimeRelations(fullName, _staticRelation);

    runtimeRelations.linkObjectToRelation(object.deepClone());

    staticRelation = _staticRelation;

    constraints = new GridBagConstraints();
    constraints.setGridX(0);
    constraints.setGridY(0);
    constraints.setGridWidth(3);
    constraints.setWeightX(1);
    filler = new RFiller();
    add(filler, constraints);

    // constructUI(null, this, false, null, dynamicRelation
    // .getRootStaticRelation().getAttributeDetail().children);
    constructUI(runtimeRelations.getRootStaticRelation().getAttributeDetail());

    invokePostInitialisationMethods(runtimeRelations.getRootStaticRelation().getAttributeDetail().children);
  }

  public Boolean[] validate()
  {
    return validateAndFocus(runtimeRelations.getRootStaticRelation().getAttributeDetail().children, false);
  }

  protected Boolean[] validateAndFocus(DataClassAttributeDetail attributeDetail, boolean setFocus)
  {
    RuntimeRelations.RuntimeRelationItem relation;
    FieldComponent fieldComponent;
    Boolean isValid;
    Boolean isBlocked;

    isValid = true;
    isBlocked = false;

    if (attributeDetail != null)
    {
      relation = runtimeRelations.get(attributeDetail.fullName);
      if (relation != null)
      {
        fieldComponent = relation.getFieldComponent();
        if (fieldComponent != null)
        {
          isValid = fieldComponent.validate();

          isBlocked = !isValid && fieldComponent.getParameters().isValidationBlocking();

          if (!isValid && setFocus)
          {
            fieldComponent.setFocus();
          }
        }
      }
    }

    return new Boolean[] {isValid, isBlocked};
  }

  protected Boolean[] validateAndFocus(List<DataClassAttributeDetail> attributeDetails, boolean setFocus)
  {
    Boolean isValid;
    Boolean isBlocked;
    RuntimeRelations.RuntimeRelationItem relation;
    Component component;
    Boolean[] temp;

    isValid = true;
    isBlocked = false;

    if (attributeDetails != null)
    {
      for (DataClassAttributeDetail attribute : attributeDetails)
      {
        relation = runtimeRelations.get(attribute.fullName);
        if (relation != null)
        {
          component = relation.component;
          if (component != null && component.isVisible())
          {
            temp = validateAndFocus(attribute.children, setFocus);
            isValid &= temp[0];
            isBlocked |= temp[1];

            temp = validateAndFocus(attribute, setFocus);
            isValid &= temp[0];
            isBlocked |= temp[1];
          }
        }
      }
    }
    return new Boolean[] {isValid, isBlocked};
  }
}
