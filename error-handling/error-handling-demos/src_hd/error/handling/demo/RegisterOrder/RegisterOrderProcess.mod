[Ivy]
14ECFEF3BADB5A9E 9.4.3 #module
>Proto >Proto Collection #zClass
Rs0 RegisterOrderProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .colors .colors #zField
Rs0 @TextInP color color #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @MessageFlowInP-0n messageIn messageIn #zField
Rs0 @MessageFlowOutP-0n messageOut messageOut #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @UdInit f0 '' #zField
Rs0 @UdProcessEnd f1 '' #zField
Rs0 @UdEvent f3 '' #zField
Rs0 @UdExitEnd f4 '' #zField
Rs0 @PushWFArc f5 '' #zField
Rs0 @DBStep f6 '' #zField
Rs0 @PushWFArc f7 '' #zField
Rs0 @PushWFArc f2 '' #zField
>Proto Rs0 Rs0 RegisterOrderProcess #zField
Rs0 f0 guid 14ECFEF3BCE67A37 #txt
Rs0 f0 method start() #txt
Rs0 f0 inParameterDecl '<> param;' #txt
Rs0 f0 inParameterMapAction 'out.order.numberOfItems=1;
' #txt
Rs0 f0 outParameterDecl '<error.handling.demo.Order order> result;' #txt
Rs0 f0 outParameterMapAction 'result.order=in.order;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Rs0 f0 83 51 26 26 -16 15 #rect
Rs0 f1 339 51 26 26 0 12 #rect
Rs0 f3 guid 14ECFEF3BE4B400F #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Rs0 f3 83 147 26 26 -15 12 #rect
Rs0 f4 211 147 26 26 0 12 #rect
Rs0 f5 expr out #txt
Rs0 f5 109 160 211 160 #arcP
Rs0 f6 actionDecl 'error.handling.demo.RegisterOrder.RegisterOrderData out;
' #txt
Rs0 f6 actionTable 'out=in;
' #txt
Rs0 f6 actionCode 'import error.handling.demo.StockItem;
for (Record record : recordset.getRecords())
{
	StockItem item;
	item.product = record.getField("Product").toString();
	item.numberInStock = record.getField("NumberOfItems").toNumber();
	in.productsInStock.add(item);
}
' #txt
Rs0 f6 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE SELECT SYSTEM  ""sqlStatements.dtd"">
<SELECT><Table name=''STOCK''/></SELECT>' #txt
Rs0 f6 dbUrl stock #txt
Rs0 f6 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
Rs0 f6 lotSize 2147483647 #txt
Rs0 f6 startIdx 0 #txt
Rs0 f6 type error.handling.demo.RegisterOrder.RegisterOrderData #txt
Rs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Read available products</name>
    </language>
</elementInfo>
' #txt
Rs0 f6 152 42 144 44 -66 -8 #rect
Rs0 f7 expr out #txt
Rs0 f7 109 64 152 64 #arcP
Rs0 f2 expr out #txt
Rs0 f2 296 64 339 64 #arcP
>Proto Rs0 .type error.handling.demo.RegisterOrder.RegisterOrderData #txt
>Proto Rs0 .processKind HTML_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
Rs0 f3 mainOut f5 tail #connect
Rs0 f5 head f4 mainIn #connect
Rs0 f0 mainOut f7 tail #connect
Rs0 f7 head f6 mainIn #connect
Rs0 f6 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
