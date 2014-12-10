[Ivy]
[>Created: Tue Jul 02 16:38:40 CEST 2013]
12159193B3CDF810 3.17 #module
>Proto >Proto Collection #zClass
Ds0 DemoStarterProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessStep f3 '' #zField
Ds0 @PushWFArc f4 '' #zField
Ds0 @RichDialogProcessStart f5 '' #zField
Ds0 @RichDialogProcessStart f6 '' #zField
Ds0 @RichDialogProcessEnd f7 '' #zField
Ds0 @RichDialogProcessEnd f9 '' #zField
Ds0 @Alternative f11 '' #zField
Ds0 @RichDialogProcessStep f13 '' #zField
Ds0 @PushWFArc f10 '' #zField
Ds0 @RichDialogProcessStep f16 '' #zField
Ds0 @PushWFArc f17 '' #zField
Ds0 @PushWFArc f15 '' #zField
Ds0 @PushWFArc f12 '' #zField
Ds0 @Alternative f18 '' #zField
Ds0 @PushWFArc f19 '' #zField
Ds0 @PushWFArc f20 '' #zField
Ds0 @PushWFArc f14 '' #zField
Ds0 @RichDialog f2 '' #zField
Ds0 @Alternative f21 '' #zField
Ds0 @Alternative f22 '' #zField
Ds0 @PushWFArc f24 '' #zField
Ds0 @PushWFArc f25 '' #zField
Ds0 @Alternative f26 '' #zField
Ds0 @PushWFArc f27 '' #zField
Ds0 @PushWFArc f28 '' #zField
Ds0 @RichDialog f29 '' #zField
Ds0 @PushWFArc f30 '' #zField
Ds0 @RichDialog f32 '' #zField
Ds0 @PushWFArc f33 '' #zField
Ds0 @RichDialogProcessStart f35 '' #zField
Ds0 @RichDialogProcessEnd f36 '' #zField
Ds0 @RichDialogProcessStart f38 '' #zField
Ds0 @RichDialogEnd f39 '' #zField
Ds0 @PushWFArc f40 '' #zField
Ds0 @Alternative f41 '' #zField
Ds0 @PushWFArc f42 '' #zField
Ds0 @RichDialogProcessStep f44 '' #zField
Ds0 @PushWFArc f43 '' #zField
Ds0 @RichDialogProcessStep f46 '' #zField
Ds0 @PushWFArc f47 '' #zField
Ds0 @RichDialogProcessStep f34 '' #zField
Ds0 @PushWFArc f48 '' #zField
Ds0 @PushWFArc f37 '' #zField
Ds0 @PushWFArc f45 '' #zField
Ds0 @PushWFArc f23 '' #zField
Ds0 @PushWFArc f49 '' #zField
Ds0 @PushWFArc f31 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @PushWFArc f50 '' #zField
>Proto Ds0 Ds0 DemoStarterProcess #zField
Ds0 f0 guid 12159193B6A4A0AD #txt
Ds0 f0 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f0 method start(List<String>) #txt
Ds0 f0 disableUIEvents false #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<List<java.lang.String> demoRichDialogIds> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 inParameterMapAction 'out.demoRichDialogs=param.demoRichDialogIds;
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/gear_run\";\nparam.title=\"Demo Runner\";\nparam.subtitle=\"Shows and runs ivy Demos\";\n"/initScript ""}}' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(List&lt;String&gt;)</name>
        <nameStyle>19,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 38 30 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f3 actionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 actionCode 'import ch.ivyteam.ivy.demo.runner.Demo;

Demo demo;
for (String rd : in.demoRichDialogs)
{
	demo = new Demo();
	if (rd.endsWith("/special"))
	{
		rd = rd.substring(0,rd.length()-8); // cut off "/special"
		demo.isSpecial = true;
	}
	demo.richDialogId = rd;
	demo.cmsUri = "/descriptions/" + rd.replaceAll("\\.","/");
	demo.simpleName = ivy.cms.co(demo.cmsUri + "/name" ).trim();
	rd.substring(rd.lastIndexOf(".")+1);
	out.demos.add(demo);
}' #txt
Ds0 f3 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>calculate demos</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f3 30 76 36 24 20 -2 #rect
Ds0 f3 @|RichDialogProcessStepIcon #fIcon
Ds0 f4 expr out #txt
Ds0 f4 48 50 48 76 #arcP
Ds0 f5 guid 1215EB6F653464BF #txt
Ds0 f5 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f5 actionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f5 actionTable 'out=in;
' #txt
Ds0 f5 actionCode 'panel.tabbedPane.selectedComponent = panel.runnerPane;' #txt
Ds0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>runDemo</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f5 422 30 20 20 13 0 #rect
Ds0 f5 @|RichDialogProcessStartIcon #fIcon
Ds0 f6 guid 1215EB715A2B02DF #txt
Ds0 f6 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f6 actionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode 'panel.tabbedPane.selectedComponent = panel.detailsPane;' #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showDetails</name>
        <nameStyle>11,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 246 30 20 20 13 0 #rect
Ds0 f6 @|RichDialogProcessStartIcon #fIcon
Ds0 f7 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f7 419 355 26 26 14 0 #rect
Ds0 f7 @|RichDialogProcessEndIcon #fIcon
Ds0 f9 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f9 243 355 26 26 14 0 #rect
Ds0 f9 @|RichDialogProcessEndIcon #fIcon
Ds0 f11 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>demo selected?</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f11 242 162 28 28 13 -24 #rect
Ds0 f11 @|AlternativeIcon #fIcon
Ds0 f13 actionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f13 actionTable 'out=in;
' #txt
Ds0 f13 actionCode 'import org.apache.commons.lang.StringUtils;
panel.idTextField.text = in.selectedDemo.richDialogId;
panel.nameTextField.text = ivy.cms.co(in.selectedDemo.cmsUri+"/name");
String description = ivy.cms.co(in.selectedDemo.cmsUri+"/desc");
// Text Area cannot render html tags. Remove leading and ending html tags
// that are added by the co renderer.
description = StringUtils.removeStart(description,"<html>");
description = StringUtils.removeEnd(description,"</html>");
panel.descriptionTextArea.setText(description);' #txt
Ds0 f13 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set data</name>
        <nameStyle>8,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f13 190 268 36 24 20 -2 #rect
Ds0 f13 @|RichDialogProcessStepIcon #fIcon
Ds0 f10 expr out #txt
Ds0 f10 208 292 243 363 #arcP
Ds0 f10 1 208 352 #addKink
Ds0 f10 0 0.6934503549591993 0 0 #arcLabel
Ds0 f16 actionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f16 actionTable 'out=in;
' #txt
Ds0 f16 actionCode 'panel.idTextField.text = "";
panel.nameTextField.text = "";
panel.descriptionTextArea.setText("");' #txt
Ds0 f16 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>clear</name>
        <nameStyle>5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f16 278 308 36 24 20 -2 #rect
Ds0 f16 @|RichDialogProcessStepIcon #fIcon
Ds0 f17 expr in #txt
Ds0 f17 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f17 270 176 296 308 #arcP
Ds0 f17 1 296 176 #addKink
Ds0 f17 1 0.20798071867252352 13 1 #arcLabel
Ds0 f15 expr out #txt
Ds0 f15 296 332 269 368 #arcP
Ds0 f15 1 296 368 #addKink
Ds0 f15 0 0.6689398619616459 0 0 #arcLabel
Ds0 f12 expr out #txt
Ds0 f12 256 50 256 162 #arcP
Ds0 f18 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>same?</name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f18 194 210 28 28 14 0 #rect
Ds0 f18 @|AlternativeIcon #fIcon
Ds0 f19 expr in #txt
Ds0 f19 outCond 'in.#selectedDemo is initialized' #txt
Ds0 f19 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f19 242 176 208 210 #arcP
Ds0 f19 1 208 176 #addKink
Ds0 f19 0 0.5294117647058824 0 14 #arcLabel
Ds0 f20 expr in #txt
Ds0 f20 outCond 'in.selectedDemo.richDialogId == panel.idTextField.text' #txt
Ds0 f20 194 224 243 372 #arcP
Ds0 f20 1 160 224 #addKink
Ds0 f20 2 160 384 #addKink
Ds0 f20 3 216 384 #addKink
Ds0 f20 1 0.545782582006836 0 0 #arcLabel
Ds0 f14 expr in #txt
Ds0 f14 208 238 208 268 #arcP
Ds0 f2 targetWindow THIS #txt
Ds0 f2 targetDisplay demoRunnerDisplay #txt
Ds0 f2 richDialogId IvyScript://in.selectedDemo.richDialogId #txt
Ds0 f2 startMethod start() #txt
Ds0 f2 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f2 panelName <%=in.selectedDemo.simpleName%> #txt
Ds0 f2 requestActionDecl '<> param;' #txt
Ds0 f2 responseActionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f2 responseMappingAction 'out=in;
' #txt
Ds0 f2 windowConfiguration '#Thu May 21 09:26:35 CEST 2009
use_default=true
' #txt
Ds0 f2 isAsynch true #txt
Ds0 f2 isInnerRd true #txt
Ds0 f2 isDialog false #txt
Ds0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start generic</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f2 526 300 36 24 10 17 #rect
Ds0 f2 @|RichDialogIcon #fIcon
Ds0 f21 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>demo selected?</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f21 418 82 28 28 13 -24 #rect
Ds0 f21 @|AlternativeIcon #fIcon
Ds0 f22 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is special?</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f22 530 210 28 28 13 -23 #rect
Ds0 f22 @|AlternativeIcon #fIcon
Ds0 f24 expr out #txt
Ds0 f24 432 50 432 82 #arcP
Ds0 f25 expr in #txt
Ds0 f25 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f25 418 96 419 368 #arcP
Ds0 f25 1 376 96 #addKink
Ds0 f25 2 376 368 #addKink
Ds0 f25 1 0.03676470588235294 -11 0 #arcLabel
Ds0 f26 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>switch(id)</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f26 762 210 28 28 -26 -39 #rect
Ds0 f26 @|AlternativeIcon #fIcon
Ds0 f27 expr in #txt
Ds0 f27 outCond in.selectedDemo.isSpecial #txt
Ds0 f27 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f27 558 224 762 224 #arcP
Ds0 f27 0 0.16891891891891891 0 10 #arcLabel
Ds0 f28 expr in #txt
Ds0 f28 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f28 544 238 544 300 #arcP
Ds0 f28 0 0.5 12 0 #arcLabel
Ds0 f29 targetWindow THIS #txt
Ds0 f29 targetDisplay demoRunnerDisplay #txt
Ds0 f29 richDialogId ch.ivyteam.ivy.demo.lookuptextfield.FileSearch #txt
Ds0 f29 startMethod startWithFileList(List<java.io.File>) #txt
Ds0 f29 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f29 panelName <%=in.selectedDemo.simpleName%> #txt
Ds0 f29 requestActionDecl '<List<java.io.File> fileList> param;' #txt
Ds0 f29 requestActionCode 'import ch.ivyteam.ivy.utils.FileListGenerator;
param.fileList = FileListGenerator.getJavaFileList("C:/",8000);' #txt
Ds0 f29 responseActionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f29 responseMappingAction 'out=in;
' #txt
Ds0 f29 windowConfiguration '#Thu May 21 09:36:30 CEST 2009
use_default=true
' #txt
Ds0 f29 isAsynch true #txt
Ds0 f29 isInnerRd true #txt
Ds0 f29 isDialog false #txt
Ds0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>FileSearch</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f29 662 300 36 24 3 18 #rect
Ds0 f29 @|RichDialogIcon #fIcon
Ds0 f30 expr in #txt
Ds0 f30 outCond 'in.selectedDemo.richDialogId == "ch.ivyteam.ivy.demo.lookuptextfield.FileSearch"' #txt
Ds0 f30 766 228 680 300 #arcP
Ds0 f30 1 680 264 #addKink
Ds0 f30 0 0.8038186259118668 0 0 #arcLabel
Ds0 f32 targetWindow THIS #txt
Ds0 f32 targetDisplay demoRunnerDisplay #txt
Ds0 f32 richDialogId ch.ivyteam.ivy.demo.search.ListSearch #txt
Ds0 f32 startMethod start(List<String>,String) #txt
Ds0 f32 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f32 panelName <%=in.selectedDemo.simpleName%> #txt
Ds0 f32 requestActionDecl '<List<String> list, String info> param;' #txt
Ds0 f32 requestActionCode '// initialize info text
param.info = "Search a list of Swiss places.";

// initialize list
param.list = [];
String all = "Aa, Aabach, Aach, Aadorf, Aar, Aarau, Aaray, Aarberg, Aarburg, Aare, Aare Fluss, Aare Kanal, Aarekanal, Aarelamm, Aareschlucht, Aarwangen, Aathal, Abländschen, Abtwil, Abtwyl, Acheberg, Ackersand, Acla, Aclas Dafora, Acquacalda, Acquarossa, Adannes, Adelboden, Adligenswil, Adliswil, Aecherli, Aeckenmatt, Aedermannsdorf, Aegerisee, Aegina, Aelggi Alm, Aelggi Alp, Aelgäu, Aelgäuli, Aernen, Aesch, Aeschau, Aescher, Aeschi, Aeschlen, Aeschlenberg, Aettenschwil, Aeugst, Affeltrangen, Affoltern, Affoltern am Albis, Agarn, Agettes, Agiez, Agno, Agra, Aigle, Aiguille d'' Argentière, Aiguille d'' Argentières, Aiguille du Chardonnet, Aiguille du Tour, Aiguilles Rouges, Aino, Aion, Aire, Airlonia, Airola, Airolo, Al Piano, Al Sasso, Alberswil, Albeuve, Albinen, Albis, Albligen, Albristhorn, Albula, Albula-Alpen, Albulapass, Alchenstorf, Aletchschwald, Aletsch Glacier, Aletschhorn, Aletschwald, All''Acqua, All''Acqua Ospizio, Allaine, Allaman, Alle, Allmendingen, Allondon, Allschwil, Almagell, Alp, Alp Grüm, Alp Laret-Dadaint, Alp Schmorras, Alp Spinas, Alp Vallatsch, Alp Valtnov, Alpe, Alpe Braita, Alpe Cava, Alpe Hannig, Alpe Porcarescio, Alpe Pulgabio, Alpe Quarnaro, Alpe Ritóm, Alpe Schmorras, Alpe Sfille, Alpe Silvretta, Alpe Trescolmine, Alpe de Noveli, Alpe de Peryeire, Alpe de Tortin, Alpe de la Barma, Alpe della Costa, Alpe di Boggio, Alpe di Cava, Alpe di Cortas, Alpe di Crastera, Alpe di Naccio, Alpe di Quarnajo, Alpe di Scieru, Alpe di Trescolmen, Alpe dil Chant, Alpen, Alpes, Alpes Lépontiennes, Alpes Pennines, Alpes Rhetiques, Alpes Valaisannes, Alpi, Alpi Bernesi, Alpi Lepontine, Alpi Pennine, Alpi Reti, Alpi Retiche, Alpi di Trescolmine, Alpiglen, Alpnach, Alpnachersee, Alpnachstad, Alps, Alpstein, Alptal, Alpthal, Alt Guraletsch, Alt Sankt Johann, Alt Toggenburg, Alt-Felsberg, Alt-Wiedikon, Altanca, Altdorf, Alte Aare, Altels, Alten, Altendorf, Altenrhein, Alter Rhein, Alter Rhein River, Alter Rheinlauf, Alterswil, Alterswilen, Altishofen, Altmann, Altmatt, Altnau, Alton, Altstätten, Alvaneu, Alvaneu Dorf, Alvaneubad, Alvaschein, Alvier, Am Bach, Ambri, Ambri-Piotta, Amden, Amriswil, Amsoldingen, Amsoldingersee, Amsteg, Andeer, Andelfingen, Andermatt, Andest, Andwil, Angeli Custodi, Angone, Anières, Anvéuda, Anzonico, Appenzell, Appenzell Ausser-Rhoden, Appenzell Inner-Rhoden, Appenzell Inner-Rhodes, Appenzell Outer-Rhodes, Apples, Apro, Aproz, Aquila, Aquino, Arbas, Arbaz, Arbedo, Arbedo-Castione, Arbon, Arcegno, Arch, Arconciel, Ardet, Ardez, Ardon, Areuse, Argovia, Argovie, Argseeli, Arisdorf, Aristau, Arlesheim, Arnensee, Arnex, Arni, Arni Alm, Arni Alp, Arogno, Arolla, Arosa, Arosa Bahnhof, Aroserrothorn, Arosio, Artaschiew, Arth, Arth-Goldau, Arve, Arve Rivière, Arveyes, Arvigo, Arzier, Arzo, Ascharina, Ascona, Assens, Astano, Asuel, Attalens, Attinghausen, Attiswil, Au, Auada Fenga, Aubonne, Aubrig Grosser, Auenstein, Auf dem Stock, Auf der Hohe, Augio, Augst, Augstbordpass, Augstenberg, Auhafen, Aumont, Auressio, Aurigeno, Ausser Latterbach, Ausser Rhoden, Ausserbinn, Ausserdinhard, Ausserferrera, Ausserglas, Ausserholligen, Aussersihl, Autigny, Auvernier, Auw, Aux Acacias, Ava da Tisch, Avegno, Avenches, Avers, Averser Tal, Averserrhein, Avry, Avry-sur- Matran, Axalp, Axenstein, Ayent, Ayer, Aéroport Genève-Cointrin, Baar, Bachenbülach, Bachs, Bachtel, Bachtolen, Bad Ragaz, Bad Schinznach, Bad-Schwarzsee, Baden, Baden Station, Badischer Bahnhof, Badus, Bagnes, Baillaigues, Bains de Lavey, Baldeggersee, Balen, Balerna, Balfrin, Balgach, Ballaigues, Ballalüna, Ballens, Ballwil, Balm, Balm bei Messen, Balmenegg, Balmhorn, Balstal, Balsthal, Baltenswil, Baltschieder, Baltschiederbach, Banco, Bangerten, Bannwil, Bantiger, Barberine, Barberêche, Barma, Barmaz, Barme, Barrage de Mauvoisin, Barrhorn, Barthümel Joch, Bartümel Joch, Bas-Vully, Basadingen, Basel, Basel-Dreispitz, Baselaugst, Baselland, Baselstadt, Basenheid, Basilea, Basle, Basle-Country, Basle-Town, Basse- Nendaz, Bassecourt, Bassersdorf, Bassin de Barberine, Batänja, Bauen, Baulmes, Bauma, Bauried, Bauriet, Bavois, Bavugls, Baye de Montreux, Bazenheid, Beatenbeig, Beatenberg, Bec de Bosson, Beckenried, Becs de Bosson, Bedra, Bedretto, Beggingen, Begnins, Bei der Säge, Beim Hohenhaus, Beim Thurm, Beinwil, Belalp, Belfaux, Bella Tola, Bellaluna, Bellechasse, Bellelay, Bellerive, Bellevue, Bellinzona, Bellmund, Bellwald, Belmont-sur-Lausanne, Belp, Belpberg, Belvédère, Benken, Bercher, Berg, Bergell, Bergün, Berikon, Beringen, Berisal, Bern, Berna, Berne, Berneck, Berner Alpen, Berner Oberland, Bernese Alps, Bernese Jura, Bernex, Bernhardinpass, Bernina, Bernina Alps, Bernina Gruppe, Bernina Suot, Berninahäuser, Berninapass, Beromünster, Berretgraben, Berschis, Berzona, Betelried, Betelried Blankenburg, Betschwanden, Bettelried, Betten, Bettingen, Bettlach, Beuson, Bevaix, Bevers, Bex, Bezirk Andelfingen, Bezirk Meilen, Bezirk Münsterthal, Bezirk Raron, Bezirk Sargans, Bezirk Thierstein, Beznau, Biasca, Biaschina, Biasco, Biber, Biberbrücke, Biberen, Biberist, Bibern, Biborgo, Bichelsee, Bidogno, Biel, Bielersee, Bienne, Bietschbach, Bietschhorn, Bifertenstock, Bigenthal, Biglen, Bignasco, Bigorio, Bilten, Binn, Binn valley, Binna, Binna Binn, Binnatal, Binnen, Binnen Kanal, Binnental, Binningen, Binntal, Bioggio, Bioley-Orjulaz, Birmensdorf, Birmenstorf, Bironico, Birr, Birr-Lufig, Birrwil, Birs, Birsfelden, Birsig, Birtschen, Bissegg, Bissone, Bitsch, Bivio, Bivio Stalla, Bière, Blankenburg, Blatten, Blauen, Blauen Berg, Blausee, Blausee Mittholz, Blauseeli, Blindenhorn, Blinnenhorn, Blitzingen, Blonay, Blumenstein, Bläs, Blümlisalphorn, Boden, Boden Zee, Bodensee, Bodio, Boegia, Bogis-Bossey, Bogno, Bolastro, Bolgen, Boll, Bollaigues, Bolligen, Bolligen-Dorf, Boltigen, Bolzbach, Bon Port, Bonaduz, Boncourt, Bonfol, Boniswil, Bonmont, Bonnefontaine, Bonstetten, Bonvillars, Borex, Borgne, Borgnone, Borgonovo, Bort, Bosco Gurin, Bossey, Bottens, Bottenwil, Bottighofen, Bottmingen, Boudevilliers, Boudry, Bourg San Pierre, Bourg-Saint-Pierre, Bouveret, Bovernier, Bowil, Brail, Bramois, Brand, Bratsch, Braunwald, Brecholey, Breibe, Breite, Breitenbach, Breitenfeld, Breithorn, Bremgarten, Bremis, Brenles, Brenno, Breno, Brenzikofen, Bretzwil, BreÃ­l, Brienz, Brienzer Rothorn, Brienzersee, Brienzwiler, Brienzwiler-Dorf, Brig, Brigantinus Lacus, Brigels, Brigerbad, Brignon, Brigue, Brione, Brisen, Brislach, Brissago, Bristen, Bristenstock, Brittnau, Broc, Broch, Broglio, Bronschhofen, Brontallo, Brot-Dessous, Brot-Plamboz, Broye, Brugg, Bruggen, Brunnadern, Brunnen, Brunnenthal, Brusino Arsizio, Brusio, Bruson, Brämis, Brè, Brè sopra Lugano, Brücke, Brügg, Brünig, Brünig Pass, Brünigen, Brünnelistock, Brüttelen, Brütten, Brüttisellen, Bubendorf, Bubikon, Buch, Buchberg, Bucheggberg, Buchen, Buchholterberg, Buchrain, Buchs, Buchthalen, Buholz, Buix, Bulle, Bullet, Bumbach, Bundesbahnhof, Bundtels, Bunschenbach, Buochs, Buonas, Bure, Burg, Burgdorf, Burghölzli, Burgias, Burgistein, Bursinel, Bursins, Burstera, Burtgas, Burtigny, Busen, Buseno, Busserein, Bussigny, Busskirch, Busswil, Busswil bei Büren an der Aare, Buttes, Buttisholz, Buttwil, Buus, Bâle, Bâle Campagne, Bâle-Ville, Bäch, Bächlen, Bärau, Bärenhorn, Bäretswil, Bäriswil, Bärschwil, Bärschwil-Dorf, Bätterkinden, Bètemps, Bétempshütte, Bévilard, Böggia, Bögia, Bönigen, Böser Faulen, Bösingen, Böttstein, Bözen, Büchler, Bühlen, Bühler, Bühlrüti, Bülach, Bümpliz, Bündner Oberland, Bünz, Bürchen, Büren, Büren an der Aare, Büren nid dem Bach, Bürgenstock, Bürglen, Bürkelkopf, Büron, Büsserach, Bütschwil, Bützberg, Büzberg, Cabbiola, Cabbiolo, Cadempino, Cadenazzo, Cadro, Cagiallo, Cagnago, Cala, Calancasca, Calanda, Calpiogna, Calvagione, Calörtsch, Cama, Camana, Camoghè, Camorino, Campascio, Campfer, Campliun, Campo, Campo Blenio, Campo Tencia, Campo Valmaggia, Campocologno, Campovasto, Campsut, Canobbio, Cantine-de-Proz, Canton Valais, Canton d'' Appenzell Rhoden-Extérieur, Canton d'' Appenzell Rhoden-Intérieur, Canton d'' Argovie, Canton d'' Obwald, Canton d'' Uri, Canton de Berne, Canton de Bâle-Campgne, Canton de Bâle-Ville, Canton de Fribourg, Canton de Genève, Canton de Glaris, Canton de Lucerne, Canton de Neuchâtel, Canton de Nidwald, Canton de Saint-Gall, Canton de Schaffhouse, Canton de Schwyz, Canton de Soleure, Canton de Thurgovie, Canton de Vaud, Canton de Zoug, Canton de Zurich, Canton des Grisons, Canton du Jura, Canton du Valais, Cantone Ticino, Cantone dei Grigioni, Capolago, Carena, Carouge, Carrera, Cartigny, Cartygny, Casaccia, Casima, Caslano, Cassarate, Cassina, Cassino, Castagnola, Castasegna, Castel San Pietro, Castello San Pietro, Castels, Castiel, Castione, Castro, Catogne, Cauco, Caux, Caux sur Montreux, Cavagliasco, Cavell Joch, Cavergno, Caviano, Cazis, Celerina, Centovalli, Central Station, Cerentino, Ceresio, Cern, Cerniat, Cernier, Certara, Cervino, Cevio, Chabrey, Chalais, Chalet à Gobet, Cham, Chambésy, Chamoson, Chamossaire, Champagne, Champex, Champfer, Champsec, Champvent, Champéry, Chancy, Chandolin, Changins, Chants, Chantun Grischun, Chapelle, Chardonne, Charmey, Charmilles, Charmoille, Charrat, Charrat-les-Chênes, Chasseral, Chaumont, Chaumont-de-Pury, Chavannes, Chavannes-le-Chêne, Chavannes-sous- Orsonnens, Chavornay, Cheiry, Chemin, Chermignon, Chermignon-d''en Bas, Chermignon-d''en Haut, Cheseaux, Chesières, Chevenez, Chevroux, Chex le Bart, Chexbres, Cheyres, Chez-le-Bart, Chiasso, Chiavasco, Chiggiogna, Chillon, Chippis, Chironico, Chièsaz, Chli Schliere, Choindez, Chur, Churfirsten, Churwalden, Château de Bonmont, Château de Bossey, Château de Chillon, Château-d''Oex, Châteauneuf, Châtel-Saint-Denis, Châtelaine, Châtelaine-Genève, Châtelard, Châtonnaye, Chärstelen Bach, Chézard-Saint-Martin, Chêne-Bougeries, Chêne-Bourg, Chêne-Pâquier, Ciavasco, Cierfs, Cierfs-Orasom, Ciernes-Picat, Cima Garibaldi, Cima di Cugn, Cimadera, Cimalmotto, Cinuskel, Claridenstock, Claro, Clavadel, Clemgia, Clos du Doubs, Clugin, Coeuve, Cointrin, Coire, Col Fenêtre, Col de Balme, Col de Cheville, Col de Chésery, Col de Cou, Col de Coux, Col de Fenêtre, Col de Mollendruz, Col de Pillon, Col de Rapenaz, Col de Recon, Col de Saint-Cergue, Col de Tenneverge, Col de Torrent, Col de Vernaz, Col de Verne, Col de la Fenêtre, Col de la Forclaz, Col de la Fourche, Col des Fourches, Col des Roches, Col du Chardonnet, Col du Grand-Saint-Bernard, Col du Marchairuz, Col du Molendruz, Col du Pillon, Col du Saint- Gothard, Col du Sanetsch, Col-de- Fenêtre-de-Durand, Colle Fenêtre, Colle Fenêtre de Durand, Colle del Gran San Bernardo, Collombey, Collonge-Bellerive, Collonges, Cologny, Colombier, Colovrex, Coltura, Comano, Combremont, Combremont-le-Petit, Comologno, Compadials, Compatsch, Compesières, Comprovasco, Concise, Concordia Hütte, Confederatio Helvetica, Confederazione Svizzera, Confignon, Confédération Suisse, Conters, Conthey, Contone, Contra, Convers, Convers-Gare, Coppet, Corbeyrier, Corcapolo, Corcelles, Cordast, Cordona, Cordonaz, Corgémont, Corippo, Corminboeuf, Cornaux, Cornettes de Bise, Cornol, Corsier, Corsier Port, Cortaillod, Cortascio, Corte, Corte Grande, Cortuillod, Cossonay, Cossonay-Ville, Cottens, Coulouvrenière, Courfaivre, Courgenay, Courgevaux, Courlevon, Courrendlin, Courroux, Court, Courtedoux, Courtelary, CourtemaÃ®che, Courtepin, Courtion, Courtételle, Couta, Couvet, Cra digl Lai, Crana, Crans, Crans-sur-Sierre, Crassier, Crasta, Cresciano, Cressier, Cresta, Creta, Creux du Van, Crich, Crico, Crissier, Cristallina, Croce, Crusch, Cré digl Lai, Crémines, Cudrefin, Cugnasco, Cugy, Cully, Cumbels, Cunter, Curaglia, Curtina, Céligny, Côte aux Fées, Dachsen, Dagmersellen, Daillens, Daillet, Dailley, Dailly, Dallenwil, Dalpe, Dammastock, Damvant, Dandrio, Danis, Dardagny, Daubensee, Davos, Davos Dorf, Davos Platz, Degersheim, Deisswil, Deitingen, Delsberg, Delé, Delémont, Densbüren, Dent Blanche, Dent de Morcles, Dent de Ruth, Dent de Vaulion, Dent du Midi, Dents du Midi, Derbonere, Derbonne, Derendingen, Devant, Diableret, Diablerets, Diechtersmatt, Diegten, Dielsdorf, Diemtig Thal, Diemtigen, Diemtigtal, Diepoldsau, Diesbach, Diessbach, Diesse, Diessenhofen, Dietikon, Dietlikon, Dietwil, Digg, Dinhard, Dino, Disentis, Disla, Distel, Distel Alp, District Cossonay, District de la Glâne, Dizy, Dogern, Doldenhorn, Dolent, Dom, Domat, Domat Ems, Dombresson, Domdidier, Domleschg, Dompierre, Donatyre, Dongio, Donneloye, Doppleschwand, Dornach, Dornhalden, Dornhaus, Dorénaz, Dottikon, Drance, Drance d''Entremont, Drance de Bagne, Drance de Bagnes, Drance de Ferret, Drance de Ferrex, Dranse, Dranse d''Entremont, Dranse de Bagnes, Dranse de Ferret, Dreiligass, Dreiländerspitze, Dreischübel, Dreispitz, Drusberg, Drusenfluh, Drusenthor, Drusentor, Duno, Durach, Duranna, Dutgien, Dutjen, Duvin, Däniken, Därligen, Därstetten, Dättwil, Dörfji, Dörfli, Döttingen, Dübendorf, Düdingen, Düdingerbach, Dünnern, Dürnten, Dürrbach, Dürrboden, Dürrenboden, Dürrenroth, Dürrenäsch, Düssistock, Eaux-Vives, Ebenfluh, Ebikon, Ebligen, Ebnat, Ebnat-Kappel, Echallens, Echarlens, Ecublens, Ecuvillens, Ecône, Effingen, Effretikon, Egerkingen, Egg, Egga, Eggenschwand, Eggenwil, Eggerberg, Eggersriet, Eggishorn, Eggiwil, Egina, Eglisau, Egliswil, Egnach, Ehrendingen, Eich, Eichberg, Eigenthal, Eiger, Eiken, Einigen, Einsiedeln, Eischol, Eischoll, Eisenreich, Eison, Eisten, Elgg, Ellikon, Ellikon am Rhein, Ellikon an der Thur, Elm, Elsau, Elsigbach, Embd, Embrach, Emme, Emmen, Emmenbrücke, Emmenmatt, Emmental, Emmenthal, Emmetten, Emmeuen, Emmishofen, Emosson, Ems, En Vennes, En la Gottaz, Enderlin Horn, Endingen, Engadin, Engadine, Engehalde, Engelberg, Engelbergeraa, Engelbergertal, Engelbergerthal, Engi, Engstlensee, Engstligen, Engstligen Bach, Engstligental, Engstligenthal, Ennenda, Ennetbürgen, Ennetegg, Enney, Ensex, Entenmoos, Entfelden, Entlebuch, Epalinges, Epautheyres, Ependes, Eptingen, Erde, Ergolz, Eriswil, Eriz, Erlach, Erlen, Erlenbach, Erlenbach im Simmental, Erlinsbach, Ermatingen, Ernen, Erschmatt, Erschwil, Ersigen, Erstfeld, Esch, Eschenbach, Eschenz, Escher, Eschikofen, Eschlikon, Eschlikon-Dorf, Escholzmatt, Essertines-sur-Rolle, Estavannens, Estavannens-Dessous, Estavannens-Dessus, Estavayer, Estavayer-le-Lac, Ettingen, Ettiswil, Etzel, Etzel-Kulm, Etzgen, Etzwilen, Euseigne, Eutal, Euthal, Evilard, Evionnaz, Evolène, Exergillod, Extérieur, Eyholz, Eysins, Faedo, Fafleralp, Fahrni, Fahrwangen, Fahy, Faido, Faido-Borgo, Faldum Alp, Falera, Falknis, Falknis Horn, Falls of the Rhine, Fanas, Fang, Fankhaus, Faoug, Fardün, Farnsburg, Farvagny-le-Grand, Farvagny-le-Petit, Faulensee, Faulhorn, Federal Station, Fehraltorf, Felben, Feld, Feldbach, Feldbrunnen, Feldbrunner, Feldis, Feldmeilen, Feldmoos, Feldmos, Fellers, Felsberg, Felsenau, Fenêtre, Fenêtre de Balme, Fenêtre de Durand, Ferden, Ferenbalm, Fermelberg, Fermelläger, Fermunt Pass, Fernigen, Ferret, Ferrex, Feschel, Feschel Bach, Fetan, Fetan Grand, Feuerstein, Feuerthalen, Feusisberg, Feutersoey, Fex-Crasta, Feydey, Fidaz, Fideris, Fideris Dorf, Fideriser Alp Duranna, Fideriseralp, Fiesch, Fiescherthal, Fiesso, Fiez, Filderich, Filisur, Filzbach, Fimber Pass, Fimberbach, Findelen, Findeln, Findeln bei Staldenreid, Finhaut, Finsteraarhorn, Finstermünz, Finstermünz Pass, Fionnay, Fischental, Fischenthal, Fischingen, Fiume Spöl, Fiume Ticino, Flaach, Flamatt, Flawil, Flaz, Flaz bach, Flerden, Fletschhorn, Fleurier, Flims, Flims Dorf, Flims Waldhaus, Flon, Flond, Fluchthorn, Fluhalp, Fluhberg, Flums, Flurlingen, Fläsch, Flüel-Pass, Flüelapass, Flüeli, Flüeln, Flühli, Flühli Ranft, Fontaine, Fontainemelon, Fontana, Fontenais, Forcèlla Larain, Forel, Forna, Fornasette, Foroglio, Forêt du Risoux, Founex, Franches Montagnes, Frasco, Fraubrunnen, Frauenfeld, Frauenkappelen, Frauenkirch, Freiberg, Freiberge, Freiburg, Freiche, Freidorf, Freienbach, Frenières, Frenkendorf, Fribourg, Friburgo, Frick, Friedau, Frieswil, Froda, Frohnalpstock, Froideville, Fronalpstock, Fruence, Frunt, Frutigen, Frutt, Fräschels, Fuhre, Fuldera, Fulenbach, Full, Fully, Fuorn, Furka, Furka Passhöhe, Furkapass, Furkareuss, Furkels, Furna, Furna-Dorf, Furth, Fusio, Futschöl Pass, Fällanden, Färnigen, Fätschbach, Fätschbach Fälle, Füllinsdorf, Fürstenaubruck, Gachnang, Gadmen, Gadmerwasser, Gafall Joch, Gafarra, Gafien, Gais, Gaiserwald, Galenstock, Galgern, Galicien, Galleria del Gottardo, Galleria del San Gottardo, Galleria del Sempione, Galm, Galmis, Galmiz, Gals, Gampel, Gampelen, Gams, Gamsen, Gandria, Ganterschwil, Ganterswil, Gantrisch, Gare de Cornavin, Gare des Eaux-Vives, Gargellen Joch, Gargellenköpfe, Gargellner Köpfe, Gaster, Gebenstorf, Gelfingen, Gelgia, Gelmersee, Gelterkinden, Gemeinde Sargans, Gemmenalphorn, Gemmi, Gemmi Passhöhe, Gemmipass, Gempen, Gemsblei Spitze, Gemsbleisspitze, Gemsspitz, Genestrerio, Geneva, Geneva Cointrin, Genf, Genf-Cointrin, Genfer See, Genolier, Gental, Gentalhütten, Gentalwasser, Genthalalp, Genthalhütten, Genthalwasser, Genève, Genève Aeroport, Genève- Cornavin, Geretsried, Gergellner Joch, Gerine, Geristein, Gerlafingen, Gerlikon, Gerliswil, Gerra, Gerra-Verzasca, Gersau, Gerschnialp, Gerzensee, Geschinen, Gettnau, Geuensee, Gheiba, Gibswil, Gidisdorf, Giebel, Giess Bach, Giessbach, Giessbachfälle, Gifferhorn, Giffers, Giffershorn, Gilly, Gimel, Gimmelwald, Ginevra, Gingins, Giornico, Giova, Gipf- Oberfrick, Girenbad, Girenbad Seelmatten, Girenbad-matten, Giswil, Giubiasco, Giumaglio, Givrins, Glacier d'' Otemma, Gland, Glaris, Glarner Alpen, Glarus, Glatt, Glatt Kanal, Glattbrugg, Glattburg, Glattenberg, Glattfelden, Gleckstein, Glecksteinhütte, Glenner, Glenner Glogyn, Gletsch, Glion, Glis, Glogn, Glovelier, Glâne, Glärnisch, Glütschbach, Gmeinalp, Gnosca, Goldach, Goldau, Goldingen, Goldiwil, Goldswil, Gollion, Gommiswald, Goms, Gondiswil, Gondo, Gonten, Gontenschwil, Goppenstein, Goppisberg, Gordevio, Gordola, Gorduno, Gorge of the Aare, Gorgier, Gorgier-Saint-Aubin-Sauges, Gormer, Gornergletscher, Gornergrat, Gossau, Gothard, Gottefrey, Gotteron, Gotthardtunnel, Gottlieben, Goumoens-la-Ville, Graben, Graben Schlieren, Grabs, Grafenort, Gran San Bernardo, Grancy, Grand Canal, Grand Combin, Grand Crêt, Grand Muveran, Grand Saint Bernard, Grand Saint Bernard Tunnel, Grand Saint-Bernard, Grand-Saconnex, Grand-Savagnier, Grandcour, Grande Eau, Grande Fourche, Grande Glâne, Grandfontaine, Grandsivaz, Grandson, Grandval, Grandvillard, Granges, Granges-près-Sion, Graue Hörner, Grauspitz, Gravelon, Gravesano, Great Litzner, Great Saint Bernard, Great Saint Bernard Pass, Great Saint Bernard Tunnel, Great Swiss Plateau, Greifensee, Greinapass, Grellingen, Grenchen, Grengiols, Grenzeckkopf, Grenzeggkopf, Greppen, Gresaley, Gresso, Gribbio, Griesalp, Grimentz, Grimisuat, Grimmialp, Grimsel Passhöhe, Grimselpass, Grimselsee, Grindelfeld, Grindelwald, Griosch, Grisons, Grodei, Grodoey, Grolley, Grono, Gross Gurmels, Gross Höchstetten, Gross Litzner, Gross Litzner Spitze, Gross Scheerhorn, Gross Schlieren, Gross Schlierenthal, Gross Schreckhorn, Gross Wannehorn, Gross-Fetan, Grossaffoltern, Grossalpen, Grossandelfingen, Grossbösingen, Grosse Scheidegg, Grosse Windgälle, Grosser Aletschfirn, Grosser Aletschgletscher, Grosser Auberg, Grosser Aubrig, Grosser Mythen, Grosses Spannort, Grossschlierental, Grosstal, Grosswangen, Gruben, Grun, Grund, Grundbach, Gruyères, Gryon, Grächen, Grächer, Gränichen, Grône, Grön Bach, Grübelekopf, Grüningen, Grüsch, Grütli, Gstaad, Gstaldenbach, Gsteig, Guarda, Gubel, Guberwald, Guggisberg, Gullien Canal, Gumegna, Gummeli, Gummfluh, Gunt, Gunten, Gunz, Gunzgen, Gunzwil, Guraletsch, Gurnigel, Gurnigelbad, Gurten, Gurten Kulm, Gurtnellen, Guttannen, Guévaux, Gwatt, Gydisdorf, Gyrenbad, Gächlingen, Gänsbrunnen, Göschenen, Göschenenalp, Gösgen, Gösheneralp, Göslikon, Güferhorn, Güllen Canal, Güllenkanal, Gümligen, Gümmenen, Gürbe, Gütsch, Güttingen, Habkern, Habsburg, Hagenbuch, Hagneck, Hagneck Kanal, Hahnensee, Haldenstein, Halen, Hallau, Hallwil, Hallwilersee, Hallwyler See, Halten, Handeck, Handegg, Hannigalp, Hargneck Kanal, Hasenmatt, Hasenmatte, Hasle, Hasle Thal, Hasle-Rüegsau, Haslen, Hasletal, Hasli, Haslital, Haudères, Hauenstein, Hauptwil, Hausen, Hausstock, Haut-Vully, Hauterive, Hauterize, Hauteville, Heerbrugg, Heerbrugge, Hegi, Heidbühl, Heiden, Heiligenschwendi, Heimberg, Heimenschwand, Heimiswil, Heinzenberg, Heitenried, Heitmannsegg, Hellbühl, Helsenhorn, Helvetia, Hemberg, Hemishofen, Hemmental, Hemmenthal, Hemmiken, Henau, Hendschiken, Hendschikon, Henggart, Herbetswil, Herblingen, Herbrigen, Herbriggen, Herbrug, Herdern, Hergersboden, Hergiswil, Herisan, Herisau, Hermance, Hermetschwil, Hermiswil, Herrenhof, Herrliberg, Hertenstein, Herzberg, Herzogenbuchsee, Hessigkofen, Hettlingen, Hildisrieden, Hilterfingen, Himmelried, Hindelbank, Hint Schweig, Hinter Horbis, Hinter Netschbühl, Hinter Wallegg, Hinter-Grauspitz, Hinterdorf, Hintere Töss, Hintere-Windspillen, Hinterkappelen, Hinterlochen, Hinterrhein, Hinwil, Hirschhorn, Hirzel, Hittnau, Hitzkirch, Hoch Ducan, Hochalp, Hochblauen, Hochdorf, Hochfinstermünz, Hochwald, Hochwang, Hof, Hofen, Hofstetten, Hohe Etzel, Hohe Rone, Hohe Winde, Hohe Windspillen, Hohenhaus, Hohenrain, Hohenstollen, Hoher Etzel, Hoher Kasten, Hohfluh, Hohgant, Holderbank, Hollerbiel, Hollerbühl, Holzhostatt, Hombrechtikon, Homburg, Hondrich, Horgen, Horn, Hornkessel, Hornspitze, Hornussen, Horw, Hospental, Hospenthal, Hulftegg, Hundwald, Hundwil, Hunzigenbrügg, Hunzikenbrücke, Hurden, Husen, Hutstock, Huttwil, Huémoz, Hägendorf, Häggenschwil, Hägglingen, Hämikon, Hätzingen, Hérémence, Höhi Wispili, Hölstein, Höngg, Hörhausen, Hörnli, Hünenberg, Hünibach, Hüntwangen, Hürital, Hürithal, Hütten, Hüttenberg, Hüttlingen, Hüttwilen, Ibach, Iffigen, Iffigenalp, Igis, Igl Plang, Ijollibach, Il Fuorn, Il Madone, Ilanz, Ile-de- Saint-Pierre, Ilfis, Illgau, Illiswil, Illnau, Im Esch, Im Fang, Im Kloster, Im Loch, Imfeld, Immensee, In den Zügen, In der Schweig, Indemini, Inden, Ingenbohl, Inner Hof, Inner Praden, Inner Rhoden, Innercamana, Innerferrera, Innerferrera Calantgil, Innertal, Innerthal, Innertkirchen, Ins, Insel Ufenau, Interlaken, Intragna, Intsche, Intschi, Intérieur, Inwil, Iragna, Irchel, Irgenhausen, Irgenhusen, Iseltwald, Isenfluh, Isental, Isenthal, Iseo, Iserables, Isleten, Islikon, Isola, Isole di Brissago, Isone, Isorno, Issert, Itravers, Ittental, Ittenthal, Ittingen, Jaggisbachau, Jaun, Jaunpass, Javernaz, Javerne, Jegenstorf, Jeli, Jenaz, Jenins, Jerisberg, Jerisberghof, Jeuss, Jochpass, Jona, Jonen, Jonschwil, Jorat, Jorat d''Echallens, Josen Bach, Jougnena, Jougnenaz, Jouguena, Juf, Julia, Julierpass, Jungfrau, Jungfraujoch, Jura Bernois, Jurten, Jussy, Kaiseraugst, Kaiserstock, Kaiserstuhl, Kaisten, Kalberhöni, Kalchrain, Kalchstätten, Kalkberg, Kallnach, Kaltbad, Kaltbrunn, Kander, Kandergrund, Kandersteg, Kandertal, Kanderthal, Kanton Aargau, Kanton Appenzell Ausserrhoden, Kanton Appenzell Innerrhoden, Kanton Basel-Landschaft, Kanton Basel-Stadt, Kanton Baselland, Kanton Bern, Kanton Freiburg, Kanton Genf, Kanton Glarus, Kanton Graubünden, Kanton Luzern, Kanton Neuenburg, Kanton Nidwalden, Kanton Obwalden, Kanton Sankt Gallen, Kanton Schaffhausen, Kanton Schwyz, Kanton Solothurn, Kanton Tessin, Kanton Thurgau, Kanton Unterwalden Nidwalden, Kanton Unterwalden Obwalden, Kanton Uri, Kanton Waadt, Kanton Wallis, Kanton Zug, Kanton Zürich, Kappel, Kappel am Albis, Kappelen, Kastanienbaum, Katzensee, Kefikon, Kehrsatz, Kehrsiten, Kemmeriboden, Kemmeribodenbad, Kempttal, Kemptthal, Kendergrund, Kerenzen, Kerenzen Berg, Kernenried, Kerns, Kerzers, Kesswil, Kien, Kienholz, Kiental, Kienthal, Kiesen, Kiesen Bach, Kiessen, Kiisnacht See, Kilchberg, Killwangen, Kinzeralp, Kinzigkulm, Kippel, Kirchberg, Kirchdinhard, Kirchdorf, Kirchlindach, Kirchtobelbach, Kistenpass, Klausenpass, Klein Furka, Klein Schlieren, Klein Schlierenbach, Klein Schlierenthal, Klein-Basel, Kleindietwil, Kleine Emme, Kleine Scheidegg, Kleine Simme, Kleinhöchstetten, Kleinhüningen, Kleinlützel, Kleinschlierental, Klettgau, Klimsen, Klimsenhorn, Klingnau, Kloster, Kloster Valsainte, Klosterpass, Klosters, Klosters Brücke, Klosters Dorf, Klosters Dörfli, Klosters Platz, Klosters Serneus, Kloten, Klusi, Klöntal, Klönthal, Knonau, Knutwil, Koblenz, Kohlfirst, Kollbrunn, Konkordia, Konkordiahütten, Konolfingen, Konolfingen Dorf, Koppigen, Kradolf, Krattigen, Krauchtal, Krauchthal, Krautmettli, Kreis Fünf-Dörfer, Kreuzbrücke, Kreuzegg, Kreuzlingen, Kriechenwil, Kriegmatte, Kriegsmatte, Kriegstetten, Kriegstten, Kriens, Krienz, Krinau, Kronbühl, Kronbühl bei Sankt Gallen, Krone, Krummenau, Kröschenbrunnen, Krüzlipass, Kuenz, Kulm, Kumma, Kunkelspass, Kuoni, Kuonz, Kurhaus, Kurhaus Grimmialp, Kurheim-Grimmialp, Kyburg, Käppeli, Kärpf, Kärstelenbach, Käsern, Käserstatt, Kästris, Kölliken, Köniz, Küblis, Künten, Küsnacht, Küssnacht, Küssnacht am Rigi, Küssnachtersee, Küttigen, Küttigkofen, L''Abbaye, L''Allaine Rivière, L''Allondon, L''Arve Rivière, L''Arve Torrent, L''Hermance Rivière, L''Isle, L''Orbe, La Balmaz, La Barma, La Barmaz, La Berra, La Birsig Rivière, La Birsig Ruisseau, La Borgne, La Broye, La Brévine, La Caffode, La Chaux, La Chaux de Fonda, La Chaux-de-Fonds, La Chaux-des-Breuleux, La Chaux-sur- Breuleux, La Chièsaz, La Comballaz, La Coulouvrenière, La Crêta, La Cure, La Côte, La Côte-aux-Fées, La Derbonne, La Dernier, La Dranse, La Dranse d''Entremont, La Dôle, La Ferrière, La Fontaine, La Forclaz, La Fouly, La Giète Délé, La Glâne, La Gottaz, La Gouille, La Heutte, La Jougnena Ruisseau, La Lizerne, La London Rivière, La Lucelle Rivière, La Lécherette, La Mentue, La Monta, La Méreune, La Navisence, La Navisonce, La Neuveville, La Perreyre, La Petite Glâne, La Plaine, La Pleine, La Praille, La Praz, La Printse, La Punt, La Pècherette, La Redoute, La Reuchenette, La Roche, La Rösa, La Sagne, La Salanfe, La Sarraz, La Scheulte, La Thièle, La Tine, La Tour, La Tour-de-Peilz, La Tour-de-Trême, La Tène, La Valsainte, La Versoix Rivière, Laax, Laax bei Ilanz, Lac Bleu, Lac Brenet, Lac Domène, Lac Léman, Lac Majeur, Lac Noir, Lac Supérieur de Fully, Lac d'' Uri, Lac de Barberine, Lac de Bienne, Lac de Chaillexon, Lac de Constance, Lac de Derborence, Lac de Fully, Lac de Genève, Lac de Joux, Lac de Locarno, Lac de Morat, Lac de Märjelen, Lac de Neuchâtel, Lac de Silvaplana, Lac de la Gruyère, Lac des Brenets, Lac des Quatre Cantons, Lachen, Lacus Verbano, Ladholz, Ladils, Ladir, Laeufelfingen, Laghetto, Laghetto di Muzzano, Lago Bianco, Lago Laghetto, Lago Maggiore, Lago Nero, Lago Ritom, Lago Sambuco, Lago Sfundau, Lago Tremorgio, Lago dei Cantoni, Lago di Brienz, Lago di Cavloccio, Lago di Costanza, Lago di Ginevra, Lago di Lucendro, Lago di Lugano, Lago di Maggiore, Lago di Muzzano, Lago di Naret, Lago di Poschiavo, Lago di Thun, Lago di Zug, Lago di Zurigo, Lai, Laire, Laire Valley, Lajoux, Lake Geneva, Lake Konstanz, Lake Leman, Lake Lucerne, Lake Maggiore, Lake of Brienz, Lake of Constance, Lake of Geneva, Lake of Locarno, Lake of Lucendro, Lake of Lucerne, Lake of Lugano, Lake of Maggiore, Lake of Neuchâtel, Lake of Sils, Lake of Thoune, Lake of Zug, Lake of Zurich, Lake of the Four Forest Cantons, Lalden, Lamboing, Lana, Lancy, Landarenca, Landbrugg, Landiswil, Landquart, Landquart Fabriken, Landwasser, Laneron, Laneron-Combes, Langenbruck, Langensee, Langental, Langenthal, Langete, Langeten, Langnau, Langrickenbach, Langwies, Lanna, Lannaz, Lansch, Lantsch, Laret, Larsi, Latsch, Lauenen, Lauerz, Lauerzersee, Laufen, Laufenburg, Laupen, Laupersdorf, Lauperswil, Laura, Lausanne, Lausen, Lauterbrunnen, Lavaggio, Lavaux, Laveggio, Lavertezzo, Lavey, Lavey- Village, Lavey-les-Bains, Lavin, Lavorgo, Lax, Le Bouveret, Le Brassus, Le Bry, Le Chalet-à-Gobet, Le Chenit, Le Cheval Blanc, Le Châble, Le Châtelard, Le Châtelard-Montreux, Le Col-des-Roches, Le Contour, Le Crêt, Le Crêt-près-Semsales, Le Diableret, Le Fays, Le Feydey, Le Gibloux, Le Gotteron, Le Grand-Saconnex, Le Gros Crêt, Le Jorat d''Echallens, Le Landeron, Le Lertzbach Ruisseau, Le Locle, Le Marchairuz, Le Moléson, Le Mont, Le Mont Risoux, Le Mont d'' Or, Le Mont-sur-Lausanne, Le Morimont, Le Noirmont, Le Peuchapatte, Le Pont, Le Prese, Le Pâquier, Le Sentier, Le Suchet, Le Sépey, Le Tour Noir, Le Vaud, Le Vichiesso, Leggia, Leibstadt, Leimbach, Leis, Leissigen, Lej da Segl, Lej da Silvaplauna, Lelgio, Lelin, Lemano, Lengnau, Lenk, Lens, Lenz, Lenzburg, Lenzerheide, Lepontine Alpes, Lepontine Alps, Lertzbach, Les Acacias, Les Adanes, Les Alpes, Les Avants, Les Bayards, Les Bois, Les Brenets, Les Breuleux, Les Charbonnières, Les Charmilles, Les Coeudres, Les Cornettes de Bise, Les Diablerets, Les Dévens, Les Eaux-Vives, Les Garettes, Les Geneveys-sur-Coffrane, Les Genevez, Les Haudères, Les Hauts-Geneveys, Les Hauts-Genveys, Les Marécottes, Les Mosses, Les Moulins, Les Plans, Les Plans-sur-Bex, Les Pléiades, Les Pommerats, Les Ponts-Martel, Les Ponts-de-Martel, Les Pâquis, Les Raimeux, Les Rappes, Les Rochers-de-Naye, Les Siernes-Picats, Les Thioleyres, Les Valettes, Les Verrières, Lessoc, Letten, Leuggelbach, Leuk, Leuk Stadt, Leukerbad, Leutmerken, Leutwil, Leuzigen, Leysin, Leytron, Lichtensteig, Liddes, Liebefeld, Liebistorf, Lieli, Lienz, Liesberg, Liestal, Ligers, Ligerz, Lignières, Ligornetto, Limmat, Lindau, Lindberg, Linden, Linden bei Oberdiessbach, Lindenberg, Lindenhof, Lindenthal, Linth, Linth Valley, Linth-Tal, Linthal, Linthkanal, Linththal, Liplisbühl, Lipplisbühl, Littau, Littewil, Lizerne, Locarno, Loch, Loco, Lodano, Lodrino, Lohalp, Lohn, Lohner, Lommis, London, Longirod, Lonza, Lorze, Lorzentobel, Losone, Lostallo, Lostorf, Lottigna, Lotzwil, Lourtier, Lovald, Lower-Engadin, Lowerz, Lowerzersee, Lucelle, Lucendro, Lucens, Lucerna, Lucerne, Luchsingen, Ludiano, Ludwigshöhe, Lugano, Lugnez, Lukmanierpass, Lully, Lumbrein, Lumbreineralp, Lumino, Lunckenbach, Lungern, Lungernsee, Lungnezertal, Lungnezerthal, Lunkenbach, Lunschania, Lurtigen, Lustenau, Luterbach, Luthern, Lutry, Luven, Luvis, Luzein, Luzern, Luziensteig, Lyss, Lyssach, Lägern, Lägh da Cavloc, Längenberg, Längenschachen, Läufelfingen, Léchelles, Lécherette, Löbbia, Löntsch, Löntschbach, Lös, Lötschberg, Lötschberg Pass, Lötschberg-Tunnel, Lötschen Thal, Lötschenpass, Lötschental, Lü, Lütisburg, Lütisburg-Dorf, Lütmerken, Lütschental, Lütschenthal, Lütschine, Lützel, Lützelflüh, Macolin, Maderanertal, Maderanerthal, Madiswil, Madone Grosso, Madra, Madrisahorn, Madulein, Magadino, Magden, Magdenau, Mageren, Magerrain, Maggia, Maggiore, Magglingen, Magliasina, Magliasina Chiesa, Magnot, Maienfeld, Maisprach, Maladers, Malans, Malfrag Bach, Malix, Malleray, Malmigiuer, Malmigiur, Malmiguier, Maloggia, Maloja, Malojapass, Malters, Malvaglia, Mammern, Manas, Mannens, Manno, Mannried, Maracon, Marbach, March, Marchissy, Maria, Mariastein, Marin, Marin-Ã‰pagnier, Marly-le-Grand, Marmels, Marmorera, Maroggia, Marsens, Marthalen, Martigny, Martigny-Bourg, Martigny-Combe, Martigny-Croix, Martigny-Ville, Martina, Martinsbruck, Marzili, Masans, Maschwanden, Mase, Massa, Massagno, Mastrils, Mathon, Matt, Matte, Matten, Matten bei Interlaken, Mattenhof, Mattenhof- Leist, Matterhorn, Mattervisp, Mattmark Dam, Mattmarksee, Matzendorf, Matzenried, Matzingen, Matélon, Mauborget, Mauensee, Maur, Mauren, Mauvoisin, Mauvoisin Dam, Mayens de Pralong, Mayoux, Medeglia, Medels, Medels Rheinwald, Medels im Rheinwald, Medergen, Meggen, Meienreuss, Meiental, Meienthal, Meierhof, Meierskappel, Meilen, Meinier, Meinisberg, Meiringen, Meisterschwanden, Melano, Melchnau, Melchtal, Melchthal, Melera, Melide, Mellingen, Mels, Mendrisio, Mentue, Mentue Rivière, Menziken, Menzingen, Menznau, Merdassonnet, Merdessonnet, Merenschwand, Mergoscia, Meride, Merishausen, Merligen, Mervelier, Meschino, Mesocco, Mesolcina, Messen, Metsch, Mettendorf, Mettlen, Mettmenstetten, Metzerlen, Mex, Meyrin, Mezzovico, Miglieglia, Miliüt, Minusio, Mionnaz, Miralago, Mischabel, Misox, Misoxertal, Mitholz, Mittal, Mittel Arni, Mittel-Muhen, Mittelland, Mittelsass, Mitthal, Mittholz, Mittlerer Engadin Nationalpark, Mittlersass, Miège, Miécourt, Miéville, Moesa, Mogelsberg, Moghegno, Mogno, Mohlin, Moleno, Mollendruz, Mollens, Mollettes, Mollis, Mols, Moléson, Mompetavetsch, Mompé-Tujetsch, Mon, Monbiel, Mons, Monstein, Mont Blanc de Cheilon, Mont Blanc de Seillon, Mont Blanc de Seilon, Mont Cervin, Mont Chasseron, Mont Collon, Mont Damin, Mont Dolent, Mont Gibloux, Mont Jorat, Mont Murail, Mont Raimeux, Mont Rose, Mont Sagerou, Mont Sageroux, Mont Suchet, Mont Tendre, Mont Terri, Mont Vuilly, Mont Vully, Mont Vélan, Mont d'' Amin, Mont du Risoux, Mont-la-Ville, Mont-sur-Rolle, Montagibert, Montagne de la Caffode, Montagne du Larmont, Montagnola, Montagnon, Montagny, Montagny-la-Ville, Montana, Montana Vermala, Montana-Village, Montbovon, Montcherand, Monte, Monte Ardet, Monte Brè, Monte Brè Sopra Lugano, Monte Camoghè, Monte Carasso, Monte Carasso-Sementina, Monte Caslano, Monte Ceneri, Monte Cervino, Monte Dolent, Monte Generoso, Monte Gumegna, Monte Laura, Monte Leone, Monte Madone, Monte Rosa, Monte San Salvatore, Monte Scala, Monte Tamaro, Monte Velan, Monte Zucchero, Monte di Stabbio, Montfaucon, Monthey, Monti Anvedua, Monti Laura, Monti Moneda, Monti Pertiscio, Monti Ruscada, Monti Viff, Monti della Trinità, Monti della-Tagliada, Monti di CÃ², Monti di Lanés, Monti di Moneda, Monti di Odro, Monti di Pianturino, Monti di Ruscada, Monti di Vif, Montignez, Montoz, Montreux, Montricher, Moosleerau, Morat, Morbio, Morbio Inferiore, Morbio Superiore, Morclan, Morcles, Morcote, Morens, Morgarten, Morgenberghorn, Morges, Morgeten, Morgins, Morimont, Morissen, Moron, Morschach, Morteratsch, Morteratsch Gletscher, Moscia, Mosnang, Mosogno, Motet, Motto, Motôt, Moudon, Mount Jorat, Mount Rosa, Moutier, Movelier, Mugena, Muggio, Muhen, Muldain, Mulegns, Mumpf, Mund, Mundbach, Munter, Muolen, Muota, Muotatal, Muotathal, Muretto, Muretto-Pass, Murg, Murgental, Murgenthal, Muri, Muri bei Bern, Murten, Murtensee, Mutten, Muttenz, Muttler, Muttner Tobel, Mythen, Mädrigen, Männedorf, Männlifluh, Märjelensee, Märstetten, Märstetten-Dorf, Märwil, Mäschenboden, Mätteli, Mézières, Môtiers, Möhlin, Möhlin Bach, Möhrlialp, Mönch, Mönchaltorf, Mörel, Mörigen, Möriken, Mörschwil, Mühlau, Mühlebach, Mühleberg, Mühlehorn, Mühlen, Mühlethurnen, Mühlrüti, Müllheim, Mümliswil, Münchenbuchsee, Münchenstein, Münchwilen, Münsingen, Münster, Münsterlingen, Münstertal, Münsterthal, Münstschemier, Mürren, Mürtschenstock, Müssen, Müstair, Mützlenberg, NAME NOT KNOWN, Naafkopf, Napf, Narglesa, Nargliesa, Nascharegnas, Naters, Nationalpark, Naturschutzgebiet Häftli, Nauf Kopf, Navigence, Navigenze, Navixenze, Navizenche, Nax, Naz, Nebikon, Necker, Neftenbach, Negrentino, Neker, Nendaz, Nessental, Nessenthal, Nesslau, Nesthorn, Netstal, Neu Sankt Johann, Neu-Felsberg, Neuchâtel, Neudorf, Neuenburg, Neuenburger See, Neueneck, Neuenegg, Neuenhof, Neuenkirch, Neuewelt, Neuhaus, Neuhausem, Neuhausen am Rheinfall, Neuheim, Neukirch, Neukirch an der Thur, Neukirch bei Ilanz, Neumühle, Neunforn, Neunkirch, Neyruz, Nidau, Nidau-Büren-Kanal, Nidegg, Nidfurn, Nidru Buren Kanal, Nidwald, Nidwalden, Nieder Surenen Alm, Nieder Surenen Alp, Nieder-Schongau, Nieder-Zeihen, Niederbipp, Niederbuchsiten, Niederbüren, Niedererlinsbach, Niedergampel, Niedergerlafingen, Niedergestelen, Niedergesteln, Niedergösgen, Niederhallwil, Niederhelfenschwil, Niederlenz, Niedern, Niedern Stafel, Niederrickenbach, Niederried, Niederrohrdorf, Niederscherli, Niedersommeri, Niedersurrenen, Niederurnen, Niederuzwil, Niederwald, Niederweningen, Niederwichtrach, Niesen, Niesen Kulm, Nikolaital, Nikolaithal, Nods, Nohl, Noiraigue, Noirmont, Nollen, Nonnenhorn, Norantola, Noréaz, Nottwil, Novaggio, Novalles, Novazzano, Noveli, Nozon, Nozon Rivière, Nufenen, Nufenen Pass, Nunningen, Nuschlau, Nussbaumen, Nydegg, Nyon, Näfels, Nänikon, Nürensdorf, Obach, Ober Alp, Ober Engadin, Ober Gurzelen, Ober Illnau, Ober Läger, Ober Oenz, Ober Rohrmoos, Ober Rämis, Ober Siez, Ober Simmental, Ober Simmenthal, Ober Stafel, Ober Staffel, Ober Trubsee Alm, Ober Trübsee Alp, Ober Tschappina, Ober Urdorf, Ober- Basenheid, Ober-Bazenheid, Ober-Bilten, Ober-Buch, Ober-Etzel, Ober-Laret, Ober-Plötsch, Ober-Says, Ober-Schlatt, Ober- Schongau, Ober-Siggental, Ober-Stammheim, Ober-Wangen, Ober-Wetzikon, Ober-Wohlen, Oberaach, Oberaar, Oberaargau, Oberaargletscher, Oberalb-Pass, Oberalp, Oberalp-Passhöhe, Oberalppass, Oberalpsee, Oberalpstock, Oberbalm, Oberbauenstock, Oberbipp, Oberbuchsiten, Oberburg, Oberbüre, Oberbüren, Obercastels, Oberdiessbach, Oberdorf, Obere Alp, Oberegg, Oberembrach, Oberems, Oberendingen, Oberengstringen, Oberentfelden, Obererlinsbach, Oberfeld, Obergerlafingen, Obergestelen, Obergesteln, Oberglatt, Obergösgen, Oberhalbstein, Oberhalbsteiner Rhein, Oberhallau, Oberhausen, Oberhegi, Oberhelfenschwil, Oberhofen, Oberhofen bei Etzgen, Oberhusen, Oberiberg, Oberkirch, Oberland, Oberlandguart, Oberlunkhofen, Oberläger, Obermatt, Oberneuforn, Oberrickenbach, Oberried, Oberrieden, Oberriet, Oberrüti, Obersaxen, Oberschlatt, Oberschrot, Oberschönenbuch, Obersee, Obersiggenthal, Oberstocken, Oberterzen, Obertoggenburg, Oberulmiz, Oberuzwil, Obervaz, Oberwald, Oberwangen, Oberweningen, Oberwil, Oberwilen, Oberzelg, Oberönz, Obfelden, Obstalden, Obwald, Obwalden, Ochlenberg, Ochsenboden, Ocourt, Oensingen, Oenz, Oerlikon, Oeschberg, Oeschinensee, Oestlich Raron, Oetwil am See, Oetwil an der Limmat, Oey, Ofenberg, Ofenberg Passhöhe, Ofenpass, Oftringen, Ohmstal, Oleyres, Olivone, Ollon, Olten, Onex, Onnens, Opfikon, Oppens, Orasom Cierfs, Orbe, Orbe Riviére, Orello, Ormalingen, Ormont-Dessous, Ormont-Dessus, Oron-la- ville, Orpond, Orpund, Orsera, Orsières, Orsonnens, Orthalden, Ortstock, Orvin, Osco, Osogna, Ossingen, Osterfingen, Ostermundigen, Otelfingen, Othmarsingen, Ottenbach, Ouchy, Ovronnaz, Pailly, Palagnedra, Palézieux, Pampigny, Panex, Panix, Panixerpass, Pany, Papiermühle, Parc National Suisse, Parc Naziunal Svizzer, Parco Nazionale, Pardatsch, Pardè, Parpan, Partnun, Pas de Cheville, Pas de Cheville de Diablerets, Paspels, Pass Diesrut, Pass dal Güglia, Passo Muretto, Passo San Giacomo, Passo San Gottardo, Passo San Iório, Passo San Jorio, Passo del Bernina, Passo del Maloja, Passo del Muretta, Passo del Muretto, Passo del Sempione, Passo dello Spluga, Passo di San Bernardino, Passo di San Giacomo, Passo di San Jorio, Passo di Spluga, Passwang, Paudex, Paudèze, Paulinerkopf, Payerne, Pays d'' Enhaut, Peccia, Pedrinate, Peiden Bad, Peist, Pellinkopf, Peney, Peney-le-Jorat, Pennine Alpes, Pennine Alps, Penthalaz, Perlen, Perly-Certoux, Perrefitte, Perroy, Personico, Pertise, Peseux, Petit-Savagnier, Petite Glâne, Pfaffenried, Pfaffensprung, Pfaffhusen, Pfaffnau, Pfannenstiel, Pfeffikon, Pfeffingen, Pfeife, Pffaffhausen, Pfungen, Pfyn, Pfäfers Drof, Pfäffikersee, Pfäffikon, Pian San Giacomo, Piandera, Pianezzo, Piano, Piano di Magadino, Piatto, Piazzogna, Pic Tanneverge, Pic d'' Arzinol, Pic de Tenneverge, Pierre Pertuis, Pieterlen, Pignia, Pignieu, Pilatus, Piora, Piotta, Pitasch, Pix Faschalbe, Piz Aul, Piz Bernina, Piz Beverin, Piz Buin, Piz Corvatsch, Piz Curvèr, Piz Duan, Piz Fess, Piz Fora, Piz Julier, Piz Kesch, Piz Languard, Piz Linard, Piz Lischanna, Piz Medel, Piz Morteratsch, Piz Mundaun, Piz Muraigl, Piz Murail, Piz Muraun, Piz Nuna, Piz Ot, Piz Palü, Piz Pisoc, Piz Plafna, Piz Platta, Piz Plavna, Piz Plavna dadaint, Piz Quatervals, Piz Quattervals, Piz Roseg, Piz Roz, Piz Sardona, Piz Segnes, Piz Sesvenna, Piz Terri, Piz Tomül, Piz Umbrail, Piz Vadret, Piz d'' Aela, Piz d'' Ela, Piz d'' Err, Piz d'' Esen, Pizzo Bernina, Pizzo Camoghè, Pizzo Campo Tencia, Pizzo Centrale, Pizzo Medaro, Pizzo Molare, Pizzo Rotondo, Pizzo Tambo, Pizzo di Claro, Pizzo di Groveno, Pizzo di Molare, Pizzo di Ruscada, Pizzo di Vogorno, Plaffeien, Plaine de l'' Aire, Plan Fey, Plan Pro, Plan-de-la-Chaux, Plan-les-Ouates, Plan-les-Ouattes, Planacc, Plang, Plasseckapass, Plasseggen Joch, Plasselb, Platta, Platten-Spitze, Plattenspitz, Plattenspitzen, Platz, Plaun dils Matts, Plaz Beischen, Pleigne, Plessur, Pointe de Boccor, Pointe de Bécret, Pointe de Chavanette, Pointe de Chésery, Pointe de Fornet, Pointe de Fornets, Pointe du Tenneverge, Pont-de-Nant, Ponte, Ponte Brolla, Ponte Campovasto, Ponte Valentino, Ponte del Gallo, Ponthaux, Pontirone, Ponto Valentino, Pontresina, Porrentruy, Porsel, Port-Valais, Port-de-Corsier, Portalban, Portalban- Dessous, Porto Ronco, Poschiavo, Pra Combeira, Pra Combèra, Prada, Pradella, Praden, Praden bei Chur, Prafloric, Pragel Pass, Pragmartin, Pralong, Pralovin, Pramieisters, Prangins, Prarion, Praroman, Prato, Pratteln, Praz, Praz-de-Fort, Prazfleuri, Preda, Pregassona, Pregny, Pregny-Chambésy, Presinge, Prieuré, Prilly, Prince, Printse, Prolin, Promontogno, Prosito, Provence, Prugiasco, Pruntrut, Prätigau, Prättigau, Präz, Prêles, Puidoux, Puidoux-Chexbres, Pully, Punt dal Gall, Punta Buin, Puplinge, Pura, Pusced di Sopra, Pusserein, PÃ­z Ganneretsch, Péry, Püscen Negro, Quarten, Quartino, Quinten, Quinto, Rabius, Rabiusa, Radelfingen, Radons, Rafz, Ragaz, Raimeux, Raimeux de Grandval, Ramiswil, Ramsen, Rances, Randa, Randen, Randogne, Ranflüh, Ranft, Raperswilen, Rapperswil, Raron, Raron Oestlich, Ratzenberg, Rawilpass, Rawyl pass, Realp, Realta, Reams, Rebstein, Rechthalten, Reckingen, Reconvilier, Redoute, Regensberg, Regensdorf, Rehetobel, Reichenau, Reichenbach, Reichenburg, Reiden, Reigoldswil, Rein Anteriur, Rein d'' Avers, Reinach, Reischen, Reiseten Pass, Rekingen, Rempen, Remüs, Renan, Renens, Reuchenette, Reusch, Reuss, Reutigen, Rhaetian, Rhaetian Alps, Rhaetikon, Rhein Posteriur, Rheinau, Rheineck, Rheinfall, Rheinfelden, Rheinthalischer Binnenkanal, Rheinwald, Rheinwald Tal, Rheinwaldhorn, Rhonegletscher, Rhätikon, Rhätikon Mountains, Rhätische Alpen, Rhäzüns, Riaz, Riburg, Richental, Richenthal, Richigen, Richisau, Richterswil, Ricken, Rickenbach, Riddes, Ried, Ried bei Brig, Ried-Brig, Riedbach, Riedberg, Riedbergli, Riedbärgli, Riederalp, Riederen, Riedern, Riedholz, Riedkopf, Riedli, Riedlig, Riedstätt, Riehen, Riein, Riemenstalden, Rietzen Joch, Riezen Joch, Riffenmatt, Riftal, Riggisberg, Rigi, Rigi Kaltbad, Rigi Scheidegg, Rigi-Kulm, Rikon, Rimpfischhorn, Ringelspitz, Ringgenberg, Ringoldingen, Rinkenberg, Riom, Risch, Risetenpass, Riti, Ritti, Ritzenjoch, Ritzingen, Ritzlihorn, Riva, Riva San Vitale, Rive Haute, Riveo, River Ticino, Rivera-Bironico, Riviera, Rizzenpass, Robasacco, Roche, Rocher de Naye, Rochers de Naye, Roches, Rodels, Rodersdorf, Rodi, Rofflaschlucht, Roffna, Roflaschlucht, Roggwil, Rohr, Rohrbach, Rohrdorf, Rohrmatten, Rolle, Romainmôtier, Romanel, Romanel-sur-Lausanne, Romanshorn, Romont, Rona, Roncapiano, Ronco, Ronco sopra Ascona, Rondchâtel, Rongellen, Rongspitz, Root, Ropraz, Rorbas, Rorschach Hafen, Rorschacherberg, Rosablanche, Roschach, Rosegg, Rossa, Rossberg, Rossens, Rosshäusern, Rossinière, Rossura, Rotbühelspitze, Rotbühlspitz, Rotenbrunnen, Rotenturm, Rothachen, Rothbad, Rothenbrummen, Rothenbrunnen, Rothenthurm, Rothernburg, Rothorn, Rothrist, Rothrist-Dorf, Rothsee, Roticcio, Rotkreuz, Rotonda, Rotsee, Rotsteinpass, Rotticcio, Rotunda, Rougemont, Roverdo, Roveredo, Rovio, Rovray, Rubigen, Ruden, Rudolfstetten, Rue, Rueun, Rueyres, Rueyres-Treyfayes, Rufi, Ruine Farnsburg, Ruine Neu Tierstein, Ruis, Ruisseau le Lertzbach, Ruppen, Rupperswil, Ruschein, Russikon, Russin, Ruswil, Ruèras, Ryborg, Ryburg, Ryftal, Rämismühle, Räterichsboden, Räterschen, Rätikon, Rätische Alpen, Römerswil, Röschenz, Röthenbach, Rüderswil, Rüdlingen, Rüeggisberg, Rüeschegg, Rümikon, Rümlang, Rünenberg, Rüschegg, Rüschegg-Graben, Rüschlikon, Rüstenschwil, Rüthi, Rüti, Rütli, Rütti, S-chanf, S-charl, Saane, Saanen, Saanenmöser, Saas, Saas-Almagel, Saas-Balen, Saas-Fee, Saas-Grund, Saaservisp, Saastal, Saasthal, Sabbione, Sachseln, Saclens, Saclentse, Saconnex, Safenwil, Safien Platz, Safiental, Safiertal, Safierthal, Saflischmatten, Sagens, Saglia, Sagliaz, Sagogn, Saicourt, Saignelégier, Saillon, Saint Bernard, Saint Bernhardin-Pass, Saint Chalet Ã¡ Gobet, Saint Gallen, Saint German, Saint Gotthard, Saint Gotthard Pass, Saint Gotthard Tunnel, Saint Moritz, Saint Peter, Saint-Aubin, Saint-Blaise, Saint- Brais, Saint-Cergue, Saint-Gall, Saint-Germain, Saint-Gingolph, Saint-Gothard, Saint-Imier, Saint-Jean, Saint-Livres, Saint-Luc, Saint-Léonard, Saint-Martin, Saint-Martin-Chézard, Saint-Maurice, Saint-Pierre-de-Clages, Saint-Prex, Saint- Romain, Saint-Sulpice, Saint-Ursanne, Sainte-Croix, Sala, Saland, Salanfe, Salante, Salaruel Joch, Salategnas, Salez, Salgesch, Saline, Sallanche, Salmsach, Salouf, Salux, Salvan, Samaden, Sambucco, Sambuco, Sambuco di Fuori, Samedan, Samnaun, Samstagern, San Bernardino, San Bernardino Passo, San Carlo, San Gallo, San Giacomo, San Giacomo Pass, San Gions, San Giusep, San Gottardo, San Jorio, San Lorio Pass, San Nazzaro, San Salvatore, San Vittore, Sanetsch Pass, Sangernboden, Sankt Antoni, Sankt Antönien, Sankt Antönien Joch, Sankt Antönierjoch, Sankt Fiden, Sankt Gallen, Sankt Gallenkappel, Sankt German, Sankt Gotthard, Sankt Jakob, Sankt Johann, Sankt Margrethen, Sankt Martin, Sankt Moritz, Sankt Moritz-Bad, Sankt Moritz-Dorf, Sankt Murezzan, Sankt Niklaus, Sankt Peter, Sankt Petersinsel, Sankt Peterzell, Sankt Stephan, Sankt Ursen, Sant''Antonio, Santa Domenica, Santa Maria, Santa Maria in Cama, Sapinhaut, Sardasca, Sargans, Sarine, Sarmenstorf, Sarn, Sarnen, Sarneraa, Sarnersee, Sarotlaspitzen, Sasso della Paglia, SassÃ¡m, Satigny, Sattel, Sauges, Saulcy, Saurenstock, Saus Oberberg, Savagnier, Savatan, Savigny, Savièse, Savognin, Savosa Paese, Sax, Saxeten, Saxon, Scala, Scaletta Pass, Scanfs, Sceresio, Scesaplana, Schachen, Schafberg, Schaffhausen, Schaffhausen Falls, Schaffhouse, Schafisheim, Schaftelen, Schalklbach, Schams, Schamsertal, Schanfigg, Schanfigg Tal, Schangnau, Scharans, Scharmadläger, Schattdorf, Schatzalp, Scheerhorn, Scheid, Scheidegg, Schelten, Schenkon, Schergen Bach, Scherliau, Scherzingen, Scherzligen, Schesaplana, Schienerbach, Schiers, Schild, Schilthorn, Schimbergbad, Schindellegi, Schinznach, Schinznach Bad, Schinznach Dorf, Schlappiner Joch, Schlatt, Schlattingen, Schleins, Schleitheim, Schleuis, Schlieren, Schlierental, Schloss Hallwil, Schlossrued, Schlucht, Schluocht, Schmelzboden, Schmelzboden-Monstein, Schmerikon, Schmitten, Schmittner Tobel, Schnebelhorn, Schnottwil, Schofhausen, Schongau, Schons, Schrattenfluh, Schreckhorn, Schrickmatten, Schrättern, Schrättern Alpe, Schuders, Schulh, Schuls, Schwaderloch, Schwanden, Schwarzenberg, Schwarzenburg, Schwarzenegg, Schwarzenthal, Schwarzhorn, Schwarzsee, Schwarzseebad, Schwefelbergbad, Schweiz, Schweizer Mittelland, Schweizer Nationalpark, Schweizerhalle, Schweizerische Bundesbahnen, Schweizerische Eidgenossenschaft, Schweizerischer Nationalpark, Schweizerthor, Schweizertor, Schwellbrunn, Schwendi, Schwendibad, Schwendikaltbad, Schwiz, Schwyz, Schwägalp, Schwändi, Schynige Platte, Schächen, Schächental, Schächenthal, Schänis, Schärlig, Schärligbad, Schöftland, Schöllenen, Schönbühl, Schöneck, Schönegg, Schönenberg, Schönenbuch, Schönengrund, Schönenwerd, Schönholzerswilen, Schönried, Schötz, Schübelbach, Schüpbach, Schüpfen, Schüpfheim, Schürlialp, Sciaffusa, Scona, Scopi, Scuol, Sedeilles, Sedrun, Seebach, Seeberg, Seedorf, Seefeldhöhle, Seegräben, Seelisberg, Seengen, Seerücken, Seetz Valley, Seewes, Seewis, Seewis Dorf, Seewis im Oberland, Seewis im Prätigau, Seewisi Prätigau, Seez, Seez Valley, Seeztal, Seezthal, Seftigen, Segl-Maria, Segnespass, Seires, Selfranga, Selibühl, Selma, Seltisberg, Selzach, Sembrancher, Sementina, Sempach, Sempachersee, Semsales, Sengg, Sennhof, Sennwald, Sense, Sent, Seon, Septimerpass, Seraplana, Serneus, Serneus Dorf, Sernf, Sernft, Serrières, Sertig Döfli, Sessa, Seth, Seuberg, Seuzach, Sevelen, Sevgein, Sevgiein, Seyon, Siblingen, Siebnen, Siegershausen, Siernes Picats, Sierre, Siggenthal-Station, Sigirino, Siglistorf, Signalhorn, Signalkuppe, Signau, Signina, Signora, Sigriswil, Sihl, Sihlbrugg, Sihlbrugg Dorf, Sihlbrücke, Sihlsee, Silenen, Sils, Sils im Domleschg, Sils im Engadin, Sils-Maria, Silsersee, Silvapiana, Silvaplana, Silvaplanersee, Silvaplauna, Silvretta, Silvretta Hütte, Silvrettaegg, Silvrettagruppe, Silvrettahaus, Silvrettahorn, Similaun, Simme, Simpeln, Simplon Dorf, Simplon Pass, Simplon Tunnel, Simplon-Tunnel, Sins, Sion, Sirnach, Siselen, Sisikon, Sissach, Sitten, Sitter, Siviriez, Six Madun, Soazza, Sobrio, Soglio, Soja, Solduno, Soleure, Solgone, Solothurn, Someo, Somlaproz, Sommerau, Sommeri, Sommet des Diablerets, Somprai, Somvix, Somvixertal, Somvixerthal, Sonceboz, Sonogno, Sonvico, Sonvilier, Sool, Soral, Sorengo, Sorens, Soresina, Sornetan, Sornico, Sorte, Sottens, Soubey, Soussillon, South Rhatian Alps, Soyhières, Spannort, Speer, Speicher, Spiez, Spiggengrund, Spillgerten, Spinas, Spiringen, Spitelrüti, Spitzenhaus, Spitzmeilen, Spluga, Splügen, Splügen Pass, Splügen Passhöhe, Splügner Kalkberg, Sporerfurka, Sporz, Spreitenbach, Spruga, Spöl, Stabbio, Stabio, Stachelberg Bad, Stadel, Stafel, Stafel Alp, Stafelten, Stafelti, Staffelalp, Staffelbach, Stalden, Staldenried, Stalla, Stallen, Stallikon, Stammheim, Stampa, Stans, Stanserhorn, Stansstad, Starlera, Station Blausee-Mitholz, Station Convers, Station Granges-Lens, Station Siggenthal-Würenlingen, Station Sihlbrugg, Station Tiefenbrunnen, Station Weissfluhjoch, Staubbachfall, Staufen, Stausee Mattmark, Stausee Sambuco, Stausee Wohlen, Stausee Wägital, Staviala Vedra, Stazione Ambri-Piotta, Stechelberg, Steckborn, Steffisburg, Steg, Stein, Stein am Rhein, Stein-Säckingen, Steinalp, Steinen, Steinenberg, Steinerberg, Steingletscher, Steinhaus, Steinhausen, Steinibach, Sternenberg, Stettfurt, Stettlen, Stierva, Stilli, Stock, Stockhorn, Stogl, Stoos, Stoss, Strassberg, Strelapass, Strengelbach, Stuckishaus, Stugl, Stuls, Stäfa, Stärnebärg, Stätzerhorn, Stössen, Stürvis, Suberg, Subingen, Suchet, Suchy, Sufers, Sugiez, Suhr, Suhre, Suisse, Sulgen, Sulgone, Sulsana, Sulsanna, Sulsauna, Sulz, Sulzfluh, Sulzthal, Sumiswald, Sundlauenen, Suracqua, Surava, Surcuolm, Suren, Surenen Pass, Surettahorn, Surlej, Surrhin, Sursee, Susasca, Susauna, Susten, Sustenhorn, Sustenpass, Suze, Suze Rivière, Svizzera, Swiss Confederation, Swiss National Park, Swiss Plateau, Switzerland, Sâles, Säge, Säntis, Säriswil, Sécheron, Sézegnin, Sörenberg, Südern, Südrätische Alpen, Süs, Tafers, Tagliada, Tamina, Tamins, Tanay, Taney, Tann, Tannay, Tannen, Tannen Alpe, Tarasp, Tartar, Tarviersch, Tavanasa, Tavannes, Taverne, Tavetsch, Tavetschthal, Taveyannaz, Tecknau, Tegerfelden, Tegna, Tenero, Tenigerbad, Tenna, Termen, Territet, Tesserete, Tessin, Teufen, Teufental, Teufenthal, Teuffenthal, Tga, Tgantieni, Thal, Thalheim, Thalkirch, Thalwil, Thayngen, Thermen, Therwil, Thielle, Thierachern, Thierrens, Thierstein, Thièle, Thorberg, Thun, Thundorf, Thunersee, Thunstetten, Thur, Thur Fluss, Thurgovia, Thurgovie, Thusis, Thônex, Thörishaus, Ticino, Ticino River, Ticinus, Tiefen Bach, Tiefenbach, Tiefenbrunnen, Tiefencastel, Tiefer Schweb, Tierachern, Tiermatti, Tilsiterland, Tinizong, Tinizung, Tinzen, Tinzenhorn, Titlis, Titterten, Tobel, Toffen, Toggenburg, Tomils, Tornettaz, Tornette, Torre, Torrent, Torrent de Barmaz, Torrent de Barme, Torrente Spöl, Torrone Alto, Torrone d''Alto, Torrone d''Orza, Tortin, Tour Noir, Tour Saillères, Tour Sallière, Tour d''AÃ¯, Tour de Don, Tour de Treme, Trachsellauenen, Trachselwald, Traforo del Gran San Bernardo, Tramelan, Trans, Trasadingen, Travers, Travesasch, Travisasch, Treib, Tremola, Tretsch, Trey, Treyfayes, Treyvaux, Tribschen, Triengen, Trient, Trimbach, Trimmis, Trimmis Dorf, Trimstein, Trins, Trins Dorf, Trinsermühle, Trogen, Troistorrents, Trub, Trubschachen, Trun, Truns, Trélex, Trübbach, Trüllikon, Trümmelbachfälle, Tschamut, Tschappina, Tschenten, Tschiertschen, Tschingeren, Tschuggen, Tuggen, Tunnel du Grand-Saint-Bernard, Tuors Davant, Turahus, Turbental, Turbenthal, Turgi, Turtmann, Turtmann Bach, Turtmanntal, Turtmannthal, Turtmänna, Twann, Tägerwilen, Täler der Tresa, Täniken, Tänikon, Täsch, Täuffelen, Tête du Géant, Tödi, Törbel, Töss, Töss Fluss, Töss Valley, Tössegg, Tössriedern, Tösstal, Tössthal, Udligenswil, Ueberlandquart, Ueberstorf, Uerikon, Uerkheim, Uesslingen, Uetendorf, Uetikon, Uetikon am See, Uetliberg, Uettligen, Uffikon, Ufhusen, Uhwiesen, Uina Dadora, Uitikon, Uitikon am Albis, Ulrichen, Undervelier, Unter Eiger, Unter Embrach, Unter Engadin, Unter Illnau, Unter Lauchbühl, Unter Schwendimatt, Unter Siez, Unter Staffel, Unter dem Birg, Unter-Basenheid, Unter-Bazenheid, Unter-Bilten, Unter-Buch, Unter-Gomerkinden, Unter-Laret, Unter-Mutten, Unter- Schlatt, Unter-Siggental, Unter-Sohl, Unter-Stammheim, Unter-Wetzikon, Unter-Wohlen, Unteraargletscher, Unterbach, Unterbäch, Unterbächen, Unterehrendingen, Unterengstringen, Untererlinsbach, Unteres Goms, Unteriberg, Unterkulm, Unterlandquart, Unterlunkhofen, Unterschächen, Unterseen, Untersiggenthal, Unterterzen, Untervaz, Unterwalden nid dem Wald, Unterwalden ob dem Wald, Unterwasser, Unteräegeri, Unterägeri, Uors, Urbach Thal, Urbachtal, Urbachwasser, Urdorf, Urirotstock, Urmein, Urnerboden, Urnersee, Urnerstafel, Urnäsch, Ursenbach, Urserental, Ursern, Ursernthal, Urtenen, Useigne, Uster, Uttigen, Uttwil, Utzenstorf, Uznach, Uzwil, Vacallo, Vadret da Morteratsch, Vairano, Val Bavona, Val Bedretto, Val Blenio, Val Bregaglia, Val Bugnei, Val Calanca, Val Centovalli, Val Cluoza, Val Cluozza, Val Ferrera, Val Ferret, Val Ferrex, Val Lavizzara, Val Lumpegna, Val Maggia, Val Medel, Val Medels, Val Mela, Val Müstair, Val Onsernone, Val Poschiavo, Val Rusein, Val Russein, Val S-chüra, Val Saint-Imier, Val Sambuco, Val Sinestra, Val Somvix, Val Sumvitg, Val Tantermozza, Val Tavetsch, Val Tisch, Val Tremola, Val Tujetsch, Val Tuoi, Val Verda, Val Verzasca, Val d'' Anniviers, Val d'' Entremont, Val d'' Hérens, Val d'' Hérémence, Val d'' Illiez, Val d''Illiez, Val de Bagnes, Val de Derbon, Val de Ruz, Val de Saint-Imier, Val de Travers, Val di Colla, Val di Poschiavo, Val-d''Iliez, Valais Alps, Valangin, Valatscha, Valatschalp, Valbella, Valcava, Valendas, Valens, Valle Leventina, Valle Maggia, Valle Mesolcina, Valle Tresa, Valle Verzasca, Valle della Tresa, Valle di Sambucco, Vallemaggia, Vallember, Vallon de Saint-Imier, Vallorbe, Vallée Hérens, Vallée de Joux, Vals Platz, Valsainte, Valserrhein, Valtnovalp, Valzeina, VandÅ“uvres, Vanescha, Vanil Noir, Varen, Vasön, Vaud, Vauderens, Vauffelin, Vaulion, Vaulruz, Vechigen, Vedeggio, Veltheim, Vendlincourt, Vennes, Vennes-sur-Lausanne, Venoge, Venoge Rivière, Verbano, Verbier, Verbois, Vercorin, Verdabbio, Verdasio, Vergeletto, Vermala, Vermes, Vermunt Pass, Vernamiège, Vernayaz, Vernec, Vernier, Versam, Verscio, Versoix, Verzasca, Verzaska, Verzaska Valley, Vesilspitze, Vevey, Vex, Veyrier, Veysonnaz, Veytaux, Veytaux-Chillon, Vezenaz, Viamala, Viano, Vicosoprano, Vicques, Viege, Vierwaldstätter See, Viganello, Vigens, Vignogn, Villa, Villars, Villars-le-Grand, Villars-sur-Glâne, Villars-sur-Marly, Villars-sur-Ollon, Villarsel, Villarsel-le-Gibloux, Villarsiviriaux, Villarvolard, Villaz-Saint-Pierre, Ville d''Issert, Villeneuve, Villeret, Villetta, Villettaz, Villigen, Villmergen, Villnachern, Vilters, Vinzel, Vionnaz, Vira, Vira Gambarogno, Visletto, Visp, Visperterminen, Visse, Vissoie, Vissoye, Vitg Dadens, Vitg Dado, Vitznau, Volketswil, Vor Siez, Vorab, Vordemwald, Vorder Boden, Vorder Feld, Vorder Stafel, Vorder Weissenstein, Vorder Wäggithal, Vorder-Grauspitz, Vordere Töss, Vorderfultigen, Vorderrhein, Vordertal, Vorderthal, Vorfrutt, Vouvry, Vrin, Vuachère, Vuadens, Vuilly-le-Bas, Vuilly-le-Haut, Vuisternens, Vuiteboeuf, Vullierens, Vulpera, Vättis, Vélan, Vésenaz, Vétroz, Waadt, Wabern, Wachseldorn, Wagenhausen, Wagital, Wagithal, Wahlen, Wahlern, Walchwil, Wald, Waldemme, Waldenburg, Waldhaus, Waldheim, Waldkirch, Waldstatt, Walensee, Walern, Walkringen, Wallenbuch, Wallendstadt, Wallenried, Wallensee, Wallenstadt, Wallis, Wallisellen, Walliser Alpen, Waltensburg, Waltensburg Dorf, Waltenschwil, Walterswil, Waltikon, Walzenhausen, Wangen, Wangen an der Aare, Wangs, Wannehorn, Wannenhorn, Wartau, Wasen, Wassen, Wasserauen, Wasserfluh, Wasserfälle, Wasterkingen, Wattenwil, Wattwil, Wauwil, Weesen, Wegenstetten, Weggis, Weiermannshaus, Weiermoos, Weinfelden, Weiningen, Weissbad, Weissenbach, Weissenburg, Weissenstein, Weissensteinhorn, Weissfluh, Weisshorn, Weisslingen, Weissmies, Weisspitze, Weisstannen, Welschenrohr, Wengen, Wengi, Werdenberg, Werdhölzli, Wergenstein, Werkhölzli, Wernetshausen, Werthenstein, Westlich Raron, Wetterhörner, Wettingen, Wetzikon, Weyermannshaus, Wichtrach, Wiedikon, Wiedlisbach, Wiesen, Wiesendangen, Wieseneralp, Wiesner Alp, Wiggen, Wigger, Wiggeren, Wiggis, Wigoltingen, Wikon, Wil, Wila, Wilchingen, Wildberg, Wildegg, Wilderswil, Wildhaus, Wildhauser-Schafberg, Wildhuser-Schafberg, Wildpark Peter und Paul, Wildstrubel, Wiler, Wilerbad, Wileroltigen, Willigen, Willisau, Willisau Stadt, Wimmis, Windisch, Windlach, Winikon, Winkel, Winkeln, Winkeln bei Sankt Gallen, Winklen, Winterthur, Winterthur Töss, Wispile, Witikon, Wittenbach, Wittnau, Wity, Witzwil, Wohlen, Wolfenschiessen, Wolfgang, Wolfsberg, Wolfwil, Wolhusen, Wollerau, Worb, Worben, Worblaufen, Worblen, Wuppenau, Wyhlen, Wynau, Wynigen, Wyssachen, Wyte, Wyti, Wädenswil, Wäggital, Wäggitalersee, Wägithalersee, Wäldi, Wängi, Wölflinswil, Wüadingen, Wünnewil, Würenling, Würenlingen, Würenlos, Yens, Yverden, Yverdon, Yverdon-les-Bains, Yvonand, Yvorne, Zalöner Hütten, Zanders Bach, Zapporthorn, Zeglingen, Zeihen, Zelg, Zell, Zeneggen, Zermatt, Zermeiggern, Zernes, Zernez, Zervreila, Zervreila-Oberboden, Zervreila-Unterboden, Ziegelbrücke, Zignau, Zihl, Zihlkanal, Zihlschlacht, Zillis, Zimmerwald, Zinal, Zinalrothorn, Zizers, Zofingen, Zollbrück, Zollikofen, Zollikon, Zoug, Zuchwil, Zuckenriet, Zug, Zuger See, Zugerberg, Zugersee, Zulg, Zullwil, Zum Loch, Zumdorf, Zumholz, Zumikon, Zunzgen, Zuoz, Zurigo, Zurzach, Zuzgen, Zuzwil, Zweilütschinen, Zweisimmen, Zwingen, Zwischberg-Thal, Zwischbergen, Zwischbergental, Zäziwil, Zürchersmühle, Zürich, Zürichberg, Züricher See, Zürichhorn, Zürichsee, l''Aire, l''Arzo, Ägeri, Ägerisee, Ägina, Äschlenberg, Äussere Altmatt, Êpinassey, Önsingen, Öschinensee, Östlich Raron, Überstorf, Ütendorf, Üetliberg";

for (String s : all.split("\\s*,\\s*"))
{
	param.list.add(s);	
}' #txt
Ds0 f32 responseActionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f32 responseMappingAction 'out=in;
' #txt
Ds0 f32 windowConfiguration '#Thu May 21 09:35:42 CEST 2009
use_default=true
' #txt
Ds0 f32 isAsynch true #txt
Ds0 f32 isInnerRd true #txt
Ds0 f32 isDialog false #txt
Ds0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ListSearch</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f32 758 300 36 24 5 19 #rect
Ds0 f32 @|RichDialogIcon #fIcon
Ds0 f33 expr in #txt
Ds0 f33 outCond 'in.selectedDemo.richDialogId == "ch.ivyteam.ivy.demo.search.ListSearch"' #txt
Ds0 f33 776 238 776 300 #arcP
Ds0 f33 0 0.557912253607124 0 0 #arcLabel
Ds0 f35 guid 121621B398ECC5DF #txt
Ds0 f35 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f35 actionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f35 actionTable 'out=in;
' #txt
Ds0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>finishDemo</name>
        <nameStyle>10,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f35 766 30 20 20 13 0 #rect
Ds0 f35 @|RichDialogProcessStartIcon #fIcon
Ds0 f36 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f36 763 115 26 26 14 0 #rect
Ds0 f36 @|RichDialogProcessEndIcon #fIcon
Ds0 f38 guid 12162242F49AD682 #txt
Ds0 f38 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f38 actionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f38 actionTable 'out=in;
' #txt
Ds0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>finishApplication</name>
        <nameStyle>17,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f38 38 174 20 20 13 0 #rect
Ds0 f38 @|RichDialogProcessStartIcon #fIcon
Ds0 f39 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f39 guid 1216224563F79739 #txt
Ds0 f39 35 235 26 26 14 0 #rect
Ds0 f39 @|RichDialogEndIcon #fIcon
Ds0 f40 expr out #txt
Ds0 f40 48 194 48 235 #arcP
Ds0 f41 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f41 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>already loaded?</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f41 458 138 28 28 14 -21 #rect
Ds0 f41 @|AlternativeIcon #fIcon
Ds0 f42 expr in #txt
Ds0 f42 outCond 'in.#selectedDemo is initialized' #txt
Ds0 f42 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f42 446 96 472 138 #arcP
Ds0 f42 1 472 96 #addKink
Ds0 f42 1 0.21428571428571427 14 0 #arcLabel
Ds0 f44 actionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f44 actionTable 'out=in;
' #txt
Ds0 f44 actionCode 'import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import com.ulcjava.base.application.ULCComponent;

String toSelect = in.selectedDemo.richDialogId;
for (IRichDialogPanel p : panel.demoRunnerDisplay.getPanels())
{
	if (panel.getRichDialogIdFromPanel(p) == toSelect)
	{
		panel.demoRunnerDisplay.setSelectedComponent(p as ULCComponent);
		break;
	}
}' #txt
Ds0 f44 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f44 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>bring
forward</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f44 414 236 36 24 5 16 #rect
Ds0 f44 @|RichDialogProcessStepIcon #fIcon
Ds0 f43 expr out #txt
Ds0 f43 432 260 432 355 #arcP
Ds0 f46 actionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f46 actionTable 'out=in;
' #txt
Ds0 f46 actionCode '// add "loaded" mark
out.loadedDemos.add(in.selectedDemo.richDialogId);
' #txt
Ds0 f46 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f46 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>mark loaded</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f46 478 356 36 24 -33 21 #rect
Ds0 f46 @|RichDialogProcessStepIcon #fIcon
Ds0 f47 expr out #txt
Ds0 f47 776 324 514 368 #arcP
Ds0 f47 1 776 368 #addKink
Ds0 f47 1 0.3952333288402513 0 0 #arcLabel
Ds0 f34 actionDecl 'ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData out;
' #txt
Ds0 f34 actionTable 'out=in;
' #txt
Ds0 f34 actionCode 'import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;

IRichDialogPanel p = panel.demoRunnerDisplay.getSelectedPanel();
if (#p is initialized)
{
	// FIXME: THIS IS NOT PUBLIC API!
	// use something like display.unload(panel) or ivy.rd.unload(panel) instead
	p.getPanelAPI().unload();
	
	// delete "loaded" mark
	out.loadedDemos.remove(panel.getRichDialogIdFromPanel(p));
}' #txt
Ds0 f34 type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
Ds0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>unload 
mark unloaded</name>
        <nameStyle>21,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f34 758 68 36 24 25 -15 #rect
Ds0 f34 @|RichDialogProcessStepIcon #fIcon
Ds0 f48 expr out #txt
Ds0 f48 776 50 776 68 #arcP
Ds0 f37 expr out #txt
Ds0 f37 776 92 776 115 #arcP
Ds0 f45 expr in #txt
Ds0 f45 outCond in.loadedDemos.contains(in.selectedDemo.richDialogId) #txt
Ds0 f45 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f45 463 157 432 236 #arcP
Ds0 f45 1 432 176 #addKink
Ds0 f45 0 0.7518910741301059 5 10 #arcLabel
Ds0 f23 expr in #txt
Ds0 f23 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f23 483 156 544 210 #arcP
Ds0 f23 1 544 176 #addKink
Ds0 f23 0 0.5066731375879641 -2 9 #arcLabel
Ds0 f49 expr out #txt
Ds0 f49 680 324 514 368 #arcP
Ds0 f49 1 680 368 #addKink
Ds0 f49 1 0.4564580840574513 0 0 #arcLabel
Ds0 f31 expr out #txt
Ds0 f31 544 324 514 368 #arcP
Ds0 f31 1 544 368 #addKink
Ds0 f31 0 0.30382127106782203 0 0 #arcLabel
Ds0 f8 expr out #txt
Ds0 f8 478 368 445 368 #arcP
Ds0 f8 0 0.4993959553021845 0 0 #arcLabel
Ds0 f50 expr out #txt
Ds0 f50 48 100 292 308 #arcP
Ds0 f50 1 48 128 #addKink
Ds0 f50 2 224 128 #addKink
Ds0 f50 1 0.5413474046972035 0 0 #arcLabel
>Proto Ds0 .ui2RdDataAction 'out.selectedDemo=panel.demoList.#selectedListEntry as ch.ivyteam.ivy.demo.runner.Demo;
' #txt
>Proto Ds0 .rdData2UIAction 'panel.demoList.listData=in.demos;
' #txt
>Proto Ds0 .type ch.ivyteam.ivy.demo.runner.DemoRunner.DemoRunnerData #txt
>Proto Ds0 .processKind RICH_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f0 mainOut f4 tail #connect
Ds0 f4 head f3 mainIn #connect
Ds0 f13 mainOut f10 tail #connect
Ds0 f10 head f9 mainIn #connect
Ds0 f17 head f16 mainIn #connect
Ds0 f16 mainOut f15 tail #connect
Ds0 f15 head f9 mainIn #connect
Ds0 f6 mainOut f12 tail #connect
Ds0 f12 head f11 in #connect
Ds0 f11 out f19 tail #connect
Ds0 f19 head f18 in #connect
Ds0 f11 out f17 tail #connect
Ds0 f18 out f20 tail #connect
Ds0 f20 head f9 mainIn #connect
Ds0 f18 out f14 tail #connect
Ds0 f14 head f13 mainIn #connect
Ds0 f5 mainOut f24 tail #connect
Ds0 f24 head f21 in #connect
Ds0 f25 head f7 mainIn #connect
Ds0 f22 out f27 tail #connect
Ds0 f27 head f26 in #connect
Ds0 f22 out f28 tail #connect
Ds0 f28 head f2 mainIn #connect
Ds0 f26 out f30 tail #connect
Ds0 f30 head f29 mainIn #connect
Ds0 f26 out f33 tail #connect
Ds0 f33 head f32 mainIn #connect
Ds0 f38 mainOut f40 tail #connect
Ds0 f40 head f39 mainIn #connect
Ds0 f21 out f42 tail #connect
Ds0 f42 head f41 in #connect
Ds0 f21 out f25 tail #connect
Ds0 f44 mainOut f43 tail #connect
Ds0 f43 head f7 mainIn #connect
Ds0 f32 mainOut f47 tail #connect
Ds0 f47 head f46 mainIn #connect
Ds0 f35 mainOut f48 tail #connect
Ds0 f48 head f34 mainIn #connect
Ds0 f34 mainOut f37 tail #connect
Ds0 f37 head f36 mainIn #connect
Ds0 f41 out f45 tail #connect
Ds0 f45 head f44 mainIn #connect
Ds0 f41 out f23 tail #connect
Ds0 f23 head f22 in #connect
Ds0 f29 mainOut f49 tail #connect
Ds0 f49 head f46 mainIn #connect
Ds0 f2 mainOut f31 tail #connect
Ds0 f31 head f46 mainIn #connect
Ds0 f46 mainOut f8 tail #connect
Ds0 f8 head f7 mainIn #connect
Ds0 f3 mainOut f50 tail #connect
Ds0 f50 head f16 mainIn #connect
