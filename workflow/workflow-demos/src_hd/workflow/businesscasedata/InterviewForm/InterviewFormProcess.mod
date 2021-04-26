[Ivy]
16EF56C29B4905A8 9.3.0 #module
>Proto >Proto Collection #zClass
Is0 InterviewFormProcess Big #zClass
Is0 RD #cInfo
Is0 #process
Is0 @TextInP .type .type #zField
Is0 @TextInP .processKind .processKind #zField
Is0 @TextInP .xml .xml #zField
Is0 @TextInP .responsibility .responsibility #zField
Is0 @UdInit f0 '' #zField
Is0 @UdProcessEnd f1 '' #zField
Is0 @UdEvent f3 '' #zField
Is0 @UdExitEnd f4 '' #zField
Is0 @UdEvent f6 '' #zField
Is0 @UdProcessEnd f7 '' #zField
Is0 @GridStep f9 '' #zField
Is0 @PushWFArc f10 '' #zField
Is0 @PushWFArc f2 '' #zField
Is0 @GridStep f11 '' #zField
Is0 @PushWFArc f12 '' #zField
Is0 @PushWFArc f5 '' #zField
Is0 @GridStep f13 '' #zField
Is0 @PushWFArc f14 '' #zField
Is0 @PushWFArc f8 '' #zField
>Proto Is0 Is0 InterviewFormProcess #zField
Is0 f0 guid 16EF56C29B9C0D29 #txt
Is0 f0 method start() #txt
Is0 f0 inParameterDecl '<> param;' #txt
Is0 f0 outParameterDecl '<workflow.businesscasedata.Interview interview> result;' #txt
Is0 f0 outParameterMapAction 'result.interview=in.interview;
' #txt
Is0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Is0 f0 83 51 26 26 -20 15 #rect
Is0 f1 339 51 26 26 0 12 #rect
Is0 f3 guid 16EF56C29BFE1059 #txt
Is0 f3 actionTable 'out=in;
' #txt
Is0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Is0 f3 83 147 26 26 -16 15 #rect
Is0 f4 339 147 26 26 0 12 #rect
Is0 f6 guid 16EF571B2C7EC641 #txt
Is0 f6 actionTable 'out=in;
' #txt
Is0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveAndPark</name>
    </language>
</elementInfo>
' #txt
Is0 f6 83 243 26 26 -40 15 #rect
Is0 f7 339 243 26 26 0 12 #rect
Is0 f9 actionTable 'out=in;
' #txt
Is0 f9 actionCode 'import workflow.businesscasedata.Interview;
//load businessdata object from ivy.repo
out.interview = ivy.repo.get(Interview.class) as Interview;' #txt
Is0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create / load
business data object</name>
    </language>
</elementInfo>
' #txt
Is0 f9 144 42 160 44 -61 -15 #rect
Is0 f10 109 64 144 64 #arcP
Is0 f2 304 64 339 64 #arcP
Is0 f11 actionTable 'out=in;
' #txt
Is0 f11 actionCode '//save businessdata object to ivy.repo
ivy.repo.save(in.interview);' #txt
Is0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save
business data object</name>
    </language>
</elementInfo>
' #txt
Is0 f11 144 138 160 44 -61 -15 #rect
Is0 f12 109 160 144 160 #arcP
Is0 f5 304 160 339 160 #arcP
Is0 f13 actionTable 'out=in;
' #txt
Is0 f13 actionCode 'import javax.faces.context.FacesContext;
//save businessdata object to ivy.repo
ivy.repo.save(in.interview);
//park task
ivy.session.parkTask(ivy.task);
//redirect to task list
FacesContext.getCurrentInstance().getExternalContext().redirect(ivy.html.taskListRef());' #txt
Is0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>park task and
redirect to task list</name>
    </language>
</elementInfo>
' #txt
Is0 f13 152 234 144 44 -53 -15 #rect
Is0 f14 109 256 152 256 #arcP
Is0 f8 296 256 339 256 #arcP
>Proto Is0 .type workflow.businesscasedata.InterviewForm.InterviewFormData #txt
>Proto Is0 .processKind HTML_DIALOG #txt
>Proto Is0 -8 -8 16 16 16 26 #rect
Is0 f0 mainOut f10 tail #connect
Is0 f10 head f9 mainIn #connect
Is0 f9 mainOut f2 tail #connect
Is0 f2 head f1 mainIn #connect
Is0 f3 mainOut f12 tail #connect
Is0 f12 head f11 mainIn #connect
Is0 f11 mainOut f5 tail #connect
Is0 f5 head f4 mainIn #connect
Is0 f6 mainOut f14 tail #connect
Is0 f14 head f13 mainIn #connect
Is0 f13 mainOut f8 tail #connect
Is0 f8 head f7 mainIn #connect
