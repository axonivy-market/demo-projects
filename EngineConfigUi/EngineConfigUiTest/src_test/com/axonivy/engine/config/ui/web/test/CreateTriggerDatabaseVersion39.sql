
CREATE TRIGGER IWA_ClusterNodeDeleteTrigger
AFTER DELETE ON IWA_ClusterNode
FOR EACH ROW
BEGIN
  DELETE FROM IWA_ClusterNodeProperty
  WHERE IWA_ClusterNodeProperty.ClusterNodeId = OLD.ClusterNodeId;
END;

CREATE TRIGGER IWA_ApplicationDeleteTrigger
AFTER DELETE ON IWA_Application
FOR EACH ROW
BEGIN
  DELETE FROM IWA_ApplicationProperty
  WHERE IWA_ApplicationProperty.ApplicationId = OLD.ApplicationId;

  DELETE FROM IWA_Environment
  WHERE IWA_Environment.ApplicationId = OLD.ApplicationId;

  DELETE FROM IWA_GlobalVariable
  WHERE IWA_GlobalVariable.ApplicationId = OLD.ApplicationId;

  DELETE FROM IWA_ExternalNamingAndDirectory
  WHERE IWA_ExternalNamingAndDirectory.ApplicationId = OLD.ApplicationId;

  DELETE FROM IWA_ExternalDatabase
  WHERE IWA_ExternalDatabase.ApplicationId = OLD.ApplicationId;

  DELETE FROM IWA_ProcessModel
  WHERE IWA_ProcessModel.ApplicationId = OLD.ApplicationId;

  DELETE FROM IWA_Role
  WHERE IWA_Role.ApplicationId = OLD.ApplicationId;

  DELETE FROM IWA_User
  WHERE IWA_User.ApplicationId = OLD.ApplicationId;

  DELETE FROM IWA_SignalEvent
  WHERE IWA_SignalEvent.ApplicationId = OLD.ApplicationId;

  DELETE FROM IWA_ContentManagementSystem
  WHERE IWA_ContentManagementSystem.ApplicationId = OLD.ApplicationId;

  DELETE FROM IWA_RestServiceClient
  WHERE IWA_RestServiceClient.ApplicationId = OLD.ApplicationId;

  DELETE FROM IWA_SecurityDescriptor
  WHERE IWA_SecurityDescriptor.SecurityDescriptorId = OLD.SecurityDescriptorId;
END;

CREATE TRIGGER IWA_EnvironmentDeleteTrigger
AFTER DELETE ON IWA_Environment
FOR EACH ROW
BEGIN
  DELETE FROM IWA_GlobalVariable
  WHERE IWA_GlobalVariable.EnvironmentId = OLD.EnvironmentId;

  DELETE FROM IWA_ExternalDatabase
  WHERE IWA_ExternalDatabase.EnvironmentId = OLD.EnvironmentId;
END;

CREATE TRIGGER IWA_ExternalDatabaseDeleteTrigger
AFTER DELETE ON IWA_ExternalDatabase
FOR EACH ROW
BEGIN
  DELETE FROM IWA_ExternalDatabaseProperty
  WHERE IWA_ExternalDatabaseProperty.ExternalDatabaseId = OLD.ExternalDatabaseId;
END;

CREATE TRIGGER IWA_ProcessModelDeleteTrigger
AFTER DELETE ON IWA_ProcessModel
FOR EACH ROW
BEGIN
  DELETE FROM IWA_ProcessModelVersion
  WHERE IWA_ProcessModelVersion.ProcessModelId = OLD.ProcessModelId;

  DELETE FROM IWA_Case
  WHERE IWA_Case.ProcessModelId = OLD.ProcessModelId;
END;

CREATE TRIGGER IWA_ProcessModelVersionDeleteTrigger
AFTER DELETE ON IWA_ProcessModelVersion
FOR EACH ROW
BEGIN
  DELETE FROM IWA_PageElement
  WHERE IWA_PageElement.ProcessModelVersionId = OLD.ProcessModelVersionId;

  DELETE FROM IWA_ProcessModelVersionRole
  WHERE IWA_ProcessModelVersionRole.ProcessModelVersionId = OLD.ProcessModelVersionId;

  DELETE FROM IWA_TaskElement
  WHERE IWA_TaskElement.ProcessModelVersionId = OLD.ProcessModelVersionId;

  DELETE FROM IWA_WebServiceProcess
  WHERE IWA_WebServiceProcess.ProcessModelVersionId = OLD.ProcessModelVersionId;

  DELETE FROM IWA_ContentManagementSystem
  WHERE IWA_ContentManagementSystem.ProcessModelVersionId = OLD.ProcessModelVersionId;
END;

CREATE TRIGGER IWA_RoleDeleteTrigger
AFTER DELETE ON IWA_Role
FOR EACH ROW
BEGIN
  UPDATE IWA_Task
  SET State=9, FailedTimeoutTimestamp=NULL, WorkerUserId=NULL, WorkerUserName=NULL
  WHERE ((IWA_Task.ActivatorRoleId=OLD.RoleId AND IWA_Task.IsExpired=0) OR (IWA_Task.ExpiryActivatorRoleId=OLD.RoleId AND IWA_Task.IsExpired=1)) AND (IWA_Task.State=3 OR IWA_Task.State=4 OR IWA_Task.State=8 OR IWA_Task.State=10);

  DELETE FROM IWA_ProcessModelVersionRole
  WHERE IWA_ProcessModelVersionRole.RoleId = OLD.RoleId;

  DELETE FROM IWA_RoleProperty
  WHERE IWA_RoleProperty.RoleId = OLD.RoleId;

  DELETE FROM IWA_RoleRoleMember
  WHERE IWA_RoleRoleMember.RoleId = OLD.RoleId;

  DELETE FROM IWA_RoleRoleMember
  WHERE IWA_RoleRoleMember.RoleMemberId = OLD.RoleId;

  DELETE FROM IWA_UserRole
  WHERE IWA_UserRole.RoleId = OLD.RoleId;

  DELETE FROM IWA_UserSubstitute
  WHERE IWA_UserSubstitute.SubstituteForRoleId = OLD.RoleId;

  UPDATE IWA_StartElement
  SET ActivatorRoleId=NULL
  WHERE IWA_StartElement.ActivatorRoleId=OLD.RoleId;

  UPDATE IWA_StartEventElement
  SET ActivatorRoleId=NULL
  WHERE IWA_StartEventElement.ActivatorRoleId=OLD.RoleId;

  UPDATE IWA_WebServiceProcStartElement
  SET ActivatorRoleId=NULL
  WHERE IWA_WebServiceProcStartElement.ActivatorRoleId=OLD.RoleId;

  UPDATE IWA_Task
  SET ActivatorRoleId=NULL
  WHERE IWA_Task.ActivatorRoleId=OLD.RoleId;

  UPDATE IWA_Task
  SET ExpiryActivatorRoleId=NULL
  WHERE IWA_Task.ExpiryActivatorRoleId=OLD.RoleId;

  DELETE FROM IWA_AccessControl
  WHERE IWA_AccessControl.RoleId = OLD.RoleId;
END;

CREATE TRIGGER IWA_UserDeleteTrigger
AFTER DELETE ON IWA_User
FOR EACH ROW
BEGIN
  UPDATE IWA_Task
  SET State=9, FailedTimeoutTimestamp=NULL, WorkerUserId=NULL, WorkerUserName=NULL
  WHERE ((IWA_Task.ActivatorUserId=OLD.UserId AND IWA_Task.IsExpired=0) OR (IWA_Task.ExpiryActivatorUserId=OLD.UserId AND IWA_Task.IsExpired=1)) AND (IWA_Task.State=3 OR IWA_Task.State=4 OR IWA_Task.State=8 OR IWA_Task.State=10);

  UPDATE IWA_Task
  SET State=4, WorkerUserName=NULL
  WHERE IWA_Task.WorkerUserId=OLD.UserId AND IWA_Task.State=8;

  DELETE FROM IWA_UserRole
  WHERE IWA_UserRole.UserId = OLD.UserId;

  DELETE FROM IWA_UserProperty
  WHERE IWA_UserProperty.UserId = OLD.UserId;

  DELETE FROM IWA_RichDialogUserContext
  WHERE IWA_RichDialogUserContext.UserId = OLD.UserId;

  DELETE FROM IWA_UserAbsence
  WHERE IWA_UserAbsence.UserId = OLD.UserId;

  DELETE FROM IWA_UserSubstitute
  WHERE IWA_UserSubstitute.UserId = OLD.UserId;

  DELETE FROM IWA_UserSubstitute
  WHERE IWA_UserSubstitute.SubstituteUserId = OLD.UserId;

  UPDATE IWA_StartElement
  SET ActivatorUserId=NULL
  WHERE IWA_StartElement.ActivatorUserId=OLD.UserId;

  UPDATE IWA_Case
  SET CreatorUserId=NULL
  WHERE IWA_Case.CreatorUserId=OLD.UserId;

  UPDATE IWA_Task
  SET WorkerUserId=NULL
  WHERE IWA_Task.WorkerUserId=OLD.UserId;

  UPDATE IWA_Task
  SET ActivatorUserId=NULL
  WHERE IWA_Task.ActivatorUserId=OLD.UserId;

  UPDATE IWA_Task
  SET ExpiryActivatorUserId=NULL
  WHERE IWA_Task.ExpiryActivatorUserId=OLD.UserId;

  UPDATE IWA_WorkflowEvent
  SET UserId=NULL
  WHERE IWA_WorkflowEvent.UserId=OLD.UserId;

  UPDATE IWA_Note
  SET UserId=NULL
  WHERE IWA_Note.UserId=OLD.UserId;

  DELETE FROM IWA_UserLocation
  WHERE IWA_UserLocation.UserId = OLD.UserId;

  UPDATE IWA_SignalEvent
  SET SentByUserId=NULL
  WHERE IWA_SignalEvent.SentByUserId=OLD.UserId;

  UPDATE IWA_PageArchive
  SET UserId=NULL
  WHERE IWA_PageArchive.UserId=OLD.UserId;

  UPDATE IWA_SecurityDescriptor
  SET OwnerUserId=NULL
  WHERE IWA_SecurityDescriptor.OwnerUserId=OLD.UserId;

  DELETE FROM IWA_AccessControl
  WHERE IWA_AccessControl.UserId = OLD.UserId;
END;

CREATE TRIGGER IWA_TaskElementDeleteTrigger
AFTER DELETE ON IWA_TaskElement
FOR EACH ROW
BEGIN
  DELETE FROM IWA_TaskStart
  WHERE IWA_TaskStart.TaskElementId = OLD.TaskElementId;

  DELETE FROM IWA_TaskEnd
  WHERE IWA_TaskEnd.TaskElementId = OLD.TaskElementId;

  DELETE FROM IWA_TaskSwitchEvent
  WHERE IWA_TaskSwitchEvent.TaskElementId = OLD.TaskElementId;
END;

CREATE TRIGGER IWA_TaskStartDeleteTrigger
AFTER DELETE ON IWA_TaskStart
FOR EACH ROW
BEGIN
  DELETE FROM IWA_StartElement
  WHERE IWA_StartElement.TaskStartId = OLD.TaskStartId;

  DELETE FROM IWA_StartEventElement
  WHERE IWA_StartEventElement.TaskStartId = OLD.TaskStartId;

  DELETE FROM IWA_WebServiceProcStartElement
  WHERE IWA_WebServiceProcStartElement.TaskStartId = OLD.TaskStartId;

  DELETE FROM IWA_IntermediateEventElement
  WHERE IWA_IntermediateEventElement.TaskStartId = OLD.TaskStartId;

  DELETE FROM IWA_StartSignalEventElement
  WHERE IWA_StartSignalEventElement.TaskStartId = OLD.TaskStartId;
END;

CREATE TRIGGER IWA_TaskSwitchEventDeleteTrigger
AFTER DELETE ON IWA_TaskSwitchEvent
FOR EACH ROW
BEGIN
  DELETE FROM IWA_StartTaskData
  WHERE IWA_StartTaskData.TaskSwitchEventId = OLD.TaskSwitchEventId;
END;

CREATE TRIGGER IWA_IntermediateEventElementDeleteTrigger
AFTER DELETE ON IWA_IntermediateEventElement
FOR EACH ROW
BEGIN
  DELETE FROM IWA_IntermediateEvent
  WHERE IWA_IntermediateEvent.TaskStartId = OLD.TaskStartId;
END;

CREATE TRIGGER IWA_CaseDeleteTrigger
AFTER DELETE ON IWA_Case
FOR EACH ROW
BEGIN
  DELETE FROM IWA_TaskSwitchEvent
  WHERE IWA_TaskSwitchEvent.CaseId = OLD.CaseId;

  DELETE FROM IWA_Task
  WHERE IWA_Task.CaseId = OLD.CaseId;

  DELETE FROM IWA_WorkflowEvent
  WHERE IWA_WorkflowEvent.CaseId = OLD.CaseId;

  DELETE FROM IWA_CaseNote
  WHERE IWA_CaseNote.CaseId = OLD.CaseId;

  DELETE FROM IWA_CaseAdditionalProperty
  WHERE IWA_CaseAdditionalProperty.CaseId = OLD.CaseId;
END;

CREATE TRIGGER IWA_TaskDeleteTrigger
AFTER DELETE ON IWA_Task
FOR EACH ROW
BEGIN
  DELETE FROM IWA_TaskData
  WHERE IWA_TaskData.TaskId = OLD.TaskId;

  DELETE FROM IWA_WorkflowEvent
  WHERE IWA_WorkflowEvent.TaskId = OLD.TaskId;

  DELETE FROM IWA_IntermediateEvent
  WHERE IWA_IntermediateEvent.TaskId = OLD.TaskId;

  DELETE FROM IWA_TaskNote
  WHERE IWA_TaskNote.TaskId = OLD.TaskId;

  DELETE FROM IWA_TaskAdditionalProperty
  WHERE IWA_TaskAdditionalProperty.TaskId = OLD.TaskId;

  DELETE FROM IWA_TaskLocation
  WHERE IWA_TaskLocation.TaskId = OLD.TaskId;

  DELETE FROM IWA_TaskSignalEventReceiver
  WHERE IWA_TaskSignalEventReceiver.WaitingTaskId = OLD.TaskId;

  DELETE FROM IWA_SignaledTask
  WHERE IWA_SignaledTask.SignaledTaskId = OLD.TaskId;

  UPDATE IWA_SignalEvent
  SET SentByTaskId=NULL
  WHERE IWA_SignalEvent.SentByTaskId=OLD.TaskId;

  DELETE FROM IWA_PageArchive
  WHERE IWA_PageArchive.TaskId = OLD.TaskId;
END;

CREATE TRIGGER IWA_IntermediateEventTrigger
AFTER DELETE ON IWA_IntermediateEvent
FOR EACH ROW
BEGIN
  DELETE FROM IWA_IntermediateEventData
  WHERE IWA_IntermediateEventData.IntermediateEventId = OLD.IntermediateEventId;
END;

CREATE TRIGGER IWA_TaskNoteDeleteTrigger
AFTER DELETE ON IWA_TaskNote
FOR EACH ROW
BEGIN
  DELETE FROM IWA_Note
  WHERE IWA_Note.NoteId = OLD.NoteId;
END;

CREATE TRIGGER IWA_CaseNoteDeleteTrigger
AFTER DELETE ON IWA_CaseNote
FOR EACH ROW
BEGIN
  DELETE FROM IWA_Note
  WHERE IWA_Note.NoteId = OLD.NoteId;
END;

CREATE TRIGGER IWA_TaskAdditionalPropertyDeleteTrigger
AFTER DELETE ON IWA_TaskAdditionalProperty
FOR EACH ROW
BEGIN
  DELETE FROM IWA_AdditionalProperty
  WHERE IWA_AdditionalProperty.AdditionalPropertyId = OLD.AdditionalPropertyId;
END;

CREATE TRIGGER IWA_CaseAdditionalPropertyDeleteTrigger
AFTER DELETE ON IWA_CaseAdditionalProperty
FOR EACH ROW
BEGIN
  DELETE FROM IWA_AdditionalProperty
  WHERE IWA_AdditionalProperty.AdditionalPropertyId = OLD.AdditionalPropertyId;
END;

CREATE TRIGGER IWA_SignaledTaskDeleteTrigger
AFTER DELETE ON IWA_SignaledTask
FOR EACH ROW
BEGIN
  UPDATE IWA_TaskSignalEventReceiver
  SET StartedSignaledTaskId=NULL
  WHERE IWA_TaskSignalEventReceiver.StartedSignaledTaskId=OLD.SignaledTaskId;
END;

CREATE TRIGGER IWA_SignalEventDeleteTrigger
AFTER DELETE ON IWA_SignalEvent
FOR EACH ROW
BEGIN
  UPDATE IWA_SignaledTask
  SET ReceivedSignalEventId=NULL
  WHERE IWA_SignaledTask.ReceivedSignalEventId=OLD.SignalEventId;

  DELETE FROM IWA_SignalEventData
  WHERE IWA_SignalEventData.SignalEventId = OLD.SignalEventId;
END;

CREATE TRIGGER IWA_ContentManagementSystemDeleteTrigger
AFTER DELETE ON IWA_ContentManagementSystem
FOR EACH ROW
BEGIN
  DELETE FROM IWA_SupportedLanguage
  WHERE IWA_SupportedLanguage.ContentManagementSystemId = OLD.ContentManagementSystemId;

  DELETE FROM IWA_ContentObject
  WHERE IWA_ContentObject.ContentManagementSystemId = OLD.ContentManagementSystemId;

  DELETE FROM IWA_StartPage
  WHERE IWA_StartPage.ContentManagementSystemId = OLD.ContentManagementSystemId;
END;

CREATE TRIGGER IWA_ContentObjectDeleteTrigger
AFTER DELETE ON IWA_ContentObject
FOR EACH ROW
BEGIN
  UPDATE IWA_ContentManagementSystem
  SET DefaultPageLayoutId=NULL
  WHERE IWA_ContentManagementSystem.DefaultPageLayoutId=OLD.ContentObjectId;

  UPDATE IWA_ContentManagementSystem
  SET DefaultPageStyleSheetId=NULL
  WHERE IWA_ContentManagementSystem.DefaultPageStyleSheetId=OLD.ContentObjectId;

  DELETE FROM IWA_StartPage
  WHERE IWA_StartPage.ContentObjectId = OLD.ContentObjectId;

  DELETE FROM IWA_ContentObjectValue
  WHERE IWA_ContentObjectValue.ContentObjectId = OLD.ContentObjectId;
END;

CREATE TRIGGER IWA_ContentObjectValueDeleteTrigger
AFTER DELETE ON IWA_ContentObjectValue
FOR EACH ROW
BEGIN
  DELETE FROM IWA_ContentDataString
  WHERE IWA_ContentDataString.ContentObjectValueId = OLD.ContentObjectValueId;

  DELETE FROM IWA_ContentDataInteger
  WHERE IWA_ContentDataInteger.ContentObjectValueId = OLD.ContentObjectValueId;

  DELETE FROM IWA_ContentDataFloat
  WHERE IWA_ContentDataFloat.ContentObjectValueId = OLD.ContentObjectValueId;

  DELETE FROM IWA_ContentDataDateTime
  WHERE IWA_ContentDataDateTime.ContentObjectValueId = OLD.ContentObjectValueId;

  DELETE FROM IWA_ContentDataText
  WHERE IWA_ContentDataText.ContentObjectValueId = OLD.ContentObjectValueId;

  DELETE FROM IWA_ContentDataImage
  WHERE IWA_ContentDataImage.ContentObjectValueId = OLD.ContentObjectValueId;

  DELETE FROM IWA_ContentDataDecimal
  WHERE IWA_ContentDataDecimal.ContentObjectValueId = OLD.ContentObjectValueId;
END;

CREATE TRIGGER IWA_SecurityDescriptorDeleteTrigger
AFTER DELETE ON IWA_SecurityDescriptor
FOR EACH ROW
BEGIN
  DELETE FROM IWA_AccessControl
  WHERE IWA_AccessControl.SecurityDescriptorId = OLD.SecurityDescriptorId;
END;
