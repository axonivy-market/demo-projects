[Ivy]
173B897CD644184D 9.3.1 #module
>Proto >Proto Collection #zClass
Ps0 DepartmentSearchProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @UdInit f0 '' #zField
Ps0 @UdProcessEnd f1 '' #zField
Ps0 @UdEvent f3 '' #zField
Ps0 @UdExitEnd f4 '' #zField
Ps0 @GridStep f6 '' #zField
Ps0 @PushWFArc f7 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @UdMethod f14 '' #zField
Ps0 @UdMethod f17 '' #zField
Ps0 @UdProcessEnd f18 '' #zField
Ps0 @GridStep f8 '' #zField
Ps0 @PushWFArc f9 '' #zField
Ps0 @PushWFArc f10 '' #zField
Ps0 @UdEvent f11 '' #zField
Ps0 @GridStep f15 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @GridStep f28 '' #zField
Ps0 @UdProcessEnd f19 '' #zField
Ps0 @Alternative f36 '' #zField
Ps0 @Alternative f25 '' #zField
Ps0 @GridStep f23 '' #zField
Ps0 @PushWFArc f29 '' #zField
Ps0 @PushWFArc f22 '' #zField
Ps0 @PushWFArc f24 '' #zField
Ps0 @PushWFArc f37 '' #zField
Ps0 @PushWFArc f35 '' #zField
Ps0 @PushWFArc f27 '' #zField
Ps0 @PushWFArc f41 '' #zField
Ps0 @PushWFArc f20 '' #zField
Ps0 @UdEvent f12 '' #zField
Ps0 @UdProcessEnd f13 '' #zField
Ps0 @GridStep f33 '' #zField
Ps0 @PushWFArc f26 '' #zField
Ps0 @PushWFArc f21 '' #zField
Ps0 @GridStep f30 '' #zField
Ps0 @PushWFArc f31 '' #zField
Ps0 @UdProcessEnd f32 '' #zField
Ps0 @PushWFArc f34 '' #zField
Ps0 @ProcessException f38 '' #zField
Ps0 @UdProcessEnd f39 '' #zField
Ps0 @PushWFArc f40 '' #zField
Ps0 @PushWFArc f44 '' #zField
>Proto Ps0 Ps0 DepartmentSearchProcess #zField
Ps0 f0 guid 173A4BB5DFB9831F #txt
Ps0 f0 method start() #txt
Ps0 f0 inParameterDecl '<> param;' #txt
Ps0 f0 outParameterDecl '<> result;' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 83 51 26 26 -16 15 #rect
Ps0 f1 371 51 26 26 0 12 #rect
Ps0 f3 guid 173A4BB5E1762041 #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ps0 f3 83 467 26 26 -15 15 #rect
Ps0 f4 371 467 26 26 0 12 #rect
Ps0 f6 actionTable 'out=in;
' #txt
Ps0 f6 actionCode 'import ch.ivyteam.demo.jpa.demos.ui.DepartmentSearchBean;


in.departmentSearchBean = new DepartmentSearchBean();
' #txt
Ps0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Initialize</name>
    </language>
</elementInfo>
' #txt
Ps0 f6 200 42 112 44 -22 -8 #rect
Ps0 f7 109 64 200 64 #arcP
Ps0 f2 312 64 371 64 #arcP
Ps0 f14 guid 173B8B0E918C6624 #txt
Ps0 f14 method deleteDepartment(String) #txt
Ps0 f14 inParameterDecl '<String departmentId> param;' #txt
Ps0 f14 inParameterMapAction 'out.departmentId=param.departmentId;
' #txt
Ps0 f14 outParameterDecl '<> result;' #txt
Ps0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteDepartment(String)</name>
    </language>
</elementInfo>
' #txt
Ps0 f14 83 403 26 26 -86 15 #rect
Ps0 f17 guid 173B8B151B0FE623 #txt
Ps0 f17 method editDepartment(String) #txt
Ps0 f17 inParameterDecl '<String departmentId> param;' #txt
Ps0 f17 inParameterMapAction 'out.departmentId=param.departmentId;
' #txt
Ps0 f17 outParameterDecl '<> result;' #txt
Ps0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>editDepartment(String)</name>
    </language>
</elementInfo>
' #txt
Ps0 f17 83 115 26 26 -79 15 #rect
Ps0 f18 371 115 26 26 0 12 #rect
Ps0 f8 actionTable 'out=in;
' #txt
Ps0 f8 actionCode in.departmentSearchBean.setActiveDepartment(in.departmentId); #txt
Ps0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Prepare department</name>
    </language>
</elementInfo>
' #txt
Ps0 f8 192 106 128 44 -55 -8 #rect
Ps0 f9 109 128 192 128 #arcP
Ps0 f10 320 128 371 128 #arcP
Ps0 f11 guid 173C999E308C958C #txt
Ps0 f11 actionTable 'out=in;
' #txt
Ps0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveDepartment</name>
    </language>
</elementInfo>
' #txt
Ps0 f11 83 179 26 26 -45 15 #rect
Ps0 f15 actionTable 'out=in;
' #txt
Ps0 f15 actionCode 'in.secondSave = in.departmentSearchBean.isSaveViolationMaxWarning();
in.departmentSearchBean.validateDepartmentForSave(in.secondSave);' #txt
Ps0 f15 security system #txt
Ps0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Validate</name>
    </language>
</elementInfo>
' #txt
Ps0 f15 200 170 112 44 -22 -8 #rect
Ps0 f16 109 192 200 192 #arcP
Ps0 f28 actionTable 'out=in;
' #txt
Ps0 f28 actionCode 'in.departmentSearchBean.resetSaveViolation();
in.departmentSearchBean.hideDepartmentDialog();' #txt
Ps0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Hide dialog</name>
    </language>
</elementInfo>
' #txt
Ps0 f28 712 170 112 44 -31 -8 #rect
Ps0 f19 915 179 26 26 0 12 #rect
Ps0 f36 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>second save?</name>
        <desc>Second save will only be set, if the user presses save after showing warnings.</desc>
    </language>
</elementInfo>
' #txt
Ps0 f36 464 240 32 32 -30 19 #rect
Ps0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>valid?</name>
    </language>
</elementInfo>
' #txt
Ps0 f25 336 176 32 32 -15 -36 #rect
Ps0 f23 actionTable 'out=in;
' #txt
Ps0 f23 actionCode 'in.departmentSearchBean.saveDepartment();
' #txt
Ps0 f23 security system #txt
Ps0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save department</name>
    </language>
</elementInfo>
' #txt
Ps0 f23 552 170 112 44 -46 -8 #rect
Ps0 f29 664 192 712 192 #arcP
Ps0 f22 expr in #txt
Ps0 f22 outCond in.departmentSearchBean.isNoSaveViolation() #txt
Ps0 f22 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
    </language>
</elementInfo>
' #txt
Ps0 f22 368 192 552 192 #arcP
Ps0 f22 0 0.07839059791743687 -2 -11 #arcLabel
Ps0 f24 expr in #txt
Ps0 f24 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
    </language>
</elementInfo>
' #txt
Ps0 f24 496 256 915 192 #arcP
Ps0 f24 1 864 256 #addKink
Ps0 f24 2 864 192 #addKink
Ps0 f24 0 0.05147304575321135 1 -8 #arcLabel
Ps0 f37 expr in #txt
Ps0 f37 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>error or higher</name>
    </language>
</elementInfo>
' #txt
Ps0 f37 352 208 915 192 #arcP
Ps0 f37 1 352 306 #addKink
Ps0 f37 2 864 306 #addKink
Ps0 f37 3 864 192 #addKink
Ps0 f37 1 0.0859375 0 -10 #arcLabel
Ps0 f35 expr in #txt
Ps0 f35 outCond in.departmentSearchBean.isSaveViolationMaxWarning() #txt
Ps0 f35 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>max warning</name>
    </language>
</elementInfo>
' #txt
Ps0 f35 352 208 464 256 #arcP
Ps0 f35 1 352 256 #addKink
Ps0 f35 1 0.35714285714285715 0 -11 #arcLabel
Ps0 f27 expr in #txt
Ps0 f27 outCond in.secondSave #txt
Ps0 f27 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
    </language>
</elementInfo>
' #txt
Ps0 f27 480 240 552 192 #arcP
Ps0 f27 1 480 192 #addKink
Ps0 f27 0 0.5454248343739747 17 -6 #arcLabel
Ps0 f41 824 192 915 192 #arcP
Ps0 f20 312 192 336 192 #arcP
Ps0 f12 guid 173C99D681A4C599 #txt
Ps0 f12 actionTable 'out=in;
' #txt
Ps0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancelDepartment</name>
    </language>
</elementInfo>
' #txt
Ps0 f12 83 339 26 26 -50 15 #rect
Ps0 f13 371 339 26 26 0 12 #rect
Ps0 f33 actionTable 'out=in;
' #txt
Ps0 f33 actionCode 'import ch.ivyteam.demo.jpa.demos.service.ValidationService;


ValidationService.resetValidation();
' #txt
Ps0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Reset&#13;
Validation</name>
    </language>
</elementInfo>
' #txt
Ps0 f33 200 330 112 44 -27 -16 #rect
Ps0 f26 109 352 200 352 #arcP
Ps0 f21 312 352 371 352 #arcP
Ps0 f30 actionTable 'out=in;
' #txt
Ps0 f30 actionCode 'in.departmentSearchBean.deleteDepartment(in.departmentId);
' #txt
Ps0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Delete department&#13;
(logically)</name>
    </language>
</elementInfo>
' #txt
Ps0 f30 192 394 128 44 -45 -16 #rect
Ps0 f31 109 416 192 416 #arcP
Ps0 f32 371 403 26 26 0 12 #rect
Ps0 f34 320 416 371 416 #arcP
Ps0 f38 actionTable 'out=in;
' #txt
Ps0 f38 actionCode 'import ch.ivyteam.demo.jpa.demos.service.UiService;


UiService.addExceptionFacesMessage(error);
' #txt
Ps0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show error</name>
    </language>
</elementInfo>
' #txt
Ps0 f38 81 593 30 30 -26 15 #rect
Ps0 f39 371 595 26 26 0 12 #rect
Ps0 f40 111 608 371 608 #arcP
Ps0 f44 109 480 371 480 #arcP
>Proto Ps0 .type ch.ivyteam.demo.jpa.demos.DepartmentSearch.DepartmentSearchData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel>Error</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>552</swimlaneSize>
    <swimlaneSize>120</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-13108</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
Ps0 f0 mainOut f7 tail #connect
Ps0 f7 head f6 mainIn #connect
Ps0 f6 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f17 mainOut f9 tail #connect
Ps0 f9 head f8 mainIn #connect
Ps0 f8 mainOut f10 tail #connect
Ps0 f10 head f18 mainIn #connect
Ps0 f11 mainOut f16 tail #connect
Ps0 f16 head f15 mainIn #connect
Ps0 f23 mainOut f29 tail #connect
Ps0 f29 head f28 mainIn #connect
Ps0 f27 head f23 mainIn #connect
Ps0 f36 out f27 tail #connect
Ps0 f28 mainOut f41 tail #connect
Ps0 f41 head f19 mainIn #connect
Ps0 f36 out f24 tail #connect
Ps0 f24 head f19 mainIn #connect
Ps0 f25 out f22 tail #connect
Ps0 f22 head f23 mainIn #connect
Ps0 f25 out f35 tail #connect
Ps0 f35 head f36 in #connect
Ps0 f25 out f37 tail #connect
Ps0 f37 head f19 mainIn #connect
Ps0 f15 mainOut f20 tail #connect
Ps0 f20 head f25 in #connect
Ps0 f12 mainOut f26 tail #connect
Ps0 f26 head f33 mainIn #connect
Ps0 f33 mainOut f21 tail #connect
Ps0 f21 head f13 mainIn #connect
Ps0 f14 mainOut f31 tail #connect
Ps0 f31 head f30 mainIn #connect
Ps0 f30 mainOut f34 tail #connect
Ps0 f34 head f32 mainIn #connect
Ps0 f38 mainOut f40 tail #connect
Ps0 f40 head f39 mainIn #connect
Ps0 f3 mainOut f44 tail #connect
Ps0 f44 head f4 mainIn #connect
