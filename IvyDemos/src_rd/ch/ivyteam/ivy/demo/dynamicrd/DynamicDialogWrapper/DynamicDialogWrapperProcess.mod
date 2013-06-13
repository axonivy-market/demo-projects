[Ivy]
[>Created: Thu Jun 13 15:46:42 CEST 2013]
11EB0BDD6A32E57E 3.17 #module
>Proto >Proto Collection #zClass
Cs0 ContactProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @RichDialogInitStart f3 '' #zField
Cs0 @RichDialogProcessEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @RichDialogProcessStart f6 '' #zField
Cs0 @RichDialogEnd f7 '' #zField
Cs0 @RichDialogProcessStep f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @RichDialogMethodStart f11 '' #zField
Cs0 @RichDialogProcessStep f12 '' #zField
Cs0 @RichDialogProcessEnd f13 '' #zField
Cs0 @PushWFArc f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @RichDialog f0 '' #zField
Cs0 @PushWFArc f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
>Proto Cs0 Cs0 ContactProcess #zField
Cs0 f3 guid 11EB0C163825CAEC #txt
Cs0 f3 type ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData #txt
Cs0 f3 method start(ch.ivyteam.ivy.scripting.objects.CompositeObject,List<String>) #txt
Cs0 f3 disableUIEvents false #txt
Cs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.scripting.objects.CompositeObject object,List<java.lang.String> cmsContext> param = methodEvent.getInputArguments();
' #txt
Cs0 f3 outParameterDecl '<> result;
' #txt
Cs0 f3 embeddedRdInitializations '{/dynamicDialogPanel {/fieldName "dynamicDialogPanel"/startMethod "start(ch.ivyteam.ivy.scripting.objects.CompositeObject,List<String>)"/parameterMapping "param.object=callParam.object;\nparam.cmsContext=callParam.cmsContext;\n"/initScript ""}}' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(CompositeObject,List&lt;String&gt;)</name>
        <nameStyle>35,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 30 22 20 20 13 0 #rect
Cs0 f3 @|RichDialogInitStartIcon #fIcon
Cs0 f4 type ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData #txt
Cs0 f4 27 75 26 26 14 0 #rect
Cs0 f4 @|RichDialogProcessEndIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 40 42 40 75 #arcP
Cs0 f6 guid 11EB0E966FACFAAA #txt
Cs0 f6 type ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData #txt
Cs0 f6 actionDecl 'ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>quit</name>
        <nameStyle>4,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 30 134 20 20 13 0 #rect
Cs0 f6 @|RichDialogProcessStartIcon #fIcon
Cs0 f7 type ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData #txt
Cs0 f7 guid 11EB0E97C08D7C57 #txt
Cs0 f7 27 283 26 26 14 0 #rect
Cs0 f7 @|RichDialogEndIcon #fIcon
Cs0 f9 actionDecl 'ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData out;
' #txt
Cs0 f9 actionTable 'out=in;
' #txt
Cs0 f9 actionCode 'import ch.ivyteam.util.GuidUtil;
in.xmlFile = new File(GuidUtil.generateID()+".xml", true);
panel.dynamicDialogPanel.serializeXML(in.xmlFile.getJavaFile().getAbsolutePath());
' #txt
Cs0 f9 type ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData #txt
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create temp XML file</name>
        <nameStyle>20,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f9 22 188 36 24 24 -3 #rect
Cs0 f9 @|RichDialogProcessStepIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 40 154 40 188 #arcP
Cs0 f11 guid 11EB19B86CB38BF8 #txt
Cs0 f11 type ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData #txt
Cs0 f11 method lastNameChanged(ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel,String) #txt
Cs0 f11 disableUIEvents false #txt
Cs0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel dynamicDialog,java.lang.String fullName> param = methodEvent.getInputArguments();
' #txt
Cs0 f11 inParameterMapAction 'out.dynamicDialog=param.dynamicDialog;
out.fullName=param.fullName;
' #txt
Cs0 f11 outParameterDecl '<> result;
' #txt
Cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>lastNameChanged(DynamicDialogPanel,String)</name>
        <nameStyle>42,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f11 207 134 18 20 16 -1 #rect
Cs0 f11 @|RichDialogMethodStartIcon #fIcon
Cs0 f12 actionDecl 'ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData out;
' #txt
Cs0 f12 actionTable 'out=in;
' #txt
Cs0 f12 actionCode 'import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.FieldComponent;

FieldComponent field;

ivy.log.debug("Received callback: Field={0} on Panel={1}", in.fullName, in.dynamicDialog.getName());

// Get field component that invokes the RD method (lastName)
field = panel.dynamicDialogPanel.getFieldComponent(in.fullName);
if (field != null) 
{
	// Do something
	ivy.log.debug(field.getParameters().getName());
}

// Get field component that invokes the RD method (lastName)
field = panel.dynamicDialogPanel.getFieldComponent(in.fullName + "/../firstName");
if (field != null) 
{
	// Do something
	ivy.log.debug(field.getParameters().getName());
}' #txt
Cs0 f12 type ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f12 198 188 36 24 20 -2 #rect
Cs0 f12 @|RichDialogProcessStepIcon #fIcon
Cs0 f13 type ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData #txt
Cs0 f13 203 283 26 26 14 0 #rect
Cs0 f13 @|RichDialogProcessEndIcon #fIcon
Cs0 f14 expr out #txt
Cs0 f14 216 154 216 188 #arcP
Cs0 f15 expr out #txt
Cs0 f15 216 212 216 283 #arcP
Cs0 f0 targetWindow THIS #txt
Cs0 f0 targetDisplay THIS #txt
Cs0 f0 richDialogId ch.ivyteam.ivy.demo.util.TextViewer #txt
Cs0 f0 startMethod start(String,String,Boolean,Boolean) #txt
Cs0 f0 type ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData #txt
Cs0 f0 panelName <%=in.xmlFile.getName()%> #txt
Cs0 f0 requestActionDecl '<String textToDisplay, String shortDescr, Boolean doWrap, Boolean isCode> param;' #txt
Cs0 f0 requestMappingAction 'param.textToDisplay=in.xmlFile.read();
param.shortDescr="Showing serialized data of Dynamic Dialog (Temporary File="+in.xmlFile.getName()+").";
param.doWrap=false;
param.isCode=true;
' #txt
Cs0 f0 responseActionDecl 'ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData out;
' #txt
Cs0 f0 responseMappingAction 'out=in;
' #txt
Cs0 f0 windowConfiguration '* ' #txt
Cs0 f0 isAsynch true #txt
Cs0 f0 isInnerRd true #txt
Cs0 f0 isDialog false #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show serialized data</name>
        <nameStyle>20,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 22 236 36 24 25 -2 #rect
Cs0 f0 @|RichDialogIcon #fIcon
Cs0 f1 expr out #txt
Cs0 f1 40 212 40 236 #arcP
Cs0 f2 expr out #txt
Cs0 f2 40 260 40 283 #arcP
>Proto Cs0 .type ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper.DynamicDialogWrapperData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 .ui2RdDataAction 'out.contact=panel.dynamicDialogPanel.value as businessdata.SimpleContact;
' #txt
>Proto Cs0 .rdData2UIAction 'panel.dynamicDialogPanel.value=in.contact;
' #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f6 mainOut f10 tail #connect
Cs0 f10 head f9 mainIn #connect
Cs0 f11 mainOut f14 tail #connect
Cs0 f14 head f12 mainIn #connect
Cs0 f12 mainOut f15 tail #connect
Cs0 f15 head f13 mainIn #connect
Cs0 f9 mainOut f1 tail #connect
Cs0 f1 head f0 mainIn #connect
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f7 mainIn #connect
