[Ivy]
015B14256823DE3D 7.5.0 #module
>Proto >Proto Collection #zClass
Ls0 LicenceUploadComponentProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @UdInit f0 '' #zField
Ls0 @UdProcessEnd f1 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @UdMethod f11 '' #zField
Ls0 @UdProcessEnd f12 '' #zField
Ls0 @GridStep f14 '' #zField
Ls0 @PushWFArc f15 '' #zField
Ls0 @ErrorBoundaryEvent f6 '' #zField
Ls0 @GridStep f10 '' #zField
Ls0 @PushWFArc f7 '' #zField
Ls0 @PushWFArc f8 '' #zField
Ls0 @PushWFArc f3 '' #zField
>Proto Ls0 Ls0 LicenceUploadComponentProcess #zField
Ls0 f0 guid 15AF1AE8F3F46A75 #txt
Ls0 f0 method start() #txt
Ls0 f0 inParameterDecl '<> param;' #txt
Ls0 f0 outParameterDecl '<> result;' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -16 15 #rect
Ls0 f0 @|UdInitIcon #fIcon
Ls0 f1 211 51 26 26 0 12 #rect
Ls0 f1 @|UdProcessEndIcon #fIcon
Ls0 f2 expr out #txt
Ls0 f2 109 64 211 64 #arcP
Ls0 f11 guid 15B0F97F3ADD01AC #txt
Ls0 f11 method fileUploadEvent(org.primefaces.event.FileUploadEvent) #txt
Ls0 f11 inParameterDecl '<org.primefaces.event.FileUploadEvent fileUploadEvent> param;' #txt
Ls0 f11 inParameterMapAction 'out.newLicence=param.fileUploadEvent.getFile();
' #txt
Ls0 f11 outParameterDecl '<> result;' #txt
Ls0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileUploadEvent(FileUploadEvent)</name>
        <nameStyle>32,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f11 83 115 26 26 -92 15 #rect
Ls0 f11 @|UdMethodIcon #fIcon
Ls0 f12 499 115 26 26 0 12 #rect
Ls0 f12 @|UdProcessEndIcon #fIcon
Ls0 f14 actionTable 'out=in;
' #txt
Ls0 f14 actionCode 'import ch.ivyteam.ivy.config.NewLicenceFileInstaller;

out.licenceFile = NewLicenceFileInstaller.install(
		in.newLicence.getFileName(), 
		in.newLicence.getInputstream());' #txt
Ls0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Install new licence file</name>
    </language>
</elementInfo>
' #txt
Ls0 f14 240 106 128 44 -60 -8 #rect
Ls0 f14 @|StepIcon #fIcon
Ls0 f15 expr out #txt
Ls0 f15 109 128 240 128 #arcP
Ls0 f6 actionTable 'out=in;
out.error=error;
' #txt
Ls0 f6 attachedToRef 015B14256823DE3D-f14 #txt
Ls0 f6 329 145 30 30 0 15 #rect
Ls0 f6 @|ErrorBoundaryEventIcon #fIcon
Ls0 f10 actionTable 'out=in;
' #txt
Ls0 f10 actionCode 'import org.apache.commons.lang3.exception.ExceptionUtils;
import ch.ivyteam.licence.InvalidLicenceException;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

FacesContext context = FacesContext.getCurrentInstance();
if (ExceptionUtils.getRootCause(in.error) instanceof InvalidLicenceException)
{
  context.addMessage(null ,new FacesMessage(FacesMessage.SEVERITY_ERROR, "Licence is not valid!", "Please choose a valid Licence!"));	
}
else
{
  context.addMessage(null ,new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error Uploading Licence", in.error.getErrorMessage()));	
}

' #txt
Ls0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Display error</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f10 287 199 112 44 -35 -8 #rect
Ls0 f10 @|StepIcon #fIcon
Ls0 f7 343 174 343 199 #arcP
Ls0 f7 0 0.6106321044618936 0 0 #arcLabel
Ls0 f8 expr out #txt
Ls0 f8 399 221 512 141 #arcP
Ls0 f8 1 512 221 #addKink
Ls0 f8 0 0.7804177403779172 0 0 #arcLabel
Ls0 f3 368 128 499 128 #arcP
>Proto Ls0 .type com.axonivy.engine.config.ui.settings.component.LicenceUploadComponent.LicenceUploadComponentData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f11 mainOut f15 tail #connect
Ls0 f15 head f14 mainIn #connect
Ls0 f6 mainOut f7 tail #connect
Ls0 f7 head f10 mainIn #connect
Ls0 f10 mainOut f8 tail #connect
Ls0 f8 head f12 mainIn #connect
Ls0 f14 mainOut f3 tail #connect
Ls0 f3 head f12 mainIn #connect
