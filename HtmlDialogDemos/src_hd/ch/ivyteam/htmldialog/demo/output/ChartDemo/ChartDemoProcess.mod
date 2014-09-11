[Ivy]
[>Created: Thu Sep 11 09:56:02 CEST 2014]
146052EC6B2ADB68 3.17 #module
>Proto >Proto Collection #zClass
Cs0 ChartDemoProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @GridStep f6 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @RichDialogMethodStart f8 '' #zField
Cs0 @RichDialogProcessEnd f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @GridStep f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogMethodStart f13 '' #zField
Cs0 @RichDialogProcessEnd f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
>Proto Cs0 Cs0 ChartDemoProcess #zField
Cs0 f0 guid 146052EC6FEF2D5C #txt
Cs0 f0 type ch.ivyteam.htmldialog.demo.output.ChartDemo.ChartDemoData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 51 51 26 26 -20 15 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f0 -1|-1|-9671572 #nodeStyle
Cs0 f1 type ch.ivyteam.htmldialog.demo.output.ChartDemo.ChartDemoData #txt
Cs0 f1 451 51 26 26 0 12 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f1 -1|-1|-9671572 #nodeStyle
Cs0 f6 actionDecl 'ch.ivyteam.htmldialog.demo.output.ChartDemo.ChartDemoData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode 'import org.primefaces.model.chart.LinearAxis;
import org.primefaces.model.chart.CategoryAxis;
import org.primefaces.model.chart.Axis;
import org.primefaces.model.chart.AxisType;
import org.primefaces.model.chart.LineChartModel;
import org.primefaces.model.chart.LineChartSeries;
import org.primefaces.model.chart.BarChartSeries;

BarChartSeries rainfall = new BarChartSeries();
rainfall.setLabel("Rainfall");
rainfall.set("Jun", 176);
rainfall.set("Jul", 135);
rainfall.set("Aug", 150);
rainfall.set("Sep", 216);
rainfall.set("Okt", 194);
rainfall.set("Nov", 95);
rainfall.set("Dec", 75);

LineChartSeries temperature = new LineChartSeries();
temperature.setLabel("Temperature");
temperature.setYaxis(AxisType.Y2);
temperature.set("Jun", 21);
temperature.set("Jul", 25);
temperature.set("Aug", 27);
temperature.set("Sep", 23);
temperature.set("Okt", 18);
temperature.set("Nov", 14);
temperature.set("Dec", 11);

LineChartModel chartModel = new LineChartModel();
chartModel.addSeries(rainfall);
chartModel.addSeries(temperature);
chartModel.setSeriesColors("7cb5ec,afca05");
  
chartModel.setTitle("Multi Axis Demo Chart");
chartModel.setLegendPosition("ne");
chartModel.setMouseoverHighlight(false);
chartModel.setAnimate(true);

chartModel.getAxes().put(AxisType.X, new CategoryAxis(""));
  
Axis yAxis = chartModel.getAxis(AxisType.Y);
yAxis.setLabel("Rainfall [mm]");
yAxis.setMin(50);
yAxis.setMax(250);
	  
Axis yRightAxis = new LinearAxis("Temperature [C°]");
yRightAxis.setMin(10);
yRightAxis.setMax(30);
  
chartModel.getAxes().put(AxisType.Y2, yRightAxis);

// %1 = x, %2 = y
chartModel.setDatatipFormat("%2$$s");
// see ext java script function in view
chartModel.setExtender("ext");

out.comboChartModel = chartModel;' #txt
Cs0 f6 type ch.ivyteam.htmldialog.demo.output.ChartDemo.ChartDemoData #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init combo
chart model</name>
        <nameStyle>17,7
5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 136 42 112 44 -37 -15 #rect
Cs0 f6 @|StepIcon #fIcon
Cs0 f6 -1|-1|-9671572 #nodeStyle
Cs0 f7 expr out #txt
Cs0 f7 77 64 136 64 #arcP
Cs0 f8 guid 1460568243F99D79 #txt
Cs0 f8 type ch.ivyteam.htmldialog.demo.output.ChartDemo.ChartDemoData #txt
Cs0 f8 method itemSelected(org.primefaces.event.ItemSelectEvent) #txt
Cs0 f8 disableUIEvents false #txt
Cs0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<org.primefaces.event.ItemSelectEvent event> param = methodEvent.getInputArguments();
' #txt
Cs0 f8 inActionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_INFO,
"Item selected", "Item Index: " + param.event.getItemIndex() +
", Series Index:" + param.event.getSeriesIndex());

FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Cs0 f8 outParameterDecl '<> result;
' #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>itemSelected(...)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 51 147 26 26 -52 15 #rect
Cs0 f8 @|RichDialogMethodStartIcon #fIcon
Cs0 f8 -1|-1|-9671572 #nodeStyle
Cs0 f9 type ch.ivyteam.htmldialog.demo.output.ChartDemo.ChartDemoData #txt
Cs0 f9 179 147 26 26 0 12 #rect
Cs0 f9 @|RichDialogProcessEndIcon #fIcon
Cs0 f9 -1|-1|-9671572 #nodeStyle
Cs0 f10 expr out #txt
Cs0 f10 77 160 179 160 #arcP
Cs0 f11 actionDecl 'ch.ivyteam.htmldialog.demo.output.ChartDemo.ChartDemoData out;
' #txt
Cs0 f11 actionTable 'out=in;
' #txt
Cs0 f11 actionCode 'import org.primefaces.model.chart.PieChartModel;

PieChartModel model = new PieChartModel();
model.set("Brand 1", 540);
model.set("Brand 2", 325);
model.set("Brand 3", 702);
model.set("Brand 4", 421);
  
model.setTitle("Pie Demo Chart");
model.setLegendPosition("e");
model.setShowDataLabels(true);
model.setSliceMargin(8);
model.setShadow(false);
model.setSeriesColors("ddffaa,b7f17c,8ae82d,52c60d");
// Data format: label, value or percent (default)
model.setDataFormat("value");
// see ext java script function in view
model.setExtender("ext");

out.pieChartModel = model;

' #txt
Cs0 f11 type ch.ivyteam.htmldialog.demo.output.ChartDemo.ChartDemoData #txt
Cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init pie
chart model</name>
        <nameStyle>9,7
11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f11 296 42 112 44 -37 -15 #rect
Cs0 f11 @|StepIcon #fIcon
Cs0 f11 -1|-1|-9671572 #nodeStyle
Cs0 f12 expr out #txt
Cs0 f12 248 64 296 64 #arcP
Cs0 f2 expr out #txt
Cs0 f2 408 64 451 64 #arcP
Cs0 f13 guid 14623C0E2748E74C #txt
Cs0 f13 type ch.ivyteam.htmldialog.demo.output.ChartDemo.ChartDemoData #txt
Cs0 f13 method sliceSelected(org.primefaces.event.ItemSelectEvent) #txt
Cs0 f13 disableUIEvents false #txt
Cs0 f13 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<org.primefaces.event.ItemSelectEvent event> param = methodEvent.getInputArguments();
' #txt
Cs0 f13 inActionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_INFO,
"Slice selected", "Index: " + param.event.getItemIndex());

FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Cs0 f13 outParameterDecl '<> result;
' #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>sliceSelected(...)</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 51 211 26 26 -52 15 #rect
Cs0 f13 @|RichDialogMethodStartIcon #fIcon
Cs0 f13 -1|-1|-9671572 #nodeStyle
Cs0 f14 type ch.ivyteam.htmldialog.demo.output.ChartDemo.ChartDemoData #txt
Cs0 f14 179 211 26 26 0 12 #rect
Cs0 f14 @|RichDialogProcessEndIcon #fIcon
Cs0 f14 -1|-1|-9671572 #nodeStyle
Cs0 f15 77 224 179 224 #arcP
>Proto Cs0 .type ch.ivyteam.htmldialog.demo.output.ChartDemo.ChartDemoData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f8 mainOut f10 tail #connect
Cs0 f10 head f9 mainIn #connect
Cs0 f6 mainOut f12 tail #connect
Cs0 f12 head f11 mainIn #connect
Cs0 f11 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f13 mainOut f15 tail #connect
Cs0 f15 head f14 mainIn #connect
