[Ivy]
13FE10F004F193D4 3.28 #module
>Proto >Proto Collection #zClass
Ts0 TaskDetailsProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ct0 Component Big #zClass
Ct0 B #cInfo
Ts0 Ct0 S10 'Sub 1' #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @UdInit f0 '' #zField
Ts0 @UdProcessEnd f1 '' #zField
Ts0 @GridStep f3 '' #zField
Ts0 @UdProcessEnd f20 '' #zField
Ts0 @GridStep f14 '' #zField
Ts0 @PushWFArc f18 '' #zField
Ts0 @UdMethod f26 '' #zField
Ts0 @UdEvent f2 '' #zField
Ts0 @GridStep f10 '' #zField
Ts0 @PushWFArc f12 '' #zField
Ts0 @GridStep f23 '' #zField
Ts0 @PushWFArc f27 '' #zField
Ts0 @UdEvent f13 '' #zField
Ts0 @GridStep f15 '' #zField
Ts0 @PushWFArc f16 '' #zField
Ts0 @PushWFArc f25 '' #zField
Ts0 @UdEvent f24 '' #zField
Ts0 @GridStep f29 '' #zField
Ts0 @PushWFArc f30 '' #zField
Ts0 @UdEvent f34 '' #zField
Ts0 @GridStep f35 '' #zField
Ts0 @PushWFArc f36 '' #zField
Ts0 @UdEvent f28 '' #zField
Ts0 @GridStep f39 '' #zField
Ts0 @PushWFArc f40 '' #zField
Ts0 @UdEvent f38 '' #zField
Ts0 @UdEvent f47 '' #zField
Ts0 @PushWFArc f46 '' #zField
Ts0 @UdEvent f45 '' #zField
Ts0 @GridStep f49 '' #zField
Ts0 @PushWFArc f51 '' #zField
Ts0 @PushWFArc f52 '' #zField
Ts0 @UdProcessEnd f4 '' #zField
Ts0 @PushWFArc f5 '' #zField
Ts0 @UdProcessEnd f6 '' #zField
Ts0 @UdProcessEnd f7 '' #zField
Ts0 @UdProcessEnd f8 '' #zField
Ts0 @UdProcessEnd f11 '' #zField
Ts0 @UdProcessEnd f22 '' #zField
Ts0 @UdProcessEnd f32 '' #zField
Ts0 @PushWFArc f33 '' #zField
Ts0 @PushWFArc f43 '' #zField
Ts0 @PushWFArc f41 '' #zField
Ts0 @PushWFArc f37 '' #zField
Ts0 @PushWFArc f21 '' #zField
Ts0 @GridStep f9 '' #zField
Ts0 @PushWFArc f31 '' #zField
Ts0 @PushWFArc f48 '' #zField
Ts0 @Alternative f50 '' #zField
Ts0 @PushWFArc f53 '' #zField
Ts0 @PushWFArc f44 '' #zField
Ts0 @PushWFArc f54 '' #zField
Ts0 @GridStep f55 '' #zField
Ts0 @PushWFArc f56 '' #zField
Ts0 @UdEvent f57 '' #zField
Ts0 @PushWFArc f58 '' #zField
Ts0 @GridStep f17 '' #zField
Ts0 @PushWFArc f19 '' #zField
Ts0 @PushWFArc f42 '' #zField
>Proto Ts0 Ts0 TaskDetailsProcess #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @MessageFlowInP-0n messageIn messageIn #zField
Ct0 @MessageFlowOutP-0n messageOut messageOut #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @GridStep f4 '' #zField
Ct0 @PushWFArc f6 '' #zField
Ct0 @PushWFArc f33 '' #zField
Ct0 @GridStep f5 '' #zField
Ct0 @GridStep f22 '' #zField
Ct0 @PushWFArc f44 '' #zField
Ct0 @PushWFArc f8 '' #zField
Ct0 @GridStep f7 '' #zField
Ct0 @GridStep f32 '' #zField
Ct0 @PushTrueWFInG-01 g0 '' #zField
Ct0 @PushTrueWFOutG-01 g1 '' #zField
Ct0 @GridStep f2 '' #zField
Ct0 @Alternative f3 '' #zField
Ct0 @PushWFArc f9 '' #zField
Ct0 @PushWFArc f0 '' #zField
Ct0 @PushWFArc f10 '' #zField
Ct0 @Alternative f11 '' #zField
Ct0 @PushWFArc f12 '' #zField
Ct0 @PushWFArc f1 '' #zField
Ct0 @PushWFArc f13 '' #zField
>Proto Ct0 Ct0 Component #zField
Ts0 S10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>update</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 S10 168 138 112 44 -19 -8 #rect
Ts0 S10 @|BIcon #fIcon
Ts0 S10 -1|-1|-9671572 #nodeStyle
Ts0 f0 guid 13FE10F005F6798D #txt
Ts0 f0 method start(Number,Boolean) #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number taskId,java.lang.Boolean isHistory> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inParameterMapAction 'out.isHistory=param.isHistory;
out.taskId=param.taskId;
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Number,Boolean)</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 83 51 26 26 -63 15 #rect
Ts0 f0 @|UdInitIcon #fIcon
Ts0 f0 -1|-1|-9671572 #nodeStyle
Ts0 f1 819 51 26 26 0 12 #rect
Ts0 f1 @|UdProcessEndIcon #fIcon
Ts0 f1 -1|-1|-9671572 #nodeStyle
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 actionCode 'import ch.ivyteam.logicalexpression.RelationalOperator;
import java.util.EnumSet;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;

out.task = null;

if(new ch.ivyteam.wf.admin.AdminBean().isWorkflowAdmin())
{
	out.task = ivy.wf.findTask(in.taskId);
}
else
{
	IPropertyFilter taskFilter = ivy.wf.createTaskPropertyFilter(TaskProperty.ID, RelationalOperator.EQUAL, in.taskId);
	
	if(in.isHistory)
	{
		IQueryResult queryResult = ivy.session.findWorkedOnTasks(taskFilter,
			PropertyOrder.create(TaskProperty.ID, OrderDirection.DESCENDING),0, 1 ,true);
	  if(queryResult.getAllCount() != 0)
		{
			out.task = queryResult.get(0) as ITask;
		}
	}
	
	if(out.task == null)
	{
		IQueryResult queryResult  = ivy.session.findWorkTasks(taskFilter, PropertyOrder.create(TaskProperty.ID, OrderDirection.DESCENDING), 
	  	0, 1, true, EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED));
	  if(queryResult.getAllCount() != 0)
		{
			out.task = queryResult.get(0) as ITask;
		}
	}
}' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get task</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 328 42 112 44 -21 -8 #rect
Ts0 f3 @|StepIcon #fIcon
Ts0 f3 -1|-1|-9671572 #nodeStyle
Ts0 f20 339 211 26 26 0 12 #rect
Ts0 f20 @|UdProcessEndIcon #fIcon
Ts0 f20 -1|-1|-9671572 #nodeStyle
Ts0 f14 actionTable 'out=in;
' #txt
Ts0 f14 actionCode 'if(in.noteFor == "task")
{
	in.task.deleteNote(in.note);
}
else
{
	in.task.getCase().deleteNote(in.note);
}

in.noteFor = "case";
' #txt
Ts0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete note</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f14 168 202 112 44 -30 -8 #rect
Ts0 f14 @|StepIcon #fIcon
Ts0 f14 -1|-1|-9671572 #nodeStyle
Ts0 f18 expr out #txt
Ts0 f18 280 224 339 224 #arcP
Ts0 f26 guid 13FEB4CFA465F013 #txt
Ts0 f26 method update() #txt
Ts0 f26 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f26 outParameterDecl '<> result;
' #txt
Ts0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ts0 f26 83 147 26 26 -23 12 #rect
Ts0 f26 @|UdMethodIcon #fIcon
Ts0 f26 -1|-1|-9671572 #nodeStyle
Ts0 f2 guid 13FF06C460193848 #txt
Ts0 f2 actionTable 'out=in;
' #txt
Ts0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNote</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f2 83 275 26 26 -23 12 #rect
Ts0 f2 @|UdEventIcon #fIcon
Ts0 f2 -1|-1|-9671572 #nodeStyle
Ts0 f10 actionTable 'out=in;
' #txt
Ts0 f10 actionCode 'if(in.noteDescription.trim().length()>0)
{
	if(in.noteFor.equals("task"))
	{
		in.task.createNote(ivy.session, in.noteDescription);
	}
	else
	{
		in.task.getCase().createNote(ivy.session, in.noteDescription);
	}
}

in.noteFor = "case";' #txt
Ts0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add note</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f10 168 266 112 44 -24 -8 #rect
Ts0 f10 @|StepIcon #fIcon
Ts0 f10 -1|-1|-9671572 #nodeStyle
Ts0 f12 expr out #txt
Ts0 f12 109 288 168 288 #arcP
Ts0 f12 0 0.6361117241425837 0 0 #arcLabel
Ts0 f23 actionTable 'out=in;
out.isDelegateToRole=false;
out.noteFor="case";
out.showNoteSelection=true;
' #txt
Ts0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enable note option</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f23 168 42 112 44 -51 -8 #rect
Ts0 f23 @|StepIcon #fIcon
Ts0 f23 -1|-1|-9671572 #nodeStyle
Ts0 f27 expr out #txt
Ts0 f27 109 64 168 64 #arcP
Ts0 f13 guid 13FF1DD416B328FA #txt
Ts0 f13 actionTable 'out=in;
' #txt
Ts0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>changeExpiry</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f13 83 531 26 26 -36 12 #rect
Ts0 f13 @|UdEventIcon #fIcon
Ts0 f13 -1|-1|-9671572 #nodeStyle
Ts0 f15 actionTable 'out=in;
' #txt
Ts0 f15 actionCode 'if(in.expiryDate.toNumber() > 0)
{
	DateTime expiry = new DateTime(in.expiryDate.getYear(), in.expiryDate.getMonth(), in.expiryDate.getDay(), 
		in.expiryTime.getHours(), in.expiryTime.getMinutes(), 0);
	
	if(out.task.getExpiryActivator() == null && !(out.task.getExpiryTimestamp() is initialized))
	{
		out.task.setExpiryActivator(out.task.getActivator());
	}	
	
	out.task.setExpiryTimestamp(expiry);
}' #txt
Ts0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>change expiry</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f15 168 458 112 44 -37 -8 #rect
Ts0 f15 @|StepIcon #fIcon
Ts0 f15 -1|-1|-9671572 #nodeStyle
Ts0 f16 expr out #txt
Ts0 f16 109 544 224 502 #arcP
Ts0 f16 1 224 544 #addKink
Ts0 f16 0 0.6678657610652606 0 0 #arcLabel
Ts0 f25 expr out #txt
Ts0 f25 280 64 328 64 #arcP
Ts0 f24 guid 13FF244AAE66F299 #txt
Ts0 f24 actionTable 'out=in;
' #txt
Ts0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delegateTask</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f24 83 595 26 26 -37 12 #rect
Ts0 f24 @|UdEventIcon #fIcon
Ts0 f24 -1|-1|-9671572 #nodeStyle
Ts0 f29 actionTable 'out=in;
' #txt
Ts0 f29 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IRole;

if(in.isDelegateToRole){
	out.task.setActivator(in.delegateToRole);
}else{
	out.task.setActivator(in.delegateToUser);
}' #txt
Ts0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delegate task</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f29 168 586 112 44 -37 -8 #rect
Ts0 f29 @|StepIcon #fIcon
Ts0 f29 -1|-1|-9671572 #nodeStyle
Ts0 f30 expr out #txt
Ts0 f30 109 608 168 608 #arcP
Ts0 f34 guid 13FF610AAC114166 #txt
Ts0 f34 actionTable 'out=in;
' #txt
Ts0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirmAction</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f34 83 659 26 26 -37 12 #rect
Ts0 f34 @|UdEventIcon #fIcon
Ts0 f34 -1|-1|-9671572 #nodeStyle
Ts0 f35 actionTable 'out=in;
' #txt
Ts0 f35 actionCode 'if(!in.resetLink)
{
	if (ivy.session.hasPermission(
				ivy.wf.getApplication().getSecurityDescriptor(),
				ch.ivyteam.ivy.security.IPermission.TASK_RESET))
	{ // reset as admin
		in.task.reset();
	}
	else
	{ // reset as active user
		ivy.session.resetTask(in.task);
	}
}	' #txt
Ts0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reset task</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f35 168 650 112 44 -27 -8 #rect
Ts0 f35 @|StepIcon #fIcon
Ts0 f35 -1|-1|-9671572 #nodeStyle
Ts0 f36 expr out #txt
Ts0 f36 109 672 168 672 #arcP
Ts0 f28 guid 13FF61F15A65FD3A #txt
Ts0 f28 actionTable 'out=in;
' #txt
Ts0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>parkTask</name>
        <nameStyle>8,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f28 83 723 26 26 -25 12 #rect
Ts0 f28 @|UdEventIcon #fIcon
Ts0 f28 -1|-1|-9671572 #nodeStyle
Ts0 f39 actionTable 'out=in;
' #txt
Ts0 f39 actionCode ivy.session.parkTask(in.task); #txt
Ts0 f39 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>park task</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f39 168 714 112 44 -25 -8 #rect
Ts0 f39 @|StepIcon #fIcon
Ts0 f39 -1|-1|-9671572 #nodeStyle
Ts0 f40 expr out #txt
Ts0 f40 109 736 168 736 #arcP
Ts0 f38 guid 14232D691B87CA99 #txt
Ts0 f38 actionTable 'out=in;
out.delayDate=new Date();
out.delayTime=new Time();
out.expiryDate=null;
out.expiryTime=null;
' #txt
Ts0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setDelayNow</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f38 83 403 26 26 -36 12 #rect
Ts0 f38 @|UdEventIcon #fIcon
Ts0 f38 -1|-1|-9671572 #nodeStyle
Ts0 f47 guid 14232D6A595DE6F1 #txt
Ts0 f47 actionTable 'out=in;
out.delayDate=null;
out.delayTime=null;
out.expiryDate=new Date();
out.expiryTime=new Time();
' #txt
Ts0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setExpiryNow</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f47 83 467 26 26 -37 12 #rect
Ts0 f47 @|UdEventIcon #fIcon
Ts0 f47 -1|-1|-9671572 #nodeStyle
Ts0 f46 expr out #txt
Ts0 f46 109 480 168 480 #arcP
Ts0 f46 0 0.7509721381280856 0 0 #arcLabel
Ts0 f45 guid 1431081A3962D22C #txt
Ts0 f45 actionTable 'out=in;
' #txt
Ts0 f45 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>changePriority</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f45 83 339 26 26 -39 12 #rect
Ts0 f45 @|UdEventIcon #fIcon
Ts0 f45 -1|-1|-9671572 #nodeStyle
Ts0 f49 actionTable 'out=in;
' #txt
Ts0 f49 actionCode 'import ch.ivyteam.ivy.workflow.WorkflowPriority;

WorkflowPriority wfPriority = Enum.valueOf(WorkflowPriority.class, in.priority) as WorkflowPriority;

if(out.task.isExpired())
{
	out.task.setExpiryPriority(wfPriority);
}	
else
{
	out.task.setOriginalPriority(wfPriority);
}' #txt
Ts0 f49 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>change task priority</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f49 168 330 112 44 -53 -8 #rect
Ts0 f49 @|StepIcon #fIcon
Ts0 f49 -1|-1|-9671572 #nodeStyle
Ts0 f51 expr out #txt
Ts0 f51 109 352 168 352 #arcP
Ts0 f52 expr out #txt
Ts0 f52 109 160 168 160 #arcP
Ts0 f4 339 147 26 26 0 12 #rect
Ts0 f4 @|UdProcessEndIcon #fIcon
Ts0 f4 -1|-1|-9671572 #nodeStyle
Ts0 f5 280 160 339 160 #arcP
Ts0 f5 0 0.40192249091747784 0 0 #arcLabel
Ts0 f6 339 723 26 26 0 12 #rect
Ts0 f6 @|UdProcessEndIcon #fIcon
Ts0 f6 -1|-1|-9671572 #nodeStyle
Ts0 f7 339 659 26 26 0 12 #rect
Ts0 f7 @|UdProcessEndIcon #fIcon
Ts0 f7 -1|-1|-9671572 #nodeStyle
Ts0 f8 339 595 26 26 0 12 #rect
Ts0 f8 @|UdProcessEndIcon #fIcon
Ts0 f8 -1|-1|-9671572 #nodeStyle
Ts0 f11 595 467 26 26 0 12 #rect
Ts0 f11 @|UdProcessEndIcon #fIcon
Ts0 f11 -1|-1|-9671572 #nodeStyle
Ts0 f22 339 339 26 26 0 12 #rect
Ts0 f22 @|UdProcessEndIcon #fIcon
Ts0 f22 -1|-1|-9671572 #nodeStyle
Ts0 f32 339 275 26 26 0 12 #rect
Ts0 f32 @|UdProcessEndIcon #fIcon
Ts0 f32 -1|-1|-9671572 #nodeStyle
Ts0 f33 expr out #txt
Ts0 f33 280 352 339 352 #arcP
Ts0 f33 0 0.41696446622274075 0 0 #arcLabel
Ts0 f43 expr out #txt
Ts0 f43 280 736 339 736 #arcP
Ts0 f43 0 0.9323793023056589 0 0 #arcLabel
Ts0 f41 expr out #txt
Ts0 f41 280 672 339 672 #arcP
Ts0 f41 0 0.780181996912713 0 0 #arcLabel
Ts0 f37 expr out #txt
Ts0 f37 280 608 339 608 #arcP
Ts0 f37 0 0.19423966397288142 0 0 #arcLabel
Ts0 f21 expr out #txt
Ts0 f21 280 288 339 288 #arcP
Ts0 f21 0 0.4223383405923103 0 0 #arcLabel
Ts0 f9 actionTable 'out=in;
' #txt
Ts0 f9 actionCode 'DateTime delay = new DateTime(in.delayDate.getYear(), in.delayDate.getMonth(), in.delayDate.getDay(), 
	in.delayTime.getHours(), in.delayTime.getMinutes(), 0);
out.task.setDelayTimestamp(delay);' #txt
Ts0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>change delay</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f9 424 458 112 44 -36 -8 #rect
Ts0 f9 @|StepIcon #fIcon
Ts0 f9 -1|-1|-9671572 #nodeStyle
Ts0 f31 expr out #txt
Ts0 f31 536 480 595 480 #arcP
Ts0 f31 0 0.6216402482415329 0 0 #arcLabel
Ts0 f48 expr out #txt
Ts0 f48 109 416 480 458 #arcP
Ts0 f48 1 480 416 #addKink
Ts0 f48 1 0.3964205584602208 0 0 #arcLabel
Ts0 f50 336 464 32 32 0 16 #rect
Ts0 f50 @|AlternativeIcon #fIcon
Ts0 f50 -1|-1|-9671572 #nodeStyle
Ts0 f53 expr out #txt
Ts0 f53 280 480 336 480 #arcP
Ts0 f53 0 0.6216402482415329 0 0 #arcLabel
Ts0 f44 expr in #txt
Ts0 f44 outCond 'in.delayDate.toNumber() > 0' #txt
Ts0 f44 368 480 424 480 #arcP
Ts0 f54 expr in #txt
Ts0 f54 352 496 608 493 #arcP
Ts0 f54 1 352 528 #addKink
Ts0 f54 2 608 528 #addKink
Ts0 f54 1 0.489485513722814 0 0 #arcLabel
Ts0 f55 actionTable 'out=in;
' #txt
Ts0 f55 actionCode 'import ch.ivyteam.wf.admin.AdminBean;

AdminBean admin;
if(admin.hasWorkflowEventReadPermission())
{
	out.taskEvents = in.task.getWorkflowEvents();
}' #txt
Ts0 f55 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get events</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f55 488 42 112 44 -28 -8 #rect
Ts0 f55 @|StepIcon #fIcon
Ts0 f55 -1|-1|-9671572 #nodeStyle
Ts0 f56 expr out #txt
Ts0 f56 440 64 488 64 #arcP
Ts0 f57 guid 147D37EF931F4AC4 #txt
Ts0 f57 actionTable 'out=in;
' #txt
Ts0 f57 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteNote</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f57 83 211 26 26 -30 15 #rect
Ts0 f57 @|UdEventIcon #fIcon
Ts0 f58 expr out #txt
Ts0 f58 109 224 168 224 #arcP
Ts0 f17 actionTable 'out=in;
' #txt
Ts0 f17 actionCode 'import ch.ivyteam.wf.signal.SignalTask;

out.signal = new SignalTask(in.task);' #txt
Ts0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Signal</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f17 648 42 112 44 -27 -8 #rect
Ts0 f17 @|StepIcon #fIcon
Ts0 f19 expr out #txt
Ts0 f19 600 64 648 64 #arcP
Ts0 f42 expr out #txt
Ts0 f42 760 64 819 64 #arcP
>Proto Ts0 .type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ct0 f4 actionTable 'out=in;
' #txt
Ct0 f4 actionCode 'import ch.ivyteam.ivy.webserver.internal.IvySession;
import ch.ivyteam.ivy.workflow.IPageArchive;
import ch.ivyteam.ivy.workflow.ITask;

boolean hasPageArchivePermission = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_PAGE_ARCHIVE_READ_ALL);

if(hasPageArchivePermission)	
{
	in.pageArchives.clear();
	List pageArchives = in.task.getPageArchives();
	for(int j = 0 ; j < pageArchives.size(); j++)
	{
		IPageArchive pageArchive = in.task.getPageArchives().get(j) as IPageArchive;
		out.pageArchives.add(pageArchive);
	}	
}
' #txt
Ct0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get page archives</name>
        <nameStyle>17
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f4 872 74 112 44 -48 -8 #rect
Ct0 f4 @|StepIcon #fIcon
Ct0 f4 -1|-1|-9671572 #nodeStyle
Ct0 f6 expr out #txt
Ct0 f6 344 96 392 96 #arcP
Ct0 f6 0 0.6499393278397387 0 0 #arcLabel
Ct0 f33 expr out #txt
Ct0 f33 664 96 712 96 #arcP
Ct0 f33 0 0.24464016162311086 0 0 #arcLabel
Ct0 f5 actionTable 'out=in;
' #txt
Ct0 f5 actionCode 'import ch.ivyteam.ivy.workflow.query.TaskQuery;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.IWorkflowSession;
import ch.ivyteam.ivy.security.*;
import ch.ivyteam.ivy.request.IProcessModelVersionRequest;

ITask task = in.task;
TaskState state = null;

IWorkflowSession ivySession = ivy.session;
boolean hasPageArchivePermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_PAGE_ARCHIVE_READ_ALL);
boolean hasResetPermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_RESET_OWN_WORKING_TASK);
boolean hasChangePrioPermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_WRITE_ORIGINAL_PRIORITY);
boolean hasDelegatePermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_WRITE_ACTIVATOR);
boolean hasTaskWriteExpiryPermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_WRITE_EXPIRY_ACTIVATOR);
IProcessModelVersionRequest Ivyrequest = ivy.html.getObject("request") as IProcessModelVersionRequest;
ISecurityDescriptor securityDescriptor = Ivyrequest.getApplication().getSecurityDescriptor();

state = task.getState();
if(state==TaskState.DONE || state==TaskState.DELAYED || state==TaskState.READY_FOR_JOIN || in.isHistory) 
{
	in.canStart = false;
} 
else
{
	in.canStart = true;
}	 
if(state==TaskState.RESUMED || state==TaskState.PARKED || state==TaskState.READY_FOR_JOIN && hasResetPermission) 
{
	in.resetLink = false;
} 
else {
	in.resetLink = true;
} 
if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED || !hasDelegatePermission)	
{ 
	in.delegateLink = true;
} 
else { 
	in.delegateLink = false;
}
if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED || !hasTaskWriteExpiryPermission)	
{ 
	in.changeExpiryLink = true;
} 
else { 
	in.changeExpiryLink = false;
}
if(state==TaskState.DONE || !hasChangePrioPermission) 
{
	in.prioLink = true;
} 
else {
	in.prioLink = false;
}
if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED)	
{ 
	in.addNoteLink = true;
} 
else { 
	in.addNoteLink = false;
}
if (hasPageArchivePermission && in.task.getPageArchives().size() >0)	
{ 
	in.archiveLink = false;
} 
else { 
	in.archiveLink = true;
}
if(task.getState().intValue() == 5 && ivySession.hasPermission(securityDescriptor, IPermission.TASK_PARK_OWN_WORKING_TASK))
{
	in.parkLink = false;
} 
else { 
	in.parkLink = true;
}

Time currentTime = new Time();
Date currentDate = new Date();

if(in.task.getDelayTimestamp().toIvyDate() == currentDate)
{
	out.isDelayDateLower = in.task.getDelayTimestamp().getTime() > currentTime;
}
else
{
	out.isDelayDateLower = in.task.getDelayTimestamp().toIvyDate() >= currentDate;
}
if(in.task.getExpiryTimestamp().toIvyDate() == currentDate)
{
	out.isExpiryDateLower = in.task.getExpiryTimestamp().getTime() > currentTime;
}
else
{
	out.isExpiryDateLower = in.task.getExpiryTimestamp().toIvyDate() >= currentDate;
}

in.canChangeExpiry = in.task.isExpired();
' #txt
Ct0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enable/disable 
links</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f5 392 74 112 44 -41 -16 #rect
Ct0 f5 @|StepIcon #fIcon
Ct0 f5 -1|-1|-9671572 #nodeStyle
Ct0 f22 actionTable 'out=in;
out.delayDate=IF(in.task.getDelayTimestamp().getYear() == 1, null, in.task.getDelayTimestamp().getDate());
out.delayTime=IF(in.task.getDelayTimestamp().getYear() == 1, null, in.task.getDelayTimestamp().getTime());
out.expiryDate=IF(in.task.getExpiryTimestamp().getYear() == 1, null, in.task.getExpiryTimestamp().getDate());
out.expiryTime=IF(in.task.getExpiryTimestamp().getYear() == 1, null, in.task.getExpiryTimestamp().getTime());
out.noteDescription="";
out.priority=in.task.getPriority().name();
out.taskLink=ivy.html.taskstartref(in.task);
' #txt
Ct0 f22 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

Boolean message = FacesContext.getCurrentInstance().getMessageList().size() >= 1 ? true : false;

if(message)
{
	out.changeExpiryWrong = true;
}
else
{
	out.changeExpiryWrong = false;
}

if(in.task.getCase().getName() != "")
{
	out.caseName = in.task.getCase().getBusinessCase().getName();
}
else
{
	out.caseName = ivy.cms.co("/labels/history/taskDetails/businessCase") + " " + in.task.getCase().getBusinessCase().getId();
}' #txt
Ct0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f22 232 74 112 44 -8 -8 #rect
Ct0 f22 @|StepIcon #fIcon
Ct0 f22 -1|-1|-9671572 #nodeStyle
Ct0 f44 expr out #txt
Ct0 f44 824 96 872 96 #arcP
Ct0 f44 0 0.4678124781026417 0 0 #arcLabel
Ct0 f8 expr out #txt
Ct0 f8 504 96 552 96 #arcP
Ct0 f8 0 0.8180270850396713 0 0 #arcLabel
Ct0 f7 actionTable 'out=in;
' #txt
Ct0 f7 actionCode 'if(in.task.hasNotes()){
	out.notes = in.task.getNotes();
}

if(in.task.getCase().hasNotes()){
	out.caseNotes = in.task.getCase().getNotes();
}' #txt
Ct0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get notes</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f7 552 74 112 44 -25 -8 #rect
Ct0 f7 @|StepIcon #fIcon
Ct0 f7 -1|-1|-9671572 #nodeStyle
Ct0 f32 actionTable 'out=in;
' #txt
Ct0 f32 actionCode 'import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;

List users = ivy.wf.getSecurityContext().getUsers();
out.userList.clear();
for(IUser user : users)
{
	if(user.getName() != "SYSTEM")
	{
		out.userList.add(user);
	}
}	

List roles = ivy.wf.getSecurityContext().getRoles();
out.roleList.clear();
for(IRole role: roles)
{
	out.roleList.add(role);
}' #txt
Ct0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user/role list</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f32 712 74 112 44 -34 -8 #rect
Ct0 f32 @|StepIcon #fIcon
Ct0 f32 -1|-1|-9671572 #nodeStyle
Ct0 g0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>in 1</name>
    </language>
</elementInfo>
' #txt
Ct0 g0 51 83 26 26 -7 17 #rect
Ct0 g0 @|MIGIcon #fIcon
Ct0 g0 -1|-1|-9671572 #nodeStyle
Ct0 g1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>out 1</name>
    </language>
</elementInfo>
' #txt
Ct0 g1 1075 83 26 26 -4 12 #rect
Ct0 g1 @|MOGIcon #fIcon
Ct0 g1 -1|-1|-9671572 #nodeStyle
Ct0 f2 actionTable 'out=in;
out.addNoteLink=true;
out.archiveLink=true;
out.canChangeExpiry=false;
out.canStart=false;
out.changeExpiryLink=true;
out.delegateLink=true;
out.isDelayDateLower=false;
out.isDelegateToRole=false;
out.isExpiryDateLower=false;
out.isHistory=false;
out.parkLink=true;
out.prioLink=true;
out.resetLink=true;
out.showNoteSelection=false;
' #txt
Ct0 f2 actionCode 'import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "", ivy.cms.co("/labels/common/nothingToShow")));' #txt
Ct0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no task 
(missing permission)</name>
        <nameStyle>29
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f2 216 154 144 44 -53 -16 #rect
Ct0 f2 @|StepIcon #fIcon
Ct0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>task not null?</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f3 144 80 32 32 -14 -36 #rect
Ct0 f3 @|AlternativeIcon #fIcon
Ct0 f9 77 96 144 96 #arcP
Ct0 f0 expr in #txt
Ct0 f0 outCond 'in.task != null' #txt
Ct0 f0 176 96 232 96 #arcP
Ct0 f10 expr in #txt
Ct0 f10 160 112 216 176 #arcP
Ct0 f10 1 160 176 #addKink
Ct0 f10 1 0.21252532563010226 0 0 #arcLabel
Ct0 f11 1024 80 32 32 0 16 #rect
Ct0 f11 @|AlternativeIcon #fIcon
Ct0 f12 expr out #txt
Ct0 f12 984 96 1024 96 #arcP
Ct0 f1 expr in #txt
Ct0 f1 1056 96 1075 96 #arcP
Ct0 f13 expr out #txt
Ct0 f13 360 176 1040 112 #arcP
Ct0 f13 1 1040 176 #addKink
Ct0 f13 0 0.5569299217131004 0 0 #arcLabel
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ts0 f14 mainOut f18 tail #connect
Ts0 f18 head f20 mainIn #connect
Ts0 f2 mainOut f12 tail #connect
Ts0 f12 head f10 mainIn #connect
Ts0 f0 mainOut f27 tail #connect
Ts0 f27 head f23 mainIn #connect
Ts0 f13 mainOut f16 tail #connect
Ts0 f16 head f15 mainIn #connect
Ts0 f23 mainOut f25 tail #connect
Ts0 f25 head f3 mainIn #connect
Ts0 f24 mainOut f30 tail #connect
Ts0 f30 head f29 mainIn #connect
Ts0 f34 mainOut f36 tail #connect
Ts0 f36 head f35 mainIn #connect
Ts0 f28 mainOut f40 tail #connect
Ts0 f40 head f39 mainIn #connect
Ts0 f47 mainOut f46 tail #connect
Ts0 f46 head f15 mainIn #connect
Ts0 f45 mainOut f51 tail #connect
Ts0 f51 head f49 mainIn #connect
Ts0 f52 head S10 g0 #connect
Ts0 f26 mainOut f52 tail #connect
Ts0 S10 g1 f5 tail #connect
Ts0 f5 head f4 mainIn #connect
Ts0 f49 mainOut f33 tail #connect
Ts0 f33 head f22 mainIn #connect
Ts0 f39 mainOut f43 tail #connect
Ts0 f43 head f6 mainIn #connect
Ts0 f35 mainOut f41 tail #connect
Ts0 f41 head f7 mainIn #connect
Ts0 f29 mainOut f37 tail #connect
Ts0 f37 head f8 mainIn #connect
Ts0 f10 mainOut f21 tail #connect
Ts0 f21 head f32 mainIn #connect
Ts0 f9 mainOut f31 tail #connect
Ts0 f31 head f11 mainIn #connect
Ts0 f38 mainOut f48 tail #connect
Ts0 f48 head f9 mainIn #connect
Ts0 f15 mainOut f53 tail #connect
Ts0 f53 head f50 in #connect
Ts0 f50 out f44 tail #connect
Ts0 f44 head f9 mainIn #connect
Ts0 f50 out f54 tail #connect
Ts0 f54 head f11 mainIn #connect
Ts0 f3 mainOut f56 tail #connect
Ts0 f56 head f55 mainIn #connect
Ts0 f57 mainOut f58 tail #connect
Ts0 f58 head f14 mainIn #connect
Ts0 f55 mainOut f19 tail #connect
Ts0 f19 head f17 mainIn #connect
Ts0 f17 mainOut f42 tail #connect
Ts0 f42 head f1 mainIn #connect
Ct0 f22 mainOut f6 tail #connect
Ct0 f6 head f5 mainIn #connect
Ct0 f5 mainOut f8 tail #connect
Ct0 f8 head f7 mainIn #connect
Ct0 f7 mainOut f33 tail #connect
Ct0 f33 head f32 mainIn #connect
Ct0 f32 mainOut f44 tail #connect
Ct0 f44 head f4 mainIn #connect
Ct0 g0 m f9 tail #connect
Ct0 f9 head f3 in #connect
Ct0 f3 out f0 tail #connect
Ct0 f0 head f22 mainIn #connect
Ct0 f3 out f10 tail #connect
Ct0 f10 head f2 mainIn #connect
Ct0 f4 mainOut f12 tail #connect
Ct0 f12 head f11 in #connect
Ct0 f11 out f1 tail #connect
Ct0 f1 head g1 m #connect
Ct0 f2 mainOut f13 tail #connect
Ct0 f13 head f11 in #connect
Ct0 0 0 1104 224 0 #ivRect
