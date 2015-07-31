[Ivy]
[>Created: Tue Jul 28 09:41:42 CEST 2015]
14ECFC90CDE278D0 3.17 #module
>Proto >Proto Collection #zClass
or0 order Big #zClass
or0 B #cInfo
or0 #process
Ct0 Component Big #zClass
Ct0 B #cInfo
Ct1 Component Big #zClass
Ct1 B #cInfo
or0 @TextInP .resExport .resExport #zField
or0 @TextInP .type .type #zField
or0 @TextInP .processKind .processKind #zField
or0 @AnnotationInP-0n ai ai #zField
or0 @MessageFlowInP-0n messageIn messageIn #zField
or0 @MessageFlowOutP-0n messageOut messageOut #zField
or0 @TextInP .xml .xml #zField
or0 @TextInP .responsibility .responsibility #zField
or0 @StartRequest f0 '' #zField
or0 @EndTask f1 '' #zField
or0 @RichDialog f3 '' #zField
or0 @PushWFArc f4 '' #zField
or0 Ct0 S10 'Sub 1' #zField
or0 @PushWFArc f5 '' #zField
or0 @ErrorBoundaryEvent Et1 ErrorBoundaryEvent #zField
or0 Ct1 S20 'Sub 2' #zField
or0 @PushWFArc f12 '' #zField
or0 @PushWFArc f13 '' #zField
or0 @RichDialog f2 '' #zField
or0 @PushWFArc f6 '' #zField
or0 @PushWFArc f7 '' #zField
>Proto or0 or0 order #zField
Ct0 @TextInP .resExport .resExport #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @MessageFlowInP-0n messageIn messageIn #zField
Ct0 @MessageFlowOutP-0n messageOut messageOut #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @PushTrueWFInG-01 g0 '' #zField
Ct0 @PushTrueWFOutG-01 g1 '' #zField
Ct0 @PushTrueWFInG-01 g2 '' #zField
Ct0 @DBStep f1 '' #zField
Ct0 @PushWFArc f2 '' #zField
Ct0 @Alternative f3 '' #zField
Ct0 @PushWFArc f4 '' #zField
Ct0 @ErrorEnd f5 '' #zField
Ct0 @PushWFArc f6 '' #zField
Ct0 @PushWFArc f7 '' #zField
Ct0 @DBStep f8 '' #zField
Ct0 @PushWFArc f9 '' #zField
Ct0 @PushWFArc f0 '' #zField
>Proto Ct0 Ct0 Component #zField
Ct1 @TextInP .resExport .resExport #zField
Ct1 @TextInP .type .type #zField
Ct1 @TextInP .processKind .processKind #zField
Ct1 @AnnotationInP-0n ai ai #zField
Ct1 @MessageFlowInP-0n messageIn messageIn #zField
Ct1 @MessageFlowOutP-0n messageOut messageOut #zField
Ct1 @TextInP .xml .xml #zField
Ct1 @TextInP .responsibility .responsibility #zField
Ct1 @PushTrueWFInG-01 g0 '' #zField
Ct1 @PushTrueWFOutG-01 g1 '' #zField
Ct1 @DBStep f1 '' #zField
Ct1 @PushWFArc f0 '' #zField
Ct1 @DBStep f3 '' #zField
Ct1 @PushWFArc f4 '' #zField
Ct1 @PushWFArc f2 '' #zField
>Proto Ct1 Ct1 Component #zField
or0 f0 outLink start.ivp #txt
or0 f0 type error.handling.demo.Data #txt
or0 f0 inParamDecl '<> param;' #txt
or0 f0 actionDecl 'error.handling.demo.Data out;
' #txt
or0 f0 guid 14ECFC90D00F051F #txt
or0 f0 requestEnabled true #txt
or0 f0 triggerEnabled false #txt
or0 f0 callSignature start() #txt
or0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
or0 f0 @C|.responsibility Everybody #txt
or0 f0 81 49 30 30 -21 17 #rect
or0 f0 @|StartRequestIcon #fIcon
or0 f1 type error.handling.demo.Data #txt
or0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Success</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f1 705 49 30 30 -24 17 #rect
or0 f1 @|EndIcon #fIcon
or0 f3 targetWindow NEW:card: #txt
or0 f3 targetDisplay TOP #txt
or0 f3 richDialogId error.handling.demo.RegisterOrder #txt
or0 f3 startMethod start() #txt
or0 f3 type error.handling.demo.Data #txt
or0 f3 requestActionDecl '<> param;' #txt
or0 f3 responseActionDecl 'error.handling.demo.Data out;
' #txt
or0 f3 responseMappingAction 'out.order=result.order;
' #txt
or0 f3 windowConfiguration '* ' #txt
or0 f3 isAsynch false #txt
or0 f3 isInnerRd false #txt
or0 f3 userContext '* ' #txt
or0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Register Order</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f3 168 42 112 44 -40 -8 #rect
or0 f3 @|RichDialogIcon #fIcon
or0 f4 expr out #txt
or0 f4 111 64 168 64 #arcP
or0 S10 .resExport export #txt
or0 S10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>Process Order</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 S10 368 42 112 44 -40 -8 #rect
or0 S10 @|BIcon #fIcon
or0 f5 expr out #txt
or0 f5 280 64 368 64 #arcP
or0 Et1 actionDecl 'error.handling.demo.Data out;
' #txt
or0 Et1 actionTable 'out=in;
' #txt
or0 Et1 errorCode 'Out Of Stock' #txt
or0 Et1 attachedToRef 14ECFC90CDE278D0-S10 #txt
or0 Et1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Out Of Stock</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 Et1 449 81 30 30 4 16 #rect
or0 Et1 @|ErrorBoundaryEventIcon #fIcon
or0 S20 .resExport export #txt
or0 S20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>Produce Items</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 S20 304 154 112 44 -40 -8 #rect
or0 S20 @|BIcon #fIcon
or0 f12 464 111 416 176 #arcP
or0 f12 1 464 176 #addKink
or0 f12 1 0.15358058514675796 0 0 #arcLabel
or0 f13 304 176 368 82 #arcP
or0 f13 1 272 176 #addKink
or0 f13 2 272 112 #addKink
or0 f13 1 0.46732733909580015 0 0 #arcLabel
or0 f2 targetWindow NEW:card: #txt
or0 f2 targetDisplay TOP #txt
or0 f2 richDialogId error.handling.demo.OrderShipped #txt
or0 f2 startMethod start(error.handling.demo.Order) #txt
or0 f2 type error.handling.demo.Data #txt
or0 f2 requestActionDecl '<error.handling.demo.Order order> param;' #txt
or0 f2 requestMappingAction 'param.order=in.order;
' #txt
or0 f2 responseActionDecl 'error.handling.demo.Data out;
' #txt
or0 f2 windowConfiguration '* ' #txt
or0 f2 isAsynch false #txt
or0 f2 isInnerRd false #txt
or0 f2 userContext '* ' #txt
or0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Order was shipped</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f2 544 42 112 44 -52 -8 #rect
or0 f2 @|RichDialogIcon #fIcon
or0 f6 480 64 544 64 #arcP
or0 f7 expr out #txt
or0 f7 656 64 705 64 #arcP
>Proto or0 .type error.handling.demo.Data #txt
>Proto or0 .processKind NORMAL #txt
>Proto or0 0 0 32 24 18 0 #rect
>Proto or0 @|BIcon #fIcon
Ct0 g0 51 243 26 26 0 5 #rect
Ct0 g0 @|MIGIcon #fIcon
Ct0 g1 603 243 26 26 0 5 #rect
Ct0 g1 @|MOGIcon #fIcon
Ct0 g2 51 347 26 26 0 5 #rect
Ct0 g2 @|MIGIcon #fIcon
Ct0 f1 actionDecl 'error.handling.demo.Data out;
' #txt
Ct0 f1 actionTable 'out=in;
out.availableItems=record.getField("NUMBEROFITEMS").toNumber();
' #txt
Ct0 f1 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE SELECT SYSTEM  ""sqlStatements.dtd"">
<SELECT><Column name=''NUMBEROFITEMS''/><Table name=''STOCK''/><Condition><Relation kind=''=''><Column name=''PRODUCT''/><AnyExpression>in.order.product</AnyExpression></Relation></Condition></SELECT>' #txt
Ct0 f1 dbUrl stock #txt
Ct0 f1 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
Ct0 f1 dbWizard PRODUCT=in.order.product #txt
Ct0 f1 lotSize 1 #txt
Ct0 f1 startIdx 0 #txt
Ct0 f1 type error.handling.demo.Data #txt
Ct0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Read available items</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f1 120 234 128 44 -58 -8 #rect
Ct0 f1 @|DBStepIcon #fIcon
Ct0 f2 77 256 120 256 #arcP
Ct0 f3 type error.handling.demo.Data #txt
Ct0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Enough items in stock?</name>
        <nameStyle>22,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f3 304 240 32 32 -60 -34 #rect
Ct0 f3 @|AlternativeIcon #fIcon
Ct0 f4 expr out #txt
Ct0 f4 248 256 304 256 #arcP
Ct0 f5 errorCode 'Out Of Stock' #txt
Ct0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Out Of Stock</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f5 369 337 30 30 -33 17 #rect
Ct0 f5 @|ErrorEndIcon #fIcon
Ct0 f6 expr in #txt
Ct0 f6 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no
</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f6 320 272 369 352 #arcP
Ct0 f6 1 320 352 #addKink
Ct0 f6 1 0.27324891912789034 0 0 #arcLabel
Ct0 f7 73 351 184 278 #arcP
Ct0 f8 actionDecl 'error.handling.demo.Data out;
' #txt
Ct0 f8 actionTable 'out=in;
' #txt
Ct0 f8 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE UPDATE SYSTEM  ""sqlStatements.dtd"">
<UPDATE><Table name=''STOCK''/><Value column=''NUMBEROFITEMS''><AnyExpression>in.availableItems-in.order.numberOfItems</AnyExpression></Value><Condition><Relation kind=''=''><Column name=''product''/><AnyExpression>in.order.product</AnyExpression></Relation></Condition></UPDATE>' #txt
Ct0 f8 dbUrl stock #txt
Ct0 f8 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
Ct0 f8 dbWizard product=in.order.product #txt
Ct0 f8 lotSize 2147483647 #txt
Ct0 f8 startIdx 0 #txt
Ct0 f8 type error.handling.demo.Data #txt
Ct0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Update available items</name>
        <nameStyle>22,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f8 416 234 144 44 -63 -8 #rect
Ct0 f8 @|DBStepIcon #fIcon
Ct0 f9 expr in #txt
Ct0 f9 outCond 'in.availableItems >= in.order.numberOfItems' #txt
Ct0 f9 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f9 336 256 416 256 #arcP
Ct0 f9 0 0.375 0 -7 #arcLabel
Ct0 f0 expr out #txt
Ct0 f0 560 256 603 256 #arcP
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ct1 g0 19 243 26 26 0 5 #rect
Ct1 g0 @|MIGIcon #fIcon
Ct1 g1 563 243 26 26 0 5 #rect
Ct1 g1 @|MOGIcon #fIcon
Ct1 f1 actionDecl 'error.handling.demo.Data out;
' #txt
Ct1 f1 actionTable 'out=in;
' #txt
Ct1 f1 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE UPDATE SYSTEM  ""sqlStatements.dtd"">
<UPDATE><Table name=''STOCK''/><Value column=''NUMBEROFITEMS''><AnyExpression>in.availableItems+in.order.numberOfItems*2</AnyExpression></Value><Condition><Relation kind=''=''><Column name=''PRODUCT''/><AnyExpression>in.order.product</AnyExpression></Relation></Condition></UPDATE>' #txt
Ct1 f1 dbUrl stock #txt
Ct1 f1 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
Ct1 f1 dbWizard PRODUCT=in.order.product #txt
Ct1 f1 lotSize 2147483647 #txt
Ct1 f1 startIdx 0 #txt
Ct1 f1 type error.handling.demo.Data #txt
Ct1 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add items to stock</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct1 f1 376 234 112 44 -50 -8 #rect
Ct1 f1 @|DBStepIcon #fIcon
Ct1 f0 expr out #txt
Ct1 f0 488 256 563 256 #arcP
Ct1 f3 actionDecl 'error.handling.demo.Data out;
' #txt
Ct1 f3 actionTable 'out=in;
out.availableItems=record.getField("NUMBEROFITEMS").toNumber();
' #txt
Ct1 f3 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE SELECT SYSTEM  ""sqlStatements.dtd"">
<SELECT><Column name=''NUMBEROFITEMS''/><Table name=''STOCK''/><Condition><Relation kind=''=''><Column name=''PRODUCT''/><AnyExpression>in.order.product</AnyExpression></Relation></Condition></SELECT>' #txt
Ct1 f3 dbUrl stock #txt
Ct1 f3 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
Ct1 f3 dbWizard PRODUCT=in.order.product #txt
Ct1 f3 lotSize 2147483647 #txt
Ct1 f3 startIdx 0 #txt
Ct1 f3 type error.handling.demo.Data #txt
Ct1 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Read available items</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct1 f3 128 234 128 44 -58 -8 #rect
Ct1 f3 @|DBStepIcon #fIcon
Ct1 f4 45 256 128 256 #arcP
Ct1 f2 expr out #txt
Ct1 f2 256 256 376 256 #arcP
>Proto Ct1 0 0 32 24 18 0 #rect
>Proto Ct1 @|BIcon #fIcon
or0 f0 mainOut f4 tail #connect
or0 f4 head f3 mainIn #connect
or0 f3 mainOut f5 tail #connect
or0 f5 head S10 g0 #connect
or0 Et1 mainOut f12 tail #connect
or0 f12 head S20 g0 #connect
or0 S20 g1 f13 tail #connect
or0 f13 head S10 g2 #connect
or0 S10 g1 f6 tail #connect
or0 f6 head f2 mainIn #connect
or0 f2 mainOut f7 tail #connect
or0 f7 head f1 mainIn #connect
Ct0 g0 m f2 tail #connect
Ct0 f2 head f1 mainIn #connect
Ct0 f1 mainOut f4 tail #connect
Ct0 f4 head f3 in #connect
Ct0 f6 head f5 mainIn #connect
Ct0 g2 m f7 tail #connect
Ct0 f7 head f1 mainIn #connect
Ct0 f3 out f9 tail #connect
Ct0 f9 head f8 mainIn #connect
Ct0 f3 out f6 tail #connect
Ct0 f8 mainOut f0 tail #connect
Ct0 f0 head g1 m #connect
Ct0 0 0 640 512 0 #ivRect
Ct1 f1 mainOut f0 tail #connect
Ct1 f0 head g1 m #connect
Ct1 g0 m f4 tail #connect
Ct1 f4 head f3 mainIn #connect
Ct1 f3 mainOut f2 tail #connect
Ct1 f2 head f1 mainIn #connect
Ct1 0 0 640 512 0 #ivRect
