[Ivy]
156DF5CB0BDE73A1 3.28 #module
>Proto >Proto Collection #zClass
Ms0 ModifyAddressProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @MessageFlowInP-0n messageIn messageIn #zField
Ms0 @MessageFlowOutP-0n messageOut messageOut #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @UdProcessEnd f1 '' #zField
Ms0 @UdEvent f3 '' #zField
Ms0 @UdExitEnd f4 '' #zField
Ms0 @UdInit f6 '' #zField
Ms0 @GridStep f0 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @GridStep f8 '' #zField
Ms0 @PushWFArc f5 '' #zField
Ms0 @Alternative f10 '' #zField
Ms0 @PushWFArc f11 '' #zField
Ms0 @PushWFArc f9 '' #zField
Ms0 @UdProcessEnd f12 '' #zField
Ms0 @GridStep f13 '' #zField
Ms0 @PushWFArc f14 '' #zField
Ms0 @GridStep f16 '' #zField
Ms0 @PushWFArc f17 '' #zField
Ms0 @PushWFArc f15 '' #zField
>Proto Ms0 Ms0 ModifyAddressProcess #zField
Ms0 f1 339 51 26 26 0 12 #rect
Ms0 f1 @|UdProcessEndIcon #fIcon
Ms0 f3 guid 156DF5CB0E771AB2 #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ms0 f3 83 147 26 26 -14 12 #rect
Ms0 f3 @|UdEventIcon #fIcon
Ms0 f4 435 147 26 26 0 12 #rect
Ms0 f4 @|UdExitEndIcon #fIcon
Ms0 f6 guid 156DF5D8A2530110 #txt
Ms0 f6 method start(String) #txt
Ms0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String id> param = methodEvent.getInputArguments();
' #txt
Ms0 f6 inParameterMapAction 'out.addressId=param.id;
' #txt
Ms0 f6 outParameterDecl '<> result;
' #txt
Ms0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f6 83 51 26 26 -33 15 #rect
Ms0 f6 @|UdInitIcon #fIcon
Ms0 f0 actionTable 'out=in;
' #txt
Ms0 f0 actionCode 'import workflow.businessdata.Address;

in.address = ivy.repo.find(in.addressId, Address.class) as Address;' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load Address</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f0 168 42 112 44 -38 -8 #rect
Ms0 f0 @|StepIcon #fIcon
Ms0 f2 expr out #txt
Ms0 f2 109 64 168 64 #arcP
Ms0 f7 expr out #txt
Ms0 f7 280 64 339 64 #arcP
Ms0 f8 actionTable 'out=in;
' #txt
Ms0 f8 actionCode ivy.repo.save(in.address); #txt
Ms0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save into Repo</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f8 264 138 112 44 -41 -8 #rect
Ms0 f8 @|StepIcon #fIcon
Ms0 f5 expr out #txt
Ms0 f5 376 160 435 160 #arcP
Ms0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is up to date?</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f10 176 144 32 32 -36 -35 #rect
Ms0 f10 @|AlternativeIcon #fIcon
Ms0 f11 expr out #txt
Ms0 f11 109 160 176 160 #arcP
Ms0 f9 expr in #txt
Ms0 f9 outCond ivy.repo.isUpToDate(in.address) #txt
Ms0 f9 208 160 264 160 #arcP
Ms0 f12 595 243 26 26 0 12 #rect
Ms0 f12 @|UdProcessEndIcon #fIcon
Ms0 f13 actionTable 'out=in;
' #txt
Ms0 f13 actionCode 'import workflow.businessdata.Address;

in.address = ivy.repo.reload(in.address) as Address;' #txt
Ms0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Reload data
 from Repo</name>
        <nameStyle>22
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f13 264 234 112 44 -35 -15 #rect
Ms0 f13 @|StepIcon #fIcon
Ms0 f14 expr in #txt
Ms0 f14 192 176 264 256 #arcP
Ms0 f14 1 192 256 #addKink
Ms0 f14 1 0.1556203489120305 0 0 #arcLabel
Ms0 f16 actionTable 'out=in;
' #txt
Ms0 f16 actionCode 'import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

FacesContext.getCurrentInstance().addMessage(null,
	new FacesMessage(FacesMessage.SEVERITY_ERROR,
	"The address data was modified by another user, while you were editing it. 
	The modified data was reloaded, please save your changes again.", "Business Data not up-to-date"));' #txt
Ms0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Display warning</name>
        <nameStyle>15
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f16 424 234 112 44 -45 -7 #rect
Ms0 f16 @|StepIcon #fIcon
Ms0 f17 expr out #txt
Ms0 f17 376 256 424 256 #arcP
Ms0 f15 expr out #txt
Ms0 f15 536 256 595 256 #arcP
>Proto Ms0 .type workflow.businessdata.ModifyAddress.ModifyAddressData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f6 mainOut f2 tail #connect
Ms0 f2 head f0 mainIn #connect
Ms0 f0 mainOut f7 tail #connect
Ms0 f7 head f1 mainIn #connect
Ms0 f8 mainOut f5 tail #connect
Ms0 f5 head f4 mainIn #connect
Ms0 f3 mainOut f11 tail #connect
Ms0 f11 head f10 in #connect
Ms0 f10 out f9 tail #connect
Ms0 f9 head f8 mainIn #connect
Ms0 f10 out f14 tail #connect
Ms0 f14 head f13 mainIn #connect
Ms0 f13 mainOut f17 tail #connect
Ms0 f17 head f16 mainIn #connect
Ms0 f16 mainOut f15 tail #connect
Ms0 f15 head f12 mainIn #connect
