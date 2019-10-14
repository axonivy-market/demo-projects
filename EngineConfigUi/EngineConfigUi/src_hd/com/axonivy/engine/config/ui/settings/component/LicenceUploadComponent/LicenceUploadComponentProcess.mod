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
Ls0 @GridStep f9 '' #zField
Ls0 @PushWFArc f16 '' #zField
Ls0 @PushWFArc f13 '' #zField
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
Ls0 f14 actionCode 'out.licenceFile = com.axon.ivy.engine.config.LicenceUtil.verifyAndInstall(in.newLicence);' #txt
Ls0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verify new licence</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f14 168 106 112 44 -48 -8 #rect
Ls0 f14 @|StepIcon #fIcon
Ls0 f15 expr out #txt
Ls0 f15 109 128 168 128 #arcP
Ls0 f6 actionTable 'out=in;
out.error=error;
' #txt
Ls0 f6 attachedToRef 015B14256823DE3D-f14 #txt
Ls0 f6 241 145 30 30 0 15 #rect
Ls0 f6 @|ErrorBoundaryEventIcon #fIcon
Ls0 f10 actionTable 'out=in;
' #txt
Ls0 f10 actionCode 'import org.apache.commons.lang3.exception.ExceptionUtils;
import ch.ivyteam.licence.InvalidLicenceException;
import com.axon.ivy.engine.config.LicenceUtil;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContextFactory;
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
Ls0 f10 295 199 112 44 -35 -8 #rect
Ls0 f10 @|StepIcon #fIcon
Ls0 f7 256 175 295 221 #arcP
Ls0 f7 1 256 221 #addKink
Ls0 f7 1 0.03286038850212296 0 0 #arcLabel
Ls0 f8 expr out #txt
Ls0 f8 407 221 512 141 #arcP
Ls0 f8 1 512 221 #addKink
Ls0 f8 0 0.7804177403779172 0 0 #arcLabel
Ls0 f9 actionTable 'out=in;
' #txt
Ls0 f9 actionCode com.axon.ivy.engine.config.LicenceUtil.backupAllOlds(in.licenceFile); #txt
Ls0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Backup old licences</name>
        <nameStyle>19,5
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f9 320 106 128 44 -61 -7 #rect
Ls0 f9 @|StepIcon #fIcon
Ls0 f16 expr out #txt
Ls0 f16 280 128 320 128 #arcP
Ls0 f13 expr out #txt
Ls0 f13 448 128 499 128 #arcP
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
Ls0 f14 mainOut f16 tail #connect
Ls0 f16 head f9 mainIn #connect
Ls0 f9 mainOut f13 tail #connect
Ls0 f13 head f12 mainIn #connect
