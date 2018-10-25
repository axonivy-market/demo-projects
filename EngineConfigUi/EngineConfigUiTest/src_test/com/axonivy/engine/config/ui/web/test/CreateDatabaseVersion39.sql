# ---------------------------------------------------------------------------------
# 
# SQL Script to generate ivy system database
# 
# ---------------------------------------------------------------------------------
# 
# This script was automatically generated. Do not edit it. Instead edit the source file
# 
# ---------------------------------------------------------------------------------
# Database: MySQL
# ---------------------------------------------------------------------------------
# Copyright:
# AXON IVY AG, Baarerstrasse 12, 6300 Zug
# ---------------------------------------------------------------------------------

CREATE TABLE IWA_AsyncProcessCaseData
(
  CaseId BIGINT NOT NULL,
  EventId VARCHAR(100) NOT NULL,
  CaseData MEDIUMBLOB NOT NULL,
  PRIMARY KEY (CaseId, EventId)
) ENGINE=InnoDB;

CREATE TABLE IWA_ClusterNode
(
  ClusterNodeId BIGINT NOT NULL,
  HostName VARCHAR(50) NOT NULL,
  LocalIdentifier INTEGER NOT NULL,
  IpAddress CHAR(39) NOT NULL,
  IpPort INTEGER NOT NULL,
  `State` INTEGER NOT NULL,
  MasterClusterNodeId BIGINT,
  OperatingSystemName VARCHAR(50) NOT NULL,
  OperatingSystemVersion VARCHAR(50) NOT NULL,
  OperatingSystemArchitecture VARCHAR(50) NOT NULL,
  JavaVersion VARCHAR(50) NOT NULL,
  JavaVirtualMachineName VARCHAR(50) NOT NULL,
  XpertIvyVersion VARCHAR(50) NOT NULL,
  LastStartTimestamp DATETIME,
  LastStopTimestamp DATETIME,
  LastFailTimestamp DATETIME,
  LastLifeCheckTimeStamp DATETIME NOT NULL,
  PRIMARY KEY (ClusterNodeId),
  UNIQUE (HostName, LocalIdentifier)
) ENGINE=InnoDB;

CREATE TABLE IWA_ClusterNodeProperty
(
  ClusterNodePropertyId BIGINT NOT NULL,
  ClusterNodeId BIGINT NOT NULL,
  PropertyName VARCHAR(50) NOT NULL,
  PropertyValue TEXT NOT NULL,
  PRIMARY KEY (ClusterNodePropertyId),
  UNIQUE (ClusterNodeId, PropertyName)
) ENGINE=InnoDB;

CREATE TABLE IWA_Application
(
  ApplicationId BIGINT NOT NULL,
  Name VARCHAR(40) NOT NULL,
  Description VARCHAR(2000) DEFAULT '',
  OwnerName VARCHAR(40) NOT NULL,
  OwnerPassword VARCHAR(200) NOT NULL,
  SystemUserId BIGINT,
  DownloadPassword VARCHAR(200),
  ExternalSecuritySystemName VARCHAR(200) NOT NULL DEFAULT 'ivyteam.webapp.workflow.InternalAuthenticationAuthorizationSys',
  SecurityDescriptorId BIGINT DEFAULT NULL,
  `State` INTEGER NOT NULL,
  FileDirectory VARCHAR(500) NOT NULL,
  BusinessCalendarId BIGINT,
  PRIMARY KEY (ApplicationId),
  UNIQUE (Name)
) ENGINE=InnoDB;

CREATE TABLE IWA_ApplicationProperty
(
  ApplicationPropertyId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  PropertyName VARCHAR(50) NOT NULL,
  PropertyValue TEXT NOT NULL,
  PRIMARY KEY (ApplicationPropertyId),
  UNIQUE (ApplicationId, PropertyName)
) ENGINE=InnoDB;

CREATE TABLE IWA_Environment
(
  EnvironmentId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  Name VARCHAR(200) NOT NULL,
  Description TEXT NOT NULL,
  BusinessCalendarId BIGINT,
  PRIMARY KEY (EnvironmentId),
  UNIQUE (ApplicationId, Name)
) ENGINE=InnoDB;

CREATE TABLE IWA_GlobalVariable
(
  GlobalVariableId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  ParentGlobalVariableId BIGINT,
  EnvironmentId BIGINT,
  Name VARCHAR(200) NOT NULL,
  Description TEXT NOT NULL,
  `Value` VARCHAR(2000) NOT NULL,
  PRIMARY KEY (GlobalVariableId),
  UNIQUE (ApplicationId, EnvironmentId, Name)
) ENGINE=InnoDB;

CREATE TABLE IWA_WebService
(
  WebServiceId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  GenerationIdentifier VARCHAR(200) NOT NULL,
  Name VARCHAR(200) NOT NULL,
  Description TEXT NOT NULL,
  Tag VARCHAR(200),
  WsdlUrl VARCHAR(2000) NOT NULL,
  TransportSession BIT NOT NULL,
  SessionHandlingMode INTEGER NOT NULL,
  WebServiceFramework VARCHAR(200) NOT NULL,
  GenerationPropertiesVersion INTEGER NOT NULL,
  GenerationProperties TEXT,
  PRIMARY KEY (WebServiceId),
  FOREIGN KEY (ApplicationId) REFERENCES IWA_Application(ApplicationId) ON DELETE CASCADE,
  UNIQUE (ApplicationId, GenerationIdentifier)
) ENGINE=InnoDB;

CREATE TABLE IWA_WebServiceEnvironment
(
  WebServiceEnvironmentId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  WebServiceId BIGINT NOT NULL,
  EnvironmentId BIGINT,
  AuthenticationType VARCHAR(200) NOT NULL,
  UserName VARCHAR(200) NOT NULL,
  Password VARCHAR(200) NOT NULL,
  AuthenticationHost VARCHAR(200) DEFAULT NULL,
  AuthenticationDomain VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (WebServiceEnvironmentId),
  FOREIGN KEY (ApplicationId) REFERENCES IWA_Application(ApplicationId) ON DELETE CASCADE,
  FOREIGN KEY (WebServiceId) REFERENCES IWA_WebService(WebServiceId) ON DELETE CASCADE,
  FOREIGN KEY (EnvironmentId) REFERENCES IWA_Environment(EnvironmentId) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IWA_WebServicePortType
(
  WebServicePortTypeId BIGINT NOT NULL,
  WebServiceId BIGINT NOT NULL,
  PortType VARCHAR(200) NOT NULL,
  PRIMARY KEY (WebServicePortTypeId),
  FOREIGN KEY (WebServiceId) REFERENCES IWA_WebService(WebServiceId) ON DELETE CASCADE,
  UNIQUE (WebServiceId, PortType)
) ENGINE=InnoDB;

CREATE TABLE IWA_WebServiceEndpoint
(
  WebServiceEndpointId BIGINT NOT NULL,
  WebServiceEnvironmentId BIGINT NOT NULL,
  WebServicePortTypeId BIGINT NOT NULL,
  CallOrderPosition INTEGER NOT NULL,
  EndpointAddress VARCHAR(2000) NOT NULL,
  PRIMARY KEY (WebServiceEndpointId),
  FOREIGN KEY (WebServiceEnvironmentId) REFERENCES IWA_WebServiceEnvironment(WebServiceEnvironmentId) ON DELETE CASCADE,
  FOREIGN KEY (WebServicePortTypeId) REFERENCES IWA_WebServicePortType(WebServicePortTypeId) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IWA_BusinessCalendar
(
  BusinessCalendarId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  ParentCalendarId BIGINT,
  Name VARCHAR(200) NOT NULL,
  XmlConfiguration TEXT NOT NULL,
  PRIMARY KEY (BusinessCalendarId),
  FOREIGN KEY (ApplicationId) REFERENCES IWA_Application(ApplicationId) ON DELETE CASCADE,
  UNIQUE (ApplicationId, Name)
) ENGINE=InnoDB;

CREATE TABLE IWA_ExternalNamingAndDirectory
(
  ExternalNamingAndDirectoryId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  UserFriendlyName VARCHAR(40) NOT NULL,
  ProviderName VARCHAR(40) NOT NULL,
  ProviderClass VARCHAR(200) NOT NULL,
  ConnectionUrl VARCHAR(2000) NOT NULL,
  AuthenticationKind VARCHAR(40) NOT NULL,
  UserName VARCHAR(200),
  UserPassword VARCHAR(200),
  Flags INTEGER NOT NULL,
  DefaultContext VARCHAR(200) NOT NULL,
  PRIMARY KEY (ExternalNamingAndDirectoryId),
  UNIQUE (ApplicationId, UserFriendlyName)
) ENGINE=InnoDB;

CREATE TABLE IWA_ExternalDatabase
(
  ExternalDatabaseId BIGINT NOT NULL,
  ParentExternalDatabaseId BIGINT,
  EnvironmentId BIGINT,
  UserFriendlyName VARCHAR(40) NOT NULL,
  ConnectionUrl TEXT NOT NULL,
  DriverName VARCHAR(200) NOT NULL,
  UserName VARCHAR(40),
  UserPassword VARCHAR(200),
  AccessFlags INTEGER NOT NULL,
  ApplicationId BIGINT NOT NULL,
  MaxNumberOfConnections INTEGER NOT NULL DEFAULT 1,
  AutoCommitEnabled BIT NOT NULL DEFAULT 1,
  PRIMARY KEY (ExternalDatabaseId),
  UNIQUE (ApplicationId, ParentExternalDatabaseId, EnvironmentId, UserFriendlyName)
) ENGINE=InnoDB;

CREATE TABLE IWA_ExternalDatabaseProperty
(
  ExternalDatabaseId BIGINT NOT NULL,
  ExternalDatabasePropertyId BIGINT NOT NULL,
  PropertyName VARCHAR(255) NOT NULL,
  PropertyValue TEXT NOT NULL,
  PRIMARY KEY (ExternalDatabasePropertyId),
  UNIQUE (ExternalDatabaseId, PropertyName)
) ENGINE=InnoDB;

CREATE TABLE IWA_ProcessModel
(
  ProcessModelId BIGINT NOT NULL,
  Name VARCHAR(40) NOT NULL,
  Description VARCHAR(2000) DEFAULT '',
  `State` INTEGER NOT NULL,
  ApplicationId BIGINT NOT NULL,
  PRIMARY KEY (ProcessModelId),
  UNIQUE (ApplicationId, Name)
) ENGINE=InnoDB;

CREATE TABLE IWA_ProcessModelVersion
(
  ProcessModelVersionId BIGINT NOT NULL,
  ProcessModelId BIGINT NOT NULL,
  VersionNumber INTEGER NOT NULL,
  Name VARCHAR(200) NOT NULL,
  Description TEXT NOT NULL,
  `State` INTEGER NOT NULL,
  ReleaseState INTEGER NOT NULL,
  ReleaseTimestamp DATETIME,
  ScheduledReleaseTimestamp DATETIME,
  ProjectDirectory VARCHAR(500),
  ProjectName VARCHAR(200) NOT NULL,
  Changed DATETIME NOT NULL,
  ChangedBy VARCHAR(50) NOT NULL,
  ChangedFromHost VARCHAR(50) NOT NULL,
  NumberOfElements INTEGER NOT NULL,
  PRIMARY KEY (ProcessModelVersionId),
  UNIQUE (ProcessModelId, VersionNumber)
) ENGINE=InnoDB;

CREATE TABLE IWA_Library
(
  LibraryId BIGINT NOT NULL,
  ProcessModelVersionId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  Id VARCHAR(200) NOT NULL,
  Version VARCHAR(50) NOT NULL DEFAULT '',
  Provider VARCHAR(200) NOT NULL,
  Name VARCHAR(200) NOT NULL,
  Description TEXT NOT NULL,
  PRIMARY KEY (LibraryId),
  FOREIGN KEY (ProcessModelVersionId) REFERENCES IWA_ProcessModelVersion(ProcessModelVersionId) ON DELETE CASCADE,
  FOREIGN KEY (ApplicationId) REFERENCES IWA_Application(ApplicationId) ON DELETE CASCADE,
  UNIQUE (ApplicationId, Id, Version),
  UNIQUE (ProcessModelVersionId)
) ENGINE=InnoDB;

CREATE TABLE IWA_LibrarySpecification
(
  LibrarySpecificationId BIGINT NOT NULL,
  LibraryId BIGINT NOT NULL,
  Id VARCHAR(200) NOT NULL,
  ResolvedLibraryId BIGINT,
  `Position` INTEGER NOT NULL,
  PRIMARY KEY (LibrarySpecificationId),
  FOREIGN KEY (LibraryId) REFERENCES IWA_Library(LibraryId) ON DELETE CASCADE,
  FOREIGN KEY (ResolvedLibraryId) REFERENCES IWA_Library(LibraryId) ON DELETE SET NULL,
  UNIQUE (LibraryId, Id)
) ENGINE=InnoDB;

CREATE TABLE IWA_LibraryVersionSpec
(
  LibraryVersionSpecId BIGINT NOT NULL,
  LibrarySpecificationId BIGINT NOT NULL,
  Version VARCHAR(50) NOT NULL DEFAULT '',
  Inclusive BIT NOT NULL,
  Minimum BIT NOT NULL,
  PRIMARY KEY (LibraryVersionSpecId),
  FOREIGN KEY (LibrarySpecificationId) REFERENCES IWA_LibrarySpecification(LibrarySpecificationId) ON DELETE CASCADE,
  UNIQUE (LibrarySpecificationId, Minimum)
) ENGINE=InnoDB;

CREATE TABLE IWA_PageElement
(
  PageElementId BIGINT NOT NULL,
  ProcessModelVersionId BIGINT NOT NULL,
  PID VARCHAR(200) NOT NULL,
  Name VARCHAR(200) NOT NULL,
  PageArchiveEnabled BIT NOT NULL,
  PRIMARY KEY (PageElementId),
  UNIQUE (ProcessModelVersionId, PID)
) ENGINE=InnoDB;

CREATE TABLE IWA_ProcessModelVersionRole
(
  ProcessModelVersionId BIGINT NOT NULL,
  RoleId BIGINT NOT NULL,
  PRIMARY KEY (ProcessModelVersionId, RoleId)
) ENGINE=InnoDB;

CREATE TABLE IWA_Role
(
  RoleId BIGINT NOT NULL,
  Name VARCHAR(200) NOT NULL,
  DisplayNameTemplate VARCHAR(200),
  DisplayDescriptionTemplate VARCHAR(200) DEFAULT '',
  ParentRoleId BIGINT,
  ApplicationId BIGINT NOT NULL,
  ExternalSecurityName VARCHAR(500),
  IsDynamic BIT NOT NULL,
  PRIMARY KEY (RoleId),
  UNIQUE (ApplicationId, Name),
  INDEX IWA_Role_ExternalSecurityNameIndex (ApplicationId, ExternalSecurityName(253))
) ENGINE=InnoDB;

CREATE TABLE IWA_RoleProperty
(
  RoleId BIGINT NOT NULL,
  RolePropertyId BIGINT NOT NULL,
  PropertyName VARCHAR(255) NOT NULL,
  PropertyValue TEXT NOT NULL,
  PRIMARY KEY (RolePropertyId),
  UNIQUE (RoleId, PropertyName)
) ENGINE=InnoDB;

CREATE TABLE IWA_RoleRoleMember
(
  RoleId BIGINT NOT NULL,
  RoleMemberId BIGINT NOT NULL,
  PRIMARY KEY (RoleId, RoleMemberId)
) ENGINE=InnoDB;

CREATE TABLE IWA_User
(
  UserId BIGINT NOT NULL,
  Name VARCHAR(200) NOT NULL,
  FullName VARCHAR(200) DEFAULT '',
  UserPassword VARCHAR(200) NOT NULL,
  EMailLanguageId BIGINT,
  ApplicationId BIGINT NOT NULL,
  ExternalSecurityName VARCHAR(500),
  EMailAddress VARCHAR(200),
  EMailNotificationSettings INTEGER NOT NULL DEFAULT 0,
  `State` INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (UserId),
  UNIQUE (ApplicationId, Name),
  INDEX IWA_User_ExternalSecurityNameIndex (ApplicationId, ExternalSecurityName(253))
) ENGINE=InnoDB;

CREATE TABLE IWA_UserRole
(
  RoleId BIGINT NOT NULL,
  UserId BIGINT NOT NULL,
  PRIMARY KEY (RoleId, UserId)
) ENGINE=InnoDB;

CREATE TABLE IWA_UserProperty
(
  UserId BIGINT NOT NULL,
  UserPropertyId BIGINT NOT NULL,
  PropertyName VARCHAR(255) NOT NULL,
  PropertyValue TEXT NOT NULL,
  PRIMARY KEY (UserPropertyId),
  UNIQUE (UserId, PropertyName)
) ENGINE=InnoDB;

CREATE TABLE IWA_RichDialogUserContext
(
  UserId BIGINT NOT NULL,
  RichDialogUserContextId BIGINT NOT NULL,
  ComponentName VARCHAR(255) NOT NULL,
  ContextName VARCHAR(255) NOT NULL,
  ContextStore TEXT NOT NULL,
  PRIMARY KEY (RichDialogUserContextId),
  UNIQUE (UserId, ComponentName, ContextName)
) ENGINE=InnoDB;

CREATE TABLE IWA_UserAbsence
(
  UserAbsenceId BIGINT NOT NULL,
  UserId BIGINT NOT NULL,
  StartTimestamp DATETIME NOT NULL,
  StopTimestamp DATETIME,
  Description VARCHAR(200) NOT NULL,
  PRIMARY KEY (UserAbsenceId),
  INDEX IWA_UserAbsence_UserId (UserId)
) ENGINE=InnoDB;

CREATE TABLE IWA_UserSubstitute
(
  UserSubstituteId BIGINT NOT NULL,
  UserId BIGINT NOT NULL,
  SubstituteUserId BIGINT NOT NULL,
  SubstituteForRoleId BIGINT,
  Description VARCHAR(200) NOT NULL,
  PRIMARY KEY (UserSubstituteId),
  UNIQUE (UserId, SubstituteUserId, SubstituteForRoleId),
  INDEX IWA_UserSubstitute_UserIdIndex (UserId),
  INDEX IWA_UserSubstitute_SubstituteUserIdIndex (SubstituteUserId)
) ENGINE=InnoDB;

CREATE TABLE IWA_TaskElement
(
  TaskElementId BIGINT NOT NULL,
  ProcessModelVersionId BIGINT NOT NULL,
  Name VARCHAR(200) NOT NULL,
  Description TEXT NOT NULL,
  ProcessElementId VARCHAR(200) NOT NULL,
  JoinPathes INTEGER NOT NULL,
  Kind INTEGER NOT NULL,
  PRIMARY KEY (TaskElementId),
  UNIQUE (ProcessModelVersionId, ProcessElementId)
) ENGINE=InnoDB;

CREATE TABLE IWA_TaskStart
(
  TaskStartId BIGINT NOT NULL,
  TaskElementId BIGINT NOT NULL,
  StartRequestPath VARCHAR(200) NOT NULL,
  UserFriendlyStartRequestPath VARCHAR(500) NOT NULL,
  PRIMARY KEY (TaskStartId),
  UNIQUE (TaskElementId, StartRequestPath)
) ENGINE=InnoDB;

CREATE TABLE IWA_TaskEnd
(
  TaskEndId BIGINT NOT NULL,
  TaskElementId BIGINT NOT NULL,
  JoinRequestPath VARCHAR(200),
  UserFriendlyJoinRequestPath VARCHAR(500),
  JoinPathId INTEGER,
  PRIMARY KEY (TaskEndId),
  UNIQUE (TaskElementId, JoinRequestPath),
  UNIQUE (TaskElementId, JoinPathId)
) ENGINE=InnoDB;

CREATE TABLE IWA_TaskSwitchEvent
(
  TaskSwitchEventId BIGINT NOT NULL,
  TaskElementId BIGINT NOT NULL,
  CaseId BIGINT NOT NULL,
  ExecutionTimestamp DATETIME NOT NULL,
  PRIMARY KEY (TaskSwitchEventId)
) ENGINE=InnoDB;

CREATE TABLE IWA_StartElement
(
  ActivatorRoleId BIGINT,
  TaskStartId BIGINT NOT NULL,
  ActivatorUserId BIGINT,
  IsVisible BIT NOT NULL DEFAULT 1,
  PersistOnStart BIT NOT NULL,
  TriggerSignature VARCHAR(2000) NOT NULL,
  PRIMARY KEY (TaskStartId)
) ENGINE=InnoDB;

CREATE TABLE IWA_StartEventElement
(
  EventBeanClassName VARCHAR(200) NOT NULL,
  EventBeanConfiguration TEXT,
  IsEventBeanEnabled BIT NOT NULL,
  TaskStartId BIGINT NOT NULL,
  ActivatorRoleId BIGINT,
  PRIMARY KEY (TaskStartId)
) ENGINE=InnoDB;

CREATE TABLE IWA_WebServiceProcess
(
  WebServiceProcessId BIGINT NOT NULL,
  ProcessModelVersionId BIGINT NOT NULL,
  ProcessIdentifier VARCHAR(200) NOT NULL,
  Name VARCHAR(200) NOT NULL,
  Description VARCHAR(2000) NOT NULL,
  WebServiceImplClassName VARCHAR(200) NOT NULL,
  AuthenticationType INTEGER NOT NULL,
  PRIMARY KEY (WebServiceProcessId)
) ENGINE=InnoDB;

CREATE TABLE IWA_WebServiceProcStartElement
(
  Signature VARCHAR(2000) NOT NULL,
  UseAuthentication BIT NOT NULL,
  ActivatorRoleId BIGINT,
  TaskStartId BIGINT NOT NULL,
  WebServiceProcessId BIGINT NOT NULL,
  PRIMARY KEY (TaskStartId),
  FOREIGN KEY (WebServiceProcessId) REFERENCES IWA_WebServiceProcess(WebServiceProcessId) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IWA_IntermediateEventElement
(
  IntermediateEventBeanClassName VARCHAR(200) NOT NULL,
  IntermediateEventBeanConfig TEXT,
  IsIntermediateEventBeanEnabled BIT NOT NULL,
  TaskStartId BIGINT NOT NULL,
  PRIMARY KEY (TaskStartId)
) ENGINE=InnoDB;

CREATE TABLE IWA_Case
(
  CaseId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  ProcessModelId BIGINT NOT NULL,
  TaskStartId BIGINT NOT NULL,
  CreatorUserId BIGINT,
  CreatorUserName VARCHAR(200),
  CreatorTaskId BIGINT,
  EnvironmentId BIGINT,
  DisplayNameTemplate VARCHAR(200),
  Name VARCHAR(200) NOT NULL,
  DisplayDescriptionTemplate TEXT,
  Description TEXT NOT NULL,
  StartTimestamp DATETIME NOT NULL,
  EndTimestamp DATETIME,
  BusinessCalendarId BIGINT,
  WorkingTime BIGINT,
  BusinessRuntime BIGINT,
  `State` INTEGER NOT NULL,
  Priority INTEGER NOT NULL,
  ProcessCategoryCode VARCHAR(20),
  ProcessCategoryName VARCHAR(200),
  ProcessCode VARCHAR(20),
  ProcessName VARCHAR(200),
  TypeCode VARCHAR(20),
  TypeName VARCHAR(200),
  SubTypeCode VARCHAR(20),
  SubTypeName VARCHAR(200),
  BusinessStartTimestamp DATETIME,
  BusinessMilestoneTimestamp DATETIME,
  BusinessPriority VARCHAR(200),
  BusinessCreatorUser VARCHAR(200),
  BusinessMainContactType VARCHAR(200),
  BusinessMainContactId INTEGER,
  BusinessMainContactName VARCHAR(200),
  BusinessMainContactDocDbCode VARCHAR(20),
  BusinessMainContactFolderId VARCHAR(200),
  BusinessCorrespondentId INTEGER,
  BusinessObjectCode VARCHAR(20),
  BusinessObjectName VARCHAR(200),
  BusinessObjectDocDbCode VARCHAR(20),
  BusinessObjectFolderId VARCHAR(200),
  CustomVarCharField1 VARCHAR(2000),
  CustomVarCharField2 VARCHAR(2000),
  CustomVarCharField3 VARCHAR(2000),
  CustomVarCharField4 VARCHAR(2000),
  CustomVarCharField5 VARCHAR(2000),
  CustomDecimalField1 DECIMAL(30, 10),
  CustomDecimalField2 DECIMAL(30, 10),
  CustomDecimalField3 DECIMAL(30, 10),
  CustomDecimalField4 DECIMAL(30, 10),
  CustomDecimalField5 DECIMAL(30, 10),
  CustomTimestampField1 DATETIME,
  CustomTimestampField2 DATETIME,
  CustomTimestampField3 DATETIME,
  CustomTimestampField4 DATETIME,
  CustomTimestampField5 DATETIME,
  PRIMARY KEY (CaseId),
  FOREIGN KEY (EnvironmentId) REFERENCES IWA_Environment(EnvironmentId) ON DELETE SET NULL,
  FOREIGN KEY (BusinessCalendarId) REFERENCES IWA_BusinessCalendar(BusinessCalendarId) ON DELETE SET NULL,
  INDEX IWA_Case_CreatorUserIdIndex (CreatorUserId),
  INDEX IWA_Case_ApplicationIdIndex (ApplicationId),
  INDEX IWA_Case_ProcessModelIdIndex (ProcessModelId),
  INDEX IWA_Case_TaskStartIdIndex (TaskStartId),
  INDEX IWA_Case_CreatorTaskIdIndex (CreatorTaskId),
  INDEX IWA_Case_ApplicationIdCreationTimestampStateIndex (ApplicationId, StartTimestamp, `State`),
  INDEX IWA_Case_NameIndex (Name),
  INDEX IWA_Case_WorkingTime (WorkingTime),
  INDEX IWA_Case_BusinessRuntime (BusinessRuntime),
  INDEX IWA_Case_ProcessCategoryCode (ProcessCategoryCode),
  INDEX IWA_Case_ProcessCode (ProcessCode),
  INDEX IWA_Case_TypeCode (TypeCode),
  INDEX IWA_Case_EndTimestamp (EndTimestamp),
  INDEX IWA_Case_SubTypeCode (SubTypeCode),
  INDEX IWA_Case_BusinessObjectCode (BusinessObjectCode),
  INDEX IWA_Case_CustVarCharFld1Idx (CustomVarCharField1(255)),
  INDEX IWA_Case_CustVarCharFld2Idx (CustomVarCharField2(255)),
  INDEX IWA_Case_CustVarCharFld3Idx (CustomVarCharField3(255)),
  INDEX IWA_Case_CustVarCharFld4Idx (CustomVarCharField4(255)),
  INDEX IWA_Case_CustVarCharFld5Idx (CustomVarCharField5(255)),
  INDEX IWA_Case_CustDecimalFld1Idx (CustomDecimalField1),
  INDEX IWA_Case_CustDecimalFld2Idx (CustomDecimalField2),
  INDEX IWA_Case_CustDecimalFld3Idx (CustomDecimalField3),
  INDEX IWA_Case_CustDecimalFld4Idx (CustomDecimalField4),
  INDEX IWA_Case_CustDecimalFld5Idx (CustomDecimalField5),
  INDEX IWA_Case_CustTimestmpFld1Idx (CustomTimestampField1),
  INDEX IWA_Case_CustTimestmpFld2Idx (CustomTimestampField2),
  INDEX IWA_Case_CustTimestmpFld3Idx (CustomTimestampField3),
  INDEX IWA_Case_CustTimestmpFld4Idx (CustomTimestampField4),
  INDEX IWA_Case_CustTimestmpFld5Idx (CustomTimestampField5)
) ENGINE=InnoDB;

CREATE TABLE IWA_Task
(
  TaskId BIGINT NOT NULL,
  CaseId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  ProcessModelId BIGINT NOT NULL,
  StartTaskSwitchEventId BIGINT NOT NULL,
  EndTaskSwitchEventId BIGINT,
  TaskStartId BIGINT NOT NULL,
  TaskEndId BIGINT,
  WorkerUserId BIGINT,
  WorkerUserName VARCHAR(200),
  WorkerSessionId INTEGER,
  ActivatorRoleId BIGINT,
  ActivatorUserId BIGINT,
  ActivatorName VARCHAR(200),
  ExpiryActivatorRoleId BIGINT,
  ExpiryActivatorUserId BIGINT,
  ExpiryActivatorName VARCHAR(200),
  ExpiryPriority INTEGER NOT NULL,
  ExpiryTimestamp DATETIME,
  ExpiryTaskStartElementPid VARCHAR(200),
  IsExpired BIT NOT NULL,
  ExpiredCreatorTaskId BIGINT,
  TimeoutedCreatorIntrmdtEventId BIGINT,
  DelayTimestamp DATETIME,
  `State` INTEGER NOT NULL,
  RequestPath VARCHAR(200) NOT NULL,
  DisplayNameTemplate VARCHAR(200),
  Name VARCHAR(200) NOT NULL,
  DisplayDescriptionTemplate TEXT,
  Description TEXT NOT NULL,
  Priority INTEGER NOT NULL,
  StartTimestamp DATETIME NOT NULL,
  EndTimestamp DATETIME,
  BusinessCalendarId BIGINT,
  WorkingTime BIGINT,
  BusinessRuntime BIGINT,
  FailedTimeoutTimestamp DATETIME,
  NumberOfFailures INTEGER NOT NULL,
  NumberOfResumes INTEGER,
  KindCode VARCHAR(20),
  KindName VARCHAR(200),
  BusinessMilestoneTimestamp DATETIME,
  CustomVarCharField1 VARCHAR(2000),
  CustomVarCharField2 VARCHAR(2000),
  CustomVarCharField3 VARCHAR(2000),
  CustomVarCharField4 VARCHAR(2000),
  CustomVarCharField5 VARCHAR(2000),
  CustomDecimalField1 DECIMAL(30, 10),
  CustomDecimalField2 DECIMAL(30, 10),
  CustomDecimalField3 DECIMAL(30, 10),
  CustomDecimalField4 DECIMAL(30, 10),
  CustomDecimalField5 DECIMAL(30, 10),
  CustomTimestampField1 DATETIME,
  CustomTimestampField2 DATETIME,
  CustomTimestampField3 DATETIME,
  CustomTimestampField4 DATETIME,
  CustomTimestampField5 DATETIME,
  IsUpdatedOnStart BIT NOT NULL,
  IsOffline BIT NOT NULL DEFAULT 0,
  PRIMARY KEY (TaskId),
  FOREIGN KEY (BusinessCalendarId) REFERENCES IWA_BusinessCalendar(BusinessCalendarId) ON DELETE SET NULL,
  INDEX IWA_Task_CaseIdIndex (CaseId),
  INDEX IWA_Task_WorkerUserIdIndex (WorkerUserId),
  INDEX IWA_Task_ProcessModelIdIndex (ProcessModelId),
  INDEX IWA_Task_ApplicationIdIndex (ApplicationId),
  INDEX IWA_Task_ActivatorUserIdIndex (ActivatorUserId),
  INDEX IWA_Task_ActivatorRoleIdIndex (ActivatorRoleId),
  INDEX IWA_Task_ExpiryActivatorUserIdIndex (ExpiryActivatorUserId),
  INDEX IWA_Task_ExpiryActivatorRoleIdIndex (ExpiryActivatorRoleId),
  INDEX IWA_Task_NameIndex (Name),
  INDEX IWA_Task_StateIndex (`State`),
  INDEX IWA_Task_EndTimestamp (EndTimestamp),
  INDEX IWA_Task_WorkingTime (WorkingTime),
  INDEX IWA_Task_BusinessRuntime (BusinessRuntime),
  INDEX IWA_Task_NumberOfResumes (NumberOfResumes),
  INDEX IWA_Task_KindCodeIndex (KindCode),
  INDEX IWA_Task_CustVarCharFld1Idx (CustomVarCharField1(255)),
  INDEX IWA_Task_CustVarCharFld2Idx (CustomVarCharField2(255)),
  INDEX IWA_Task_CustVarCharFld3Idx (CustomVarCharField3(255)),
  INDEX IWA_Task_CustVarCharFld4Idx (CustomVarCharField4(255)),
  INDEX IWA_Task_CustVarCharFld5Idx (CustomVarCharField5(255)),
  INDEX IWA_Task_CustDecimalFld1Idx (CustomDecimalField1),
  INDEX IWA_Task_CustDecimalFld2Idx (CustomDecimalField2),
  INDEX IWA_Task_CustDecimalFld3Idx (CustomDecimalField3),
  INDEX IWA_Task_CustDecimalFld4Idx (CustomDecimalField4),
  INDEX IWA_Task_CustDecimalFld5Idx (CustomDecimalField5),
  INDEX IWA_Task_CustTimestmpFld1Idx (CustomTimestampField1),
  INDEX IWA_Task_CustTimestmpFld2Idx (CustomTimestampField2),
  INDEX IWA_Task_CustTimestmpFld3Idx (CustomTimestampField3),
  INDEX IWA_Task_CustTimestmpFld4Idx (CustomTimestampField4),
  INDEX IWA_Task_CustTimestmpFld5Idx (CustomTimestampField5)
) ENGINE=InnoDB;

CREATE TABLE IWA_TaskData
(
  TaskId BIGINT NOT NULL,
  TaskData MEDIUMBLOB NOT NULL,
  PRIMARY KEY (TaskId)
) ENGINE=InnoDB;

CREATE TABLE IWA_StartTaskData
(
  TaskSwitchEventId BIGINT NOT NULL,
  StartTaskData MEDIUMBLOB NOT NULL,
  PRIMARY KEY (TaskSwitchEventId)
) ENGINE=InnoDB;

CREATE TABLE IWA_WorkflowEvent
(
  WorkflowEventId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  CaseId BIGINT NOT NULL,
  TaskId BIGINT,
  EventTimestamp DATETIME NOT NULL,
  UserName VARCHAR(200) NOT NULL,
  UserId BIGINT,
  EventKind INTEGER NOT NULL,
  AdditionalInfo1 VARCHAR(200),
  AdditionalInfo2 VARCHAR(200),
  AdditionalInfo3 VARCHAR(200),
  AdditionalInfo4 VARCHAR(200),
  AdditionalInfo5 VARCHAR(200),
  CaseState INTEGER NOT NULL,
  TaskState INTEGER,
  PRIMARY KEY (WorkflowEventId),
  INDEX IWA_WorkflowEvent_ApplicationIdIndex (ApplicationId),
  INDEX IWA_WorkflowEvent_CaseIdIndex (CaseId),
  INDEX IWA_WorkflowEvent_TaskIdIndex (TaskId),
  INDEX IWA_WorkflowEvent_EventTimestampIndex (EventTimestamp),
  INDEX IWA_WorkflowEvent_UserNameIndex (UserName),
  INDEX IWA_WorkflowEvent_UserIdIndex (UserId),
  INDEX IWA_WorkflowEvent_EventKindIndex (EventKind)
) ENGINE=InnoDB;

CREATE TABLE IWA_IntermediateEvent
(
  IntermediateEventId BIGINT NOT NULL,
  TaskStartId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  TaskId BIGINT,
  EventId VARCHAR(200) NOT NULL,
  `State` INTEGER NOT NULL,
  EventTimestamp DATETIME,
  TimeoutTimestamp DATETIME,
  TimeoutTaskStartElementId VARCHAR(200),
  TimeoutAction INTEGER NOT NULL,
  AdditionalInformation VARCHAR(2000),
  PRIMARY KEY (IntermediateEventId),
  UNIQUE (TaskStartId, EventId),
  INDEX IWA_IntrmdtEvnt_TaskStartId (TaskStartId),
  INDEX IWA_IntermediateEvent_TaskId (TaskId),
  INDEX IWA_IntermediateEvent_EventId (EventId),
  INDEX IWA_IntermediateEvent_State (`State`),
  INDEX IWA_IntrmdtEvnt_TimeoutTmstmp (TimeoutTimestamp)
) ENGINE=InnoDB;

CREATE TABLE IWA_IntermediateEventData
(
  IntermediateEventId BIGINT NOT NULL,
  ResultObjectData MEDIUMBLOB NOT NULL,
  PRIMARY KEY (IntermediateEventId)
) ENGINE=InnoDB;

CREATE TABLE IWA_EventLog
(
  EventLogId BIGINT NOT NULL,
  `TimeStamp` DATETIME,
  Server VARCHAR(255),
  `System` VARCHAR(20),
  Subsystem VARCHAR(20),
  ApplicationName VARCHAR(40),
  Environment VARCHAR(200),
  GroupId VARCHAR(20),
  EventDate DATETIME,
  EventTime DATETIME,
  Initiator VARCHAR(200),
  UserName VARCHAR(200),
  Source VARCHAR(255),
  Severity INTEGER,
  ObjectId VARCHAR(20),
  ObjectType VARCHAR(40),
  ObjectSubType VARCHAR(40),
  Context VARCHAR(255),
  IsBusinessEvent BIT,
  EventCategory VARCHAR(20),
  EventSubCategory VARCHAR(20),
  EventType VARCHAR(20),
  EventSubType VARCHAR(20),
  UserComment VARCHAR(255),
  ErrorCode VARCHAR(20),
  `Message` VARCHAR(255),
  PRIMARY KEY (EventLogId),
  INDEX IWA_EventLog_System (`System`),
  INDEX IWA_EventLog_Subsystem (Subsystem),
  INDEX IWA_EventLog_ApplicationName (ApplicationName),
  INDEX IWA_EventLog_Environment (Environment),
  INDEX IWA_EventLog_ObjectType (ObjectType),
  INDEX IWA_EventLog_ObjectSubType (ObjectSubType),
  INDEX IWA_EventLog_ObjectId (ObjectId),
  INDEX IWA_EventLog_EventDate (EventDate),
  INDEX IWA_EventLog_EventTime (EventTime)
) ENGINE=InnoDB;

CREATE TABLE IWA_EventLogData
(
  EventLogId BIGINT NOT NULL,
  EventData TEXT NOT NULL,
  PRIMARY KEY (EventLogId),
  FOREIGN KEY (EventLogId) REFERENCES IWA_EventLog(EventLogId) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IWA_EventLogTaskHistory
(
  TaskId BIGINT NOT NULL,
  CaseId BIGINT NOT NULL,
  EventLogId BIGINT NOT NULL,
  WorkerUserName VARCHAR(200),
  Name VARCHAR(200) NOT NULL,
  Description VARCHAR(2000) NOT NULL,
  Priority INTEGER NOT NULL,
  KindCode VARCHAR(20),
  KindName VARCHAR(200),
  BusinessMilestoneTimestamp DATETIME,
  CustomVarCharField1 VARCHAR(2000),
  CustomVarCharField2 VARCHAR(2000),
  CustomVarCharField3 VARCHAR(2000),
  CustomVarCharField4 VARCHAR(2000),
  CustomVarCharField5 VARCHAR(2000),
  CustomDecimalField1 DECIMAL(30, 10),
  CustomDecimalField2 DECIMAL(30, 10),
  CustomDecimalField3 DECIMAL(30, 10),
  CustomDecimalField4 DECIMAL(30, 10),
  CustomDecimalField5 DECIMAL(30, 10),
  CustomTimestampField1 DATETIME,
  CustomTimestampField2 DATETIME,
  CustomTimestampField3 DATETIME,
  CustomTimestampField4 DATETIME,
  CustomTimestampField5 DATETIME,
  PRIMARY KEY (EventLogId),
  FOREIGN KEY (EventLogId) REFERENCES IWA_EventLog(EventLogId) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IWA_EventLogCaseHistory
(
  CaseId BIGINT NOT NULL,
  ApplicationName VARCHAR(40) NOT NULL,
  ProcessModelName VARCHAR(40) NOT NULL,
  CreatorUserName VARCHAR(200),
  Name VARCHAR(200) NOT NULL,
  DisplayDescriptionTemplate VARCHAR(2000),
  Description VARCHAR(2000) NOT NULL,
  StartTimestamp DATETIME NOT NULL,
  EndTimestamp DATETIME,
  Priority INTEGER NOT NULL,
  ProcessCategoryCode VARCHAR(20),
  ProcessCategoryName VARCHAR(200),
  ProcessCode VARCHAR(20),
  ProcessName VARCHAR(200),
  TypeCode VARCHAR(20),
  TypeName VARCHAR(200),
  SubTypeCode VARCHAR(20),
  SubTypeName VARCHAR(200),
  BusinessStartTimestamp DATETIME,
  BusinessMilestoneTimestamp DATETIME,
  BusinessPriority VARCHAR(200),
  BusinessCreatorUser VARCHAR(200),
  BusinessMainContactType VARCHAR(200),
  BusinessMainContactId INTEGER,
  BusinessMainContactName VARCHAR(200),
  BusinessMainContactDocDbCode VARCHAR(20),
  BusinessMainContactFolderId VARCHAR(200),
  BusinessCorrespondentId INTEGER,
  BusinessObjectCode VARCHAR(20),
  BusinessObjectName VARCHAR(200),
  BusinessObjectDocDbCode VARCHAR(20),
  BusinessObjectFolderId VARCHAR(200),
  CustomVarCharField1 VARCHAR(2000),
  CustomVarCharField2 VARCHAR(2000),
  CustomVarCharField3 VARCHAR(2000),
  CustomVarCharField4 VARCHAR(2000),
  CustomVarCharField5 VARCHAR(2000),
  CustomDecimalField1 DECIMAL(30, 10),
  CustomDecimalField2 DECIMAL(30, 10),
  CustomDecimalField3 DECIMAL(30, 10),
  CustomDecimalField4 DECIMAL(30, 10),
  CustomDecimalField5 DECIMAL(30, 10),
  CustomTimestampField1 DATETIME,
  CustomTimestampField2 DATETIME,
  CustomTimestampField3 DATETIME,
  CustomTimestampField4 DATETIME,
  CustomTimestampField5 DATETIME,
  PRIMARY KEY (CaseId)
) ENGINE=InnoDB;

CREATE TABLE IWA_EventLogStatus
(
  EventLogId BIGINT NOT NULL,
  LastModificationTimestamp DATETIME NOT NULL,
  Status INTEGER NOT NULL,
  PRIMARY KEY (EventLogId),
  FOREIGN KEY (EventLogId) REFERENCES IWA_EventLog(EventLogId) ON DELETE CASCADE,
  INDEX IWA_EventLogStatus_StateEventLogIdIndex (Status, EventLogId)
) ENGINE=InnoDB;

CREATE TABLE IWA_Note
(
  NoteId BIGINT NOT NULL,
  UserId BIGINT,
  UserName VARCHAR(200) NOT NULL,
  `Timestamp` DATETIME NOT NULL,
  Note MEDIUMTEXT NOT NULL,
  PRIMARY KEY (NoteId),
  INDEX IWA_Note_UserIdIndex (UserId)
) ENGINE=InnoDB;

CREATE TABLE IWA_TaskNote
(
  TaskId BIGINT NOT NULL,
  NoteId BIGINT NOT NULL,
  PRIMARY KEY (TaskId, NoteId)
) ENGINE=InnoDB;

CREATE TABLE IWA_CaseNote
(
  CaseId BIGINT NOT NULL,
  NoteId BIGINT NOT NULL,
  PRIMARY KEY (CaseId, NoteId)
) ENGINE=InnoDB;

CREATE TABLE IWA_AdditionalProperty
(
  AdditionalPropertyId BIGINT NOT NULL,
  Name VARCHAR(200) NOT NULL,
  `Value` MEDIUMTEXT NOT NULL,
  PRIMARY KEY (AdditionalPropertyId),
  INDEX IWA_AdditionalProperty_NameIndex (Name)
) ENGINE=InnoDB;

CREATE TABLE IWA_TaskAdditionalProperty
(
  TaskId BIGINT NOT NULL,
  AdditionalPropertyId BIGINT NOT NULL,
  PRIMARY KEY (TaskId, AdditionalPropertyId)
) ENGINE=InnoDB;

CREATE TABLE IWA_CaseAdditionalProperty
(
  CaseId BIGINT NOT NULL,
  AdditionalPropertyId BIGINT NOT NULL,
  PRIMARY KEY (CaseId, AdditionalPropertyId)
) ENGINE=InnoDB;

CREATE TABLE IWA_UserLocation
(
  UserLocationId BIGINT NOT NULL,
  UserId BIGINT NOT NULL,
  `Type` VARCHAR(200) NOT NULL,
  Note VARCHAR(2000) NOT NULL,
  Name VARCHAR(200) NOT NULL,
  Address VARCHAR(200) NOT NULL,
  Latitude DECIMAL(10, 8) NOT NULL,
  Longitude DECIMAL(11, 8) NOT NULL,
  Altitude DECIMAL(8, 3) NOT NULL,
  AccuracyHorizontal DECIMAL(8, 3),
  AccuracyVertical DECIMAL(8, 3),
  Speed DECIMAL(8, 3),
  Bearing DECIMAL(6, 3),
  LocationTimestamp DATETIME,
  PRIMARY KEY (UserLocationId),
  INDEX IWA_UserLocation_UserId (UserId)
) ENGINE=InnoDB;

CREATE TABLE IWA_TaskLocation
(
  TaskLocationId BIGINT NOT NULL,
  TaskId BIGINT NOT NULL,
  `Type` VARCHAR(200) NOT NULL,
  Note VARCHAR(2000) NOT NULL,
  Name VARCHAR(200) NOT NULL,
  Address VARCHAR(200) NOT NULL,
  Latitude DECIMAL(10, 8) NOT NULL,
  Longitude DECIMAL(11, 8) NOT NULL,
  Altitude DECIMAL(8, 3) NOT NULL,
  AccuracyHorizontal DECIMAL(8, 3),
  AccuracyVertical DECIMAL(8, 3),
  Speed DECIMAL(8, 3),
  Bearing DECIMAL(6, 3),
  LocationTimestamp DATETIME,
  PRIMARY KEY (TaskLocationId),
  INDEX IWA_TaskLocation_TaskId (TaskId)
) ENGINE=InnoDB;

CREATE TABLE IWA_TaskSignalEventReceiver
(
  TaskSignalEventId BIGINT NOT NULL,
  WaitingTaskId BIGINT NOT NULL,
  SignalCodePattern VARCHAR(200) NOT NULL,
  SignaledTaskTaskStartId BIGINT NOT NULL,
  StartedSignaledTaskId BIGINT,
  PRIMARY KEY (TaskSignalEventId),
  FOREIGN KEY (SignaledTaskTaskStartId) REFERENCES IWA_TaskStart(TaskStartId) ON DELETE CASCADE,
  INDEX IWA_TskSigEvntRcvr_WtingTaskId (WaitingTaskId),
  INDEX IWA_TskSigEvntRcvr_StrtSgTskId (StartedSignaledTaskId)
) ENGINE=InnoDB;

CREATE TABLE IWA_SignaledTask
(
  SignaledTaskId BIGINT NOT NULL,
  SignalCodePattern VARCHAR(200) NOT NULL,
  ReceivedSignalEventId BIGINT,
  PRIMARY KEY (SignaledTaskId),
  INDEX IWA_SigTask_RecvdSignalEventId (ReceivedSignalEventId)
) ENGINE=InnoDB;

CREATE TABLE IWA_SignalEvent
(
  SignalEventId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  SignalCode VARCHAR(200) NOT NULL,
  SentTimestamp DATETIME NOT NULL,
  SentByUserName VARCHAR(200),
  SentByUserId BIGINT,
  SentByTaskId BIGINT,
  SentByProcessElementPid VARCHAR(200),
  PRIMARY KEY (SignalEventId),
  INDEX IWA_SignalEvent_SignalCode (SignalCode),
  INDEX IWA_SignalEvent_SentTimestamp (SentTimestamp),
  INDEX IWA_SignalEvent_SentByTaskId (SentByTaskId),
  INDEX IWA_SignalEvent_SentByUserId (SentByUserId)
) ENGINE=InnoDB;

CREATE TABLE IWA_SignalEventData
(
  SignalEventId BIGINT NOT NULL,
  SignalData MEDIUMBLOB NOT NULL,
  PRIMARY KEY (SignalEventId)
) ENGINE=InnoDB;

CREATE TABLE IWA_StartSignalEventElement
(
  TaskStartId BIGINT NOT NULL,
  SignalCodePattern VARCHAR(200) NOT NULL,
  PRIMARY KEY (TaskStartId),
  INDEX IWA_StrtSigEvntElmnt_SgCdPttrn (SignalCodePattern)
) ENGINE=InnoDB;

CREATE TABLE IWA_PageArchive
(
  PageArchiveId BIGINT NOT NULL,
  UserId BIGINT,
  UserName VARCHAR(200),
  PageElementId BIGINT NOT NULL,
  TaskId BIGINT NOT NULL,
  SubmitTimestamp DATETIME NOT NULL,
  PageContent MEDIUMTEXT NOT NULL,
  PageContentType VARCHAR(255) NOT NULL,
  FormData MEDIUMTEXT NOT NULL,
  OriginalTemplateUri VARCHAR(500) NOT NULL,
  Name VARCHAR(200) NOT NULL,
  PRIMARY KEY (PageArchiveId),
  INDEX IWA_PageArchive_UserIdIndex (UserId),
  INDEX IWA_PageArchive_TaskIdIndex (TaskId)
) ENGINE=InnoDB;

CREATE TABLE IWA_ContentManagementSystem
(
  ContentManagementSystemId BIGINT NOT NULL,
  ApplicationId BIGINT NOT NULL,
  ProcessModelVersionId BIGINT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  Description VARCHAR(200) DEFAULT '',
  DefaultLocaleCode VARCHAR(5),
  DefaultPageLayoutId BIGINT,
  DefaultPageStyleSheetId BIGINT,
  PRIMARY KEY (ContentManagementSystemId),
  UNIQUE (Name, ProcessModelVersionId),
  INDEX IWA_ContentManagementSystem_ApplicationIdIndex (ApplicationId),
  INDEX IWA_ContentManagementSystem_ProcessModelVersionId (ProcessModelVersionId)
) ENGINE=InnoDB;

CREATE TABLE IWA_Language
(
  LanguageId BIGINT NOT NULL,
  LanguageCode VARCHAR(2) NOT NULL,
  CountryCode VARCHAR(2),
  LocaleCode VARCHAR(5) NOT NULL,
  PRIMARY KEY (LanguageId),
  UNIQUE (LanguageCode, CountryCode),
  UNIQUE (LocaleCode)
) ENGINE=InnoDB;

CREATE TABLE IWA_SupportedLanguage
(
  SupportedLanguageId BIGINT NOT NULL,
  ContentManagementSystemId BIGINT NOT NULL,
  LocaleCode VARCHAR(5) NOT NULL,
  PRIMARY KEY (SupportedLanguageId),
  INDEX IWA_SupportedLanguage_ContentManagementSystemIdIndex (ContentManagementSystemId)
) ENGINE=InnoDB;

CREATE TABLE IWA_ContentObjectType
(
  ContentObjectTypeId BIGINT NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Description VARCHAR(255) NOT NULL,
  MimeType VARCHAR(255),
  DataType VARCHAR(50),
  FileExtension VARCHAR(10),
  Downloadable INTEGER NOT NULL,
  IconKey VARCHAR(50),
  EditorName VARCHAR(50),
  Guid CHAR(16) NOT NULL,
  VisualOrder INTEGER NOT NULL,
  RendererName VARCHAR(255),
  PRIMARY KEY (ContentObjectTypeId),
  UNIQUE (Name)
) ENGINE=InnoDB;

CREATE TABLE IWA_ContentObject
(
  ContentObjectId BIGINT NOT NULL,
  ParentContentObjectId BIGINT,
  TreeLevel INTEGER NOT NULL,
  Name VARCHAR(200) NOT NULL,
  Description VARCHAR(255),
  Uri VARCHAR(255) NOT NULL,
  ContentObjectTypeId BIGINT NOT NULL,
  Changed DATETIME NOT NULL,
  ChangedBy VARCHAR(50),
  Guid CHAR(16) NOT NULL,
  VisualOrder INTEGER NOT NULL,
  ContentManagementSystemId BIGINT NOT NULL,
  PRIMARY KEY (ContentObjectId),
  UNIQUE (ContentManagementSystemId, Uri),
  INDEX IWA_ContentObject_ParentContentObjectIdIndex (ParentContentObjectId)
) ENGINE=InnoDB;

CREATE TABLE IWA_StartPage
(
  StartPageId BIGINT NOT NULL,
  ContentObjectId BIGINT,
  ExternalUri VARCHAR(500),
  ContentManagementSystemId BIGINT NOT NULL,
  PRIMARY KEY (StartPageId),
  INDEX IWA_StartPage_ContentManagementSystemIdIndex (ContentManagementSystemId)
) ENGINE=InnoDB;

CREATE TABLE IWA_ContentObjectValue
(
  ContentObjectValueId BIGINT NOT NULL,
  ContentObjectId BIGINT NOT NULL,
  Description VARCHAR(255),
  ValidFrom DATETIME NOT NULL,
  ValidTo DATETIME,
  LocaleCode VARCHAR(5) NOT NULL,
  Changed DATETIME NOT NULL,
  ChangedBy VARCHAR(50),
  IsDefault INTEGER NOT NULL,
  Guid CHAR(16) NOT NULL,
  PropertyString TEXT,
  PRIMARY KEY (ContentObjectValueId),
  INDEX IWA_ContentObjectValue_ContentObjectIdIndex (ContentObjectId)
) ENGINE=InnoDB;

CREATE TABLE IWA_ContentDataString
(
  ContentObjectValueId BIGINT NOT NULL,
  `Value` VARCHAR(255),
  PRIMARY KEY (ContentObjectValueId)
) ENGINE=InnoDB;

CREATE TABLE IWA_ContentDataInteger
(
  ContentObjectValueId BIGINT NOT NULL,
  `Value` INTEGER,
  PRIMARY KEY (ContentObjectValueId)
) ENGINE=InnoDB;

CREATE TABLE IWA_ContentDataFloat
(
  ContentObjectValueId BIGINT NOT NULL,
  `Value` FLOAT,
  PRIMARY KEY (ContentObjectValueId)
) ENGINE=InnoDB;

CREATE TABLE IWA_ContentDataDateTime
(
  ContentObjectValueId BIGINT NOT NULL,
  `Value` DATETIME,
  PRIMARY KEY (ContentObjectValueId)
) ENGINE=InnoDB;

CREATE TABLE IWA_ContentDataText
(
  ContentObjectValueId BIGINT NOT NULL,
  `Value` MEDIUMTEXT,
  PRIMARY KEY (ContentObjectValueId)
) ENGINE=InnoDB;

CREATE TABLE IWA_ContentDataImage
(
  ContentObjectValueId BIGINT NOT NULL,
  `Value` LONGBLOB,
  PRIMARY KEY (ContentObjectValueId)
) ENGINE=InnoDB;

CREATE TABLE IWA_ContentDataDecimal
(
  ContentObjectValueId BIGINT NOT NULL,
  `Value` DECIMAL(9, 2),
  PRIMARY KEY (ContentObjectValueId)
) ENGINE=InnoDB;

CREATE TABLE IWA_SecurityDescriptor
(
  SecurityDescriptorId BIGINT NOT NULL,
  SecurityDescriptorTypeId BIGINT NOT NULL,
  OwnerUserId BIGINT,
  PRIMARY KEY (SecurityDescriptorId)
) ENGINE=InnoDB;

CREATE TABLE IWA_PermissionGroup
(
  PermissionGroupId BIGINT NOT NULL,
  ParentPermissionGroupId BIGINT,
  Name VARCHAR(200) NOT NULL,
  PRIMARY KEY (PermissionGroupId)
) ENGINE=InnoDB;

CREATE TABLE IWA_SecurityDescriptorType
(
  SecurityDescriptorTypeId BIGINT NOT NULL,
  RootPermissionGroupId BIGINT NOT NULL,
  Name VARCHAR(200) NOT NULL,
  PRIMARY KEY (SecurityDescriptorTypeId),
  UNIQUE (Name)
) ENGINE=InnoDB;

CREATE TABLE IWA_AccessControl
(
  AccessControlId BIGINT NOT NULL,
  SecurityDescriptorId BIGINT NOT NULL,
  PermissionId BIGINT NOT NULL,
  GrantDeny BIT NOT NULL,
  RoleId BIGINT,
  UserId BIGINT,
  PRIMARY KEY (AccessControlId),
  UNIQUE (SecurityDescriptorId, PermissionId, RoleId, UserId),
  INDEX IWA_AccessControl_SecurityDescriptorIdIndex (SecurityDescriptorId)
) ENGINE=InnoDB;

CREATE TABLE IWA_Permission
(
  PermissionId BIGINT NOT NULL,
  Name VARCHAR(200) NOT NULL,
  PRIMARY KEY (PermissionId),
  UNIQUE (Name)
) ENGINE=InnoDB;

CREATE TABLE IWA_PermissionGroupPermission
(
  PermissionGroupId BIGINT NOT NULL,
  PermissionId BIGINT NOT NULL,
  PRIMARY KEY (PermissionGroupId, PermissionId)
) ENGINE=InnoDB;

CREATE TABLE IWA_UploadedFile
(
  FileId BIGINT NOT NULL,
  FileName VARCHAR(255) NOT NULL,
  FilePath VARCHAR(750) NOT NULL,
  CreationUserId VARCHAR(200),
  CreationDate VARCHAR(10),
  CreationTime VARCHAR(8),
  FileSize VARCHAR(20),
  Locked BIT,
  LockingUserId VARCHAR(200),
  ModificationUserId VARCHAR(200),
  ModificationDate VARCHAR(10),
  ModificationTime VARCHAR(8),
  Description VARCHAR(1024),
  PRIMARY KEY (FileId)
) ENGINE=InnoDB;

CREATE TABLE IWA_RestServiceClient
(
  RestClientId BIGINT NOT NULL,
  ParentRestClientId BIGINT,
  UUID VARCHAR(36) NOT NULL,
  ApplicationId BIGINT NOT NULL,
  EnvironmentId BIGINT,
  Name VARCHAR(200) NOT NULL,
  Description VARCHAR(2000) NOT NULL,
  URI VARCHAR(1024),
  PRIMARY KEY (RestClientId),
  FOREIGN KEY (EnvironmentId) REFERENCES IWA_Environment(EnvironmentId) ON DELETE CASCADE,
  UNIQUE (ApplicationId, ParentRestClientId, EnvironmentId, UUID),
  UNIQUE (ApplicationId, ParentRestClientId, EnvironmentId, Name)
) ENGINE=InnoDB;

CREATE TABLE IWA_RestServiceClientProperty
(
  RestClientPropertyId BIGINT NOT NULL,
  RestClientId BIGINT NOT NULL,
  Name VARCHAR(200) NOT NULL,
  `Value` VARCHAR(1024) NOT NULL,
  IsPassword BIT NOT NULL,
  PRIMARY KEY (RestClientPropertyId),
  FOREIGN KEY (RestClientId) REFERENCES IWA_RestServiceClient(RestClientId) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IWA_RestServiceClientFeature
(
  RestClientFeatureId BIGINT NOT NULL,
  RestClientId BIGINT NOT NULL,
  Class VARCHAR(200) NOT NULL,
  PRIMARY KEY (RestClientFeatureId),
  FOREIGN KEY (RestClientId) REFERENCES IWA_RestServiceClient(RestClientId) ON DELETE CASCADE
) ENGINE=InnoDB;

ALTER TABLE IWA_AsyncProcessCaseData ADD
(
 FOREIGN KEY (CaseId) REFERENCES IWA_Case(CaseId) ON DELETE CASCADE
);

ALTER TABLE IWA_Application ADD
(
 FOREIGN KEY (BusinessCalendarId) REFERENCES IWA_BusinessCalendar(BusinessCalendarId) ON DELETE SET NULL
);

ALTER TABLE IWA_Environment ADD
(
 FOREIGN KEY (BusinessCalendarId) REFERENCES IWA_BusinessCalendar(BusinessCalendarId) ON DELETE SET NULL
);

ALTER TABLE IWA_GlobalVariable ADD
(
 FOREIGN KEY (ParentGlobalVariableId) REFERENCES IWA_GlobalVariable(GlobalVariableId) ON DELETE CASCADE
);

ALTER TABLE IWA_BusinessCalendar ADD
(
 FOREIGN KEY (ParentCalendarId) REFERENCES IWA_BusinessCalendar(BusinessCalendarId) ON DELETE CASCADE
);

ALTER TABLE IWA_ExternalDatabase ADD
(
 FOREIGN KEY (ParentExternalDatabaseId) REFERENCES IWA_ExternalDatabase(ExternalDatabaseId) ON DELETE CASCADE
);

ALTER TABLE IWA_Role ADD
(
 FOREIGN KEY (ParentRoleId) REFERENCES IWA_Role(RoleId) ON DELETE CASCADE
);

ALTER TABLE IWA_ContentObject ADD
(
 FOREIGN KEY (ParentContentObjectId) REFERENCES IWA_ContentObject(ContentObjectId) ON DELETE CASCADE
);

ALTER TABLE IWA_RestServiceClient ADD
(
 FOREIGN KEY (ParentRestClientId) REFERENCES IWA_RestServiceClient(RestClientId) ON DELETE CASCADE
);

CREATE VIEW IWA_TaskQuery
(
  TaskId,
  CaseId,
  ProcessModelId,
  ApplicationId,
  StartTaskSwitchEventId,
  EndTaskSwitchEventId,
  TaskStartId,
  TaskEndId,
  WorkerUserId,
  WorkerUserName,
  WorkerSessionId,
  ActivatorRoleId,
  ActivatorUserId,
  ActivatorName,
  ExpiryActivatorRoleId,
  ExpiryActivatorUserId,
  ExpiryActivatorName,
  ExpiryPriority,
  ExpiryTimestamp,
  ExpiryTaskStartElementPid,
  IsExpired,
  ExpiredCreatorTaskId,
  TimeoutedCreatorIntrmdtEventId,
  DelayTimestamp,
  `State`,
  RequestPath,
  DisplayNameTemplate,
  Name,
  DisplayDescriptionTemplate,
  Description,
  Priority,
  StartTimestamp,
  EndTimestamp,
  BusinessCalendarId,
  WorkingTime,
  BusinessRuntime,
  FailedTimeoutTimestamp,
  NumberOfFailures,
  NumberOfResumes,
  KindCode,
  KindName,
  BusinessMilestoneTimestamp,
  CustomVarCharField1,
  CustomVarCharField2,
  CustomVarCharField3,
  CustomVarCharField4,
  CustomVarCharField5,
  CustomDecimalField1,
  CustomDecimalField2,
  CustomDecimalField3,
  CustomDecimalField4,
  CustomDecimalField5,
  CustomTimestampField1,
  CustomTimestampField2,
  CustomTimestampField3,
  CustomTimestampField4,
  CustomTimestampField5,
  IsUpdatedOnStart,
  IsOffline,
  CurrentPriority,
  CurrentActivatorName,
  CurrentActivatorRoleId,
  CurrentActivatorUserId,
  ProcessCategoryCode,
  ProcessCategoryName,
  ProcessCode,
  ProcessName,
  TypeCode,
  TypeName,
  SubTypeCode,
  SubTypeName,
  BusinessObjectCode,
  BusinessObjectName,
  BusinessMainContactId,
  BusinessMainContactName,
  BusinessStartTimestamp,
  BusinessCreatorUser
)
AS
  SELECT
    IWA_Task.TaskId,
    IWA_Task.CaseId,
    IWA_Task.ProcessModelId,
    IWA_Task.ApplicationId,
    IWA_Task.StartTaskSwitchEventId,
    IWA_Task.EndTaskSwitchEventId,
    IWA_Task.TaskStartId,
    IWA_Task.TaskEndId,
    IWA_Task.WorkerUserId,
    IWA_Task.WorkerUserName,
    IWA_Task.WorkerSessionId,
    IWA_Task.ActivatorRoleId,
    IWA_Task.ActivatorUserId,
    IWA_Task.ActivatorName,
    IWA_Task.ExpiryActivatorRoleId,
    IWA_Task.ExpiryActivatorUserId,
    IWA_Task.ExpiryActivatorName,
    IWA_Task.ExpiryPriority,
    IWA_Task.ExpiryTimestamp,
    IWA_Task.ExpiryTaskStartElementPid,
    IWA_Task.IsExpired,
    IWA_Task.ExpiredCreatorTaskId,
    IWA_Task.TimeoutedCreatorIntrmdtEventId,
    IWA_Task.DelayTimestamp,
    IWA_Task.`State`,
    IWA_Task.RequestPath,
    IWA_Task.DisplayNameTemplate,
    IWA_Task.Name,
    IWA_Task.DisplayDescriptionTemplate,
    IWA_Task.Description,
    IWA_Task.Priority,
    IWA_Task.StartTimestamp,
    IWA_Task.EndTimestamp,
    IWA_Task.BusinessCalendarId,
    IWA_Task.WorkingTime,
    IWA_Task.BusinessRuntime,
    IWA_Task.FailedTimeoutTimestamp,
    IWA_Task.NumberOfFailures,
    IWA_Task.NumberOfResumes,
    IWA_Task.KindCode,
    IWA_Task.KindName,
    IWA_Task.BusinessMilestoneTimestamp,
    IWA_Task.CustomVarCharField1,
    IWA_Task.CustomVarCharField2,
    IWA_Task.CustomVarCharField3,
    IWA_Task.CustomVarCharField4,
    IWA_Task.CustomVarCharField5,
    IWA_Task.CustomDecimalField1,
    IWA_Task.CustomDecimalField2,
    IWA_Task.CustomDecimalField3,
    IWA_Task.CustomDecimalField4,
    IWA_Task.CustomDecimalField5,
    IWA_Task.CustomTimestampField1,
    IWA_Task.CustomTimestampField2,
    IWA_Task.CustomTimestampField3,
    IWA_Task.CustomTimestampField4,
    IWA_Task.CustomTimestampField5,
    IWA_Task.IsUpdatedOnStart,
    IWA_Task.IsOffline,
    CASE IWA_Task.IsExpired WHEN 1 THEN IWA_Task.ExpiryPriority WHEN 0 THEN IWA_Task.Priority END,
    CASE IWA_Task.IsExpired WHEN 1 THEN IWA_Task.ExpiryActivatorName WHEN 0 THEN IWA_Task.ActivatorName END,
    CASE IWA_Task.IsExpired WHEN 1 THEN IWA_Task.ExpiryActivatorRoleId WHEN 0 THEN IWA_Task.ActivatorRoleId END,
    CASE IWA_Task.IsExpired WHEN 1 THEN IWA_Task.ExpiryActivatorUserId WHEN 0 THEN IWA_Task.ActivatorUserId END,
    IWA_Case.ProcessCategoryCode,
    IWA_Case.ProcessCategoryName,
    IWA_Case.ProcessCode,
    IWA_Case.ProcessName,
    IWA_Case.TypeCode,
    IWA_Case.TypeName,
    IWA_Case.SubTypeCode,
    IWA_Case.SubTypeName,
    IWA_Case.BusinessObjectCode,
    IWA_Case.BusinessObjectName,
    IWA_Case.BusinessMainContactId,
    IWA_Case.BusinessMainContactName,
    IWA_Case.BusinessStartTimestamp,
    IWA_Case.BusinessCreatorUser
  FROM IWA_Task, IWA_Case
  WHERE IWA_Task.CaseId = IWA_Case.CaseId;

CREATE VIEW IWA_ProcessStart
(
  TaskElementId,
  ProcessModelVersionId,
  Name,
  Description,
  ProcessElementId,
  TaskStartId,
  StartRequestPath,
  UserFriendlyStartRequestPath,
  ActivatorRoleId
)
AS
  SELECT
    IWA_TaskElement.TaskElementId,
    IWA_TaskElement.ProcessModelVersionId,
    IWA_TaskElement.Name,
    IWA_TaskElement.Description,
    IWA_TaskElement.ProcessElementId,
    IWA_TaskStart.TaskStartId,
    IWA_TaskStart.StartRequestPath,
    IWA_TaskStart.UserFriendlyStartRequestPath,
    IWA_StartElement.ActivatorRoleId
  FROM IWA_TaskElement, IWA_TaskStart, IWA_StartElement
  WHERE IWA_TaskElement.TaskElementId = IWA_TaskStart.TaskElementId AND IWA_TaskStart.TaskStartId = IWA_StartElement.TaskStartId
UNION ALL
  SELECT
    IWA_TaskElement.TaskElementId,
    IWA_TaskElement.ProcessModelVersionId,
    IWA_TaskElement.Name,
    IWA_TaskElement.Description,
    IWA_TaskElement.ProcessElementId,
    IWA_TaskStart.TaskStartId,
    IWA_TaskStart.StartRequestPath,
    IWA_TaskStart.UserFriendlyStartRequestPath,
    IWA_StartEventElement.ActivatorRoleId
  FROM IWA_TaskElement, IWA_TaskStart, IWA_StartEventElement
  WHERE IWA_TaskElement.TaskElementId = IWA_TaskStart.TaskElementId AND IWA_TaskStart.TaskStartId = IWA_StartEventElement.TaskStartId
UNION ALL
  SELECT
    IWA_TaskElement.TaskElementId,
    IWA_TaskElement.ProcessModelVersionId,
    IWA_TaskElement.Name,
    IWA_TaskElement.Description,
    IWA_TaskElement.ProcessElementId,
    IWA_TaskStart.TaskStartId,
    IWA_TaskStart.StartRequestPath,
    IWA_TaskStart.UserFriendlyStartRequestPath,
    IWA_WebServiceProcStartElement.ActivatorRoleId
  FROM IWA_TaskElement, IWA_TaskStart, IWA_WebServiceProcStartElement
  WHERE IWA_TaskElement.TaskElementId = IWA_TaskStart.TaskElementId AND IWA_TaskStart.TaskStartId = IWA_WebServiceProcStartElement.TaskStartId;


INSERT INTO IWA_Permission (PermissionId, Name) VALUES (0, 'AdministrateWorkflow');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (1, 'ViewOwnCreatedCaseWorkflowHistory');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (2, 'ViewOwnWorkTaskWorkflowHistory');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (3, 'ViewProcessData');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (4, 'ViewTasksOfCase');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (5, 'DelegateTasks');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (6, 'ViewUserSubstitutes');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (7, 'EditUserSubstitutes');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (8, 'ViewUserAbsences');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (9, 'EditUserAbsences');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (10, 'ViewPageArchive');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (100, 'UserSetPassword');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (101, 'UserSetOwnPassword');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (102, 'UserSetFullName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (103, 'UserSetOwnFullName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (104, 'UserReadFullName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (105, 'UserReadOwnFullName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (106, 'UserReadName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (107, 'UserReadOwnName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (108, 'UserSetEMailAddress');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (109, 'UserSetOwnEMailAddress');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (110, 'UserReadEMailAddress');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (111, 'UserReadOwnEMailAddress');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (112, 'UserSetEMailLanguage');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (113, 'UserSetOwnEMailLanguage');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (114, 'UserReadEMailLanguage');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (115, 'UserReadOwnEMailLanguage');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (116, 'UserSetEMailNotification');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (117, 'UserSetOwnEMailNotification');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (118, 'UserReadEMailNotification');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (119, 'UserReadOwnEMailNotification');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (120, 'UserSetProperty');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (121, 'UserSetOwnProperty');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (122, 'UserReadProperty');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (123, 'UserReadOwnProperty');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (124, 'UserRemoveProperty');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (125, 'UserRemoveOwnProperty');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (126, 'UserReadPropertyNames');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (127, 'UserReadOwnPropertyNames');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (128, 'UserAddRole');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (129, 'UserRemoveRole');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (130, 'UserReadRoles');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (131, 'UserReadOwnRoles');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (132, 'UserCreateAbsence');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (133, 'UserCreateOwnAbsence');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (134, 'UserDeleteAbsence');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (135, 'UserDeleteOwnAbsence');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (136, 'UserReadAbsences');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (137, 'UserReadOwnAbsences');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (138, 'UserCreateSubstitute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (139, 'UserCreateOwnSubstitute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (140, 'UserDeleteSubstitute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (141, 'UserDeleteOwnSubstitute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (142, 'UserReadSubstitutes');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (143, 'UserReadOwnSubstitutes');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (144, 'UserReadSubstitutions');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (145, 'UserReadOwnSubstitutions');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (146, 'UserReadExternalSecurityName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (147, 'UserReadOwnExternalSecurityName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (148, 'RoleReadName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (149, 'RoleReadDisplayDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (150, 'RoleReadDisplayDescriptionTemplate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (151, 'RoleSetDisplayDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (152, 'RoleTreeNavigation');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (153, 'RoleCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (154, 'RoleDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (155, 'RoleSetExternalSecurityName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (156, 'RoleReadExternalSecurityName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (157, 'RoleReadUsers');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (158, 'RoleMove');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (159, 'RoleReadDisplayName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (160, 'RoleReadDisplayNameTemplate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (161, 'RoleSetDisplayName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (162, 'RoleReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (163, 'UserCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (164, 'UserDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (165, 'UserReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (166, 'SessionReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (167, 'SessionDestroy');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (168, 'SessionCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (169, 'SecurityReadExternalSecuritySystemProvider');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (170, 'SecurityReadConfiguration');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (171, 'SecurityTriggerSynchronization');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (172, 'SessionWriteHttpSessionIdentifier');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (173, 'SecurityDescriptorReadAllPermissions');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (174, 'SecurityDescriptorReadOwner');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (175, 'SecurityDescriptorReadSecurityDescriptorType');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (176, 'SecurityDescriptorReadAccessControl');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (177, 'SecurityDescriptorGrantPermission');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (178, 'SecurityDescriptorUngrantPermission');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (179, 'SecurityDescriptorDenyPermission');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (180, 'SecurityDescriptorUndenyPermission');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (181, 'SecurityDescriptorReadPermissionAccess');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (182, 'SecurityDescriptorReadAllPermissionAccess');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (183, 'SessionReadSessionUserUnknown');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (184, 'SessionReadSessionUser');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (185, 'SessionAssignRole');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (186, 'SessionWriteOwnAttribute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (187, 'SessionWriteAttribute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (188, 'SessionReadOwnAttribute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (189, 'SessionReadAttribute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (190, 'SessionDeleteOwnAttribute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (191, 'SessionDeleteAttribute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (192, 'SessionReadOwnAttributeNames');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (193, 'SessionReadAttributeNames');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (194, 'SessionLogoutSessionUser');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (195, 'SessionReadAbsent');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (196, 'SessionReadActiveSubstitutions');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (197, 'SessionReadIsMemberThroughActiveSubstitution');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (198, 'SessionReadHttpSessionIdentifier');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (199, 'SessionReadAllMySessions');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (200, 'SessionCanActAsUser');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (201, 'SessionHasRole');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (202, 'ApplicationCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (203, 'ApplicationDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (204, 'ApplicationRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (205, 'ApplicationReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (206, 'SystemPropertyReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (207, 'SystemPropertyRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (208, 'LanguageCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (209, 'LanguageRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (210, 'LanguageReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (211, 'ProcessModelVersionRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (212, 'ProcessModelVersionReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (213, 'SystemPropertyReadValue');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (214, 'SystemPropertyWriteValue');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (215, 'ProcessModelDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (216, 'ProcessModelRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (217, 'ProcessModelCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (218, 'ApplicationReadActivityOperationState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (219, 'ApplicationReadActivityState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (220, 'ApplicationReadAttribute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (221, 'ApplicationReadAttributeNames');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (222, 'ApplicationDeleteAttribute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (223, 'ApplicationWriteAttribute');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (224, 'ApplicationReadDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (225, 'ApplicationReadSecuritySystemName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (226, 'ApplicationReadFileAreaDirectory');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (227, 'LibraryReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (228, 'ApplicationReadName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (229, 'ApplicationReadOwnerName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (230, 'ApplicationWriteDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (231, 'ApplicationWriteDownloadPassword');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (232, 'ApplicationWriteFileDirectory');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (233, 'ApplicationWriteOwnerName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (234, 'ApplicationWriteOwnerPassword');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (235, 'ExternalDatabaseConfigurationRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (236, 'ExternalDatabaseConfigurationDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (237, 'ExternalDatabaseConfigurationCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (238, 'ApplicationActivate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (239, 'ApplicationDeactivate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (240, 'ApplicationLock');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (241, 'ExternalDatabaseConfigurationReadAccessFlags');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (242, 'ExternalDatabaseConfigurationWriteAccessFlags');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (243, 'ExternalDatabaseConfigurationReadDatabaseConnectionConfiguration');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (244, 'ExternalDatabaseConfigurationWriteDatabaseConnectionConfiguration');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (245, 'ExternalDatabaseConfigurationReadMaxConnections');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (246, 'ExternalDatabaseConfigurationWriteMaxConnections');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (247, 'ExternalDatabaseConfigurationReadUserFriendlyName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (248, 'ExternalDatabaseConfigurationWriteUserFriendlyName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (249, 'ProcessModelReadName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (250, 'ProcessModelReadDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (251, 'ProcessModelWriteDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (252, 'ProcessModelReadProjectDirectory');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (253, 'ProcessModelReadFileDirectory');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (254, 'ProcessModelVersionCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (257, 'ProcessModelReadActivityState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (258, 'ProcessModelReadInheritedActivityState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (259, 'ProcessModelReadActivityOperationState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (260, 'ProcessModelActivate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (261, 'ProcessModelDeactivate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (262, 'ProcessModelLock');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (263, 'ProcessModelVersionReadName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (264, 'ProcessModelVersionReadVersionName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (265, 'ProcessModelVersionReadDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (266, 'ProcessModelVersionReadVersionNumber');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (267, 'ProcessModelVersionReadActivityState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (268, 'ProcessModelVersionReadInheritedActivityState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (269, 'ProcessModelVersionReadActivityOperationState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (270, 'ProcessModelVersionReadReleaseState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (271, 'ProcessModelVersionReadNumberOfElements');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (272, 'ProcessModelVersionReadLastChangeDate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (273, 'ProcessModelVersionReadLastChangeBy');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (274, 'ProcessModelVersionReadLastChangeFromHost');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (275, 'ProcessModelVersionReadReleaseTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (276, 'ProcessModelVersionReadScheduledReleaseTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (277, 'ProcessModelVersionReadProjectDirectory');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (278, 'ProjectRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (279, 'ProjectReadName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (280, 'ProcessModelVersionWriteUpdate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (281, 'ProcessModelVersionActivate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (282, 'ProcessModelVersionDeactivate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (283, 'ProcessModelVersionLock');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (284, 'ProcessModelVersionRelease');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (285, 'ProcessModelVersionDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (286, 'ProcessModelVersionReadAllRunningCasesFinished');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (287, 'LibraryCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (288, 'LibraryDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (289, 'LibraryRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (290, 'LibraryReadId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (291, 'LibraryWriteId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (292, 'LibraryReadName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (293, 'LibraryWriteName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (294, 'LibraryReadProvider');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (295, 'LibraryWriteProvider');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (296, 'LibraryReadVersion');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (297, 'LibraryWriteVersion');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (298, 'LibraryReadDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (299, 'LibraryWriteDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (300, 'LibrarySpecificationCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (301, 'LibrarySpecificationDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (302, 'LibrarySpecificationRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (303, 'LibrarySpecificationReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (304, 'LibraryReadDependent');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (305, 'LibraryReadAllDependent');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (306, 'LibraryReadRequired');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (307, 'LibraryReadAllRequired');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (308, 'LibraryReadCircularDependent');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (309, 'LibraryReadResolved');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (310, 'LibrarySpecificationReadId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (311, 'LibrarySpecificationWriteId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (312, 'LibrarySpecificationReadResolved');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (313, 'LibraryVersionSpecificationRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (314, 'LibraryVersionSpecificationCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (315, 'LibraryVersionSpecificationDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (320, 'LibrarySpecificationReadResolvedLibraryResolved');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (321, 'LibraryVersionSpecificationReadVersion');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (322, 'LibraryVersionSpecificationWriteVersion');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (323, 'LibraryVersionSpecificationReadInclusive');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (324, 'LibraryVersionSpecificationWriteInclusive');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (325, 'ProcessModelReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (326, 'ApplicationReadFileDirectory');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (327, 'TaskRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (328, 'CaseDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (329, 'CaseReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (330, 'CaseRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (331, 'CaseCategoryReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (332, 'TaskReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (333, 'TaskCategoryReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (334, 'WorkflowEventReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (335, 'IntermediateEventReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (336, 'IntermediateEventFire');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (337, 'IntermediateEventElementReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (338, 'IntermediateEventElementRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (339, 'IntermediateEventElementDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (340, 'IntermediateEventElementCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (341, 'StartEventElementRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (342, 'StartEventElementReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (343, 'StartEventElementDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (344, 'StartEventElementCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (345, 'StartElementRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (346, 'StartElementReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (347, 'StartElementDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (348, 'StartElementCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (349, 'ProcessStartReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (350, 'ProcessStartRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (351, 'StartElementReadActivator');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (352, 'StartElementReadVisible');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (353, 'StartEventElementReadEventBeanClassName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (354, 'StartEventElementReadEventBeanConfiguration');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (355, 'StartEventElementReadEventBeanEnabled');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (356, 'StartEventElementWriteEventBeanEnabled');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (357, 'TaskElementRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (358, 'TaskStartReadUserFriendlyStartRequestPath');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (359, 'TaskStartReadStartRequestPath');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (360, 'TaskEndReadJoinPathId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (361, 'TaskEndReadJoinRequestPath');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (362, 'TaskEndReadFullJoinRequestPath');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (363, 'TaskElementReadJoinPathes');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (364, 'TaskElementReadKind');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (365, 'TaskStartReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (366, 'TaskEndReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (367, 'TaskElementReadProcessElementId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (368, 'TaskElementReadName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (369, 'TaskElementReadDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (370, 'TaskSwitchEventReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (371, 'TaskReadOwnCaseTasks');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (372, 'CaseReadOwnCaseOfTask');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (373, 'IntermediateEventWriteTimeoutTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (374, 'IntermediateEventReadTimeoutTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (375, 'IntermediateEventReadTimeoutTaskStartElementId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (376, 'IntermediateEventReadTimeoutAction');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (377, 'IntermediateEventReadState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (378, 'IntermediateEventReadResultObject');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (380, 'IntermediateEventReadEventTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (381, 'IntermediateEventReadEventIdentifier');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (382, 'IntermediateEventReadAdditionalInformation');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (383, 'IntermediateEventElementWriteEventBeanConfiguration');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (384, 'IntermediateEventElementWriteEventBeanClassName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (385, 'IntermediateEventElementWriteEventBeanEnabled');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (386, 'IntermediateEventElementReadEventBeanEnabled');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (387, 'IntermediateEventElementReadEventBeanConfiguration');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (388, 'IntermediateEventElementReadEventBeanClassName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (390, 'TaskReadAllOwnWorking');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (391, 'TaskReadAllOwnLocked');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (392, 'CaseReadAllOwnRoleStarted');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (393, 'CaseReadAllOwnStarted');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (394, 'TaskReadAllOwnWork');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (395, 'TaskReadAllOwnWorkedOn');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (396, 'TaskReadAllOwnRoleWorkedOn');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (397, 'ProcessStartReadAllOwnStartable');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (398, 'TaskParkOwnWorkingTask');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (399, 'TaskResetOwnWorkingTask');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (400, 'CaseCategoriesReadAllOwnStarted');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (401, 'TaskCategoriesReadAllOwnWork');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (402, 'TaskCategoriesReadAllWorkedOn');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (403, 'CaseReadCreatorUser');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (404, 'CaseDestroy');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (405, 'CaseReadStartTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (406, 'CaseReadEndTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (407, 'CaseReadName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (408, 'CaseWriteName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (409, 'CaseReadDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (410, 'CaseWriteDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (411, 'CaseReadState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (412, 'NoteCreate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (413, 'NoteReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (414, 'NoteDelete');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (415, 'CaseWriteAdditionalProperty');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (416, 'CaseReadAdditionalProperty');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (417, 'CaseReadAllAdditionalPropertyNames');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (418, 'CaseReadBusinessCorrespondentId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (419, 'CaseWriteBusinessCorrespondentId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (420, 'CaseReadBusinessCreatorUser');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (421, 'CaseWriteBusinessCreatorUser');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (422, 'CaseReadBusinessMainContactDocumentDatabaseCode');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (423, 'CaseWriteBusinessMainContactDocumentDatabaseCode');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (424, 'CaseReadBusinessMainContactFolderId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (425, 'CaseWriteBusinessMainContactFolderId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (426, 'CaseReadBusinessMainContactId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (427, 'CaseWriteBusinessMainContactId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (428, 'CaseReadBusinessMainContactName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (429, 'CaseWriteBusinessMainContactName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (430, 'CaseReadBusinessMainContactType');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (431, 'CaseWriteBusinessMainContactType');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (432, 'CaseReadBusinessMilestoneTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (433, 'CaseWriteBusinessMilestoneTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (434, 'CaseReadBusinessObjectCode');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (435, 'CaseWriteBusinessObjectCode');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (436, 'CaseReadBusinessObjectDocumentDatabaseCode');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (437, 'CaseWriteBusinessObjectDocumentDatabaseCode');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (438, 'CaseReadBusinessObjectFolderId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (439, 'CaseWriteBusinessObjectFolderId');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (440, 'CaseReadBusinessObjectName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (441, 'CaseWriteBusinessObjectName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (442, 'CaseReadBusinessPriority');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (443, 'CaseWriteBusinessPriority');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (444, 'CaseReadBusinessStartTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (445, 'CaseWriteBusinessStartTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (446, 'CaseReadCreatorUserName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (447, 'CaseReadCustomDecimalField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (448, 'CaseWriteCustomDecimalField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (449, 'CaseReadCustomDecimalField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (450, 'CaseWriteCustomDecimalField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (451, 'CaseReadCustomDecimalField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (452, 'CaseWriteCustomDecimalField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (453, 'CaseReadCustomDecimalField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (454, 'CaseWriteCustomDecimalField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (455, 'CaseReadCustomDecimalField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (456, 'CaseWriteCustomDecimalField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (457, 'CaseReadCustomTimestampField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (458, 'CaseWriteCustomTimestampField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (459, 'CaseReadCustomTimestampField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (460, 'CaseWriteCustomTimestampField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (461, 'CaseReadCustomTimestampField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (462, 'CaseWriteCustomTimestampField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (463, 'CaseReadCustomTimestampField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (464, 'CaseWriteCustomTimestampField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (465, 'CaseReadCustomTimestampField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (466, 'CaseWriteCustomTimestampField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (467, 'CaseReadCustomVarCharField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (468, 'CaseWriteCustomVarCharField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (469, 'CaseReadCustomVarCharField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (470, 'CaseWriteCustomVarCharField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (471, 'CaseReadCustomVarCharField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (472, 'CaseWriteCustomVarCharField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (473, 'CaseReadCustomVarCharField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (474, 'CaseWriteCustomVarCharField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (475, 'CaseReadCustomVarCharField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (476, 'CaseWriteCustomVarCharField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (477, 'CaseReadDisplayDescriptionTemplate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (478, 'CaseReadDisplayNameTemplate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (479, 'CaseReadPriority');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (480, 'CaseWritePriority');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (481, 'CaseReadProcessCategoryCode');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (482, 'CaseReadProcessCategoryName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (483, 'CaseWriteProcessCategory');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (484, 'CaseReadProcessCode');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (485, 'CaseReadProcessName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (486, 'CaseWriteProcess');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (487, 'CaseReadTypeCode');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (488, 'CaseReadTypeName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (489, 'CaseWriteType');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (490, 'CaseReadSubTypeCode');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (491, 'CaseReadSubTypeName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (492, 'CaseWriteSubType');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (493, 'TaskSwitchEventRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (494, 'IntermediateEventRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (495, 'TaskReadWorkerSession');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (496, 'TaskReadState');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (497, 'TaskReadRequestPath');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (498, 'TaskReadName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (499, 'TaskWriteName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (500, 'TaskReadDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (501, 'TaskWriteDescription');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (502, 'TaskReadPriority');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (503, 'TaskReadExpiryPriority');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (504, 'TaskWriteExpiryPriority');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (505, 'TaskReadOriginalPriority');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (506, 'TaskWriteOriginalPriority');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (507, 'TaskReadActivator');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (508, 'TaskReadActivatorName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (509, 'TaskWriteActivator');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (510, 'TaskReadExpiryActivator');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (511, 'TaskReadExpiryActivatorName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (512, 'TaskWriteExpiryActivator');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (513, 'TaskReadOriginalActivator');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (514, 'TaskReadOriginalActivatorName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (515, 'TaskWriteOriginalActivator');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (516, 'TaskReadDelayTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (517, 'TaskWriteDelayTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (518, 'TaskReadExpiryTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (520, 'TaskReadWorkerUser');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (521, 'TaskReadStartTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (522, 'TaskReadEndTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (523, 'TaskReadBusinessMilestoneTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (524, 'TaskWriteBusinessMilestoneTimestamp');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (525, 'TaskReadDisplayDescriptionTemplate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (526, 'TaskReadExpiryTaskStartElementPid');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (527, 'TaskReadKindCode');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (528, 'TaskReadKindName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (529, 'TaskWriteKind');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (530, 'TaskReadDisplayNameTemplate');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (531, 'TaskReadWorkerUserName');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (532, 'TaskReadCustomDecimalField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (533, 'TaskWriteCustomDecimalField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (534, 'TaskReadCustomDecimalField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (535, 'TaskWriteCustomDecimalField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (536, 'TaskReadCustomDecimalField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (537, 'TaskWriteCustomDecimalField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (538, 'TaskReadCustomDecimalField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (539, 'TaskWriteCustomDecimalField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (540, 'TaskReadCustomDecimalField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (541, 'TaskWriteCustomDecimalField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (542, 'TaskReadCustomTimestampField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (543, 'TaskWriteCustomTimestampField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (544, 'TaskReadCustomTimestampField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (545, 'TaskWriteCustomTimestampField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (546, 'TaskReadCustomTimestampField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (547, 'TaskWriteCustomTimestampField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (548, 'TaskReadCustomTimestampField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (549, 'TaskWriteCustomTimestampField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (550, 'TaskReadCustomTimestampField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (551, 'TaskWriteCustomTimestampField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (552, 'TaskReadCustomVarCharField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (553, 'TaskWriteCustomVarCharField1');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (554, 'TaskReadCustomVarCharField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (555, 'TaskWriteCustomVarCharField2');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (556, 'TaskReadCustomVarCharField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (557, 'TaskWriteCustomVarCharField3');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (558, 'TaskReadCustomVarCharField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (559, 'TaskWriteCustomVarCharField4');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (560, 'TaskReadCustomVarCharField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (561, 'TaskWriteCustomVarCharField5');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (562, 'TaskReadIsExpiry');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (563, 'TaskReset');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (564, 'TaskDestroy');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (565, 'TaskWriteAdditionalProperty');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (566, 'TaskReadAdditionalProperty');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (567, 'TaskReadAllAdditionalPropertyNames');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (568, 'TaskStartRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (569, 'TaskEndRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (570, 'CaseReadAllOwnInvolved');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (571, 'CaseCategoriesReadAllOwnInvolved');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (572, 'CaseReadAllOwnRoleInvolved');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (573, 'CaseCategoriesReadAllOwnRoleInvolved');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (574, 'ApplicationReadConfigurationProperty');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (575, 'ApplicationReadAllConfigurationProperties');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (576, 'ApplicationConfigurationPropertyReadValue');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (577, 'ApplicationConfigurationPropertyWriteValue');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (578, 'PageArchiveReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (579, 'TaskPageArchiveReadAll');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (580, 'TaskReadProcessData');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (581, 'RolePropertyRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (582, 'RolePropertyWrite');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (583, 'LibrarySpecificationWriteResolved');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (584, 'ApplicationCustomPropertyRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (585, 'ApplicationCustomPropertyWrite');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (586, 'DocumentRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (587, 'DocumentWrite');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (588, 'DocumentOfInvolvedCaseRead');

INSERT INTO IWA_Permission (PermissionId, Name) VALUES (589, 'DocumentOfInvolvedCaseWrite');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (0, NULL, 'ApplicationSpecificPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (1, 0, 'PersonalPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (2, 0, 'ManagementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (3, 1, 'PersonalSecurityPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (4, 1, 'PersonalWorkflowPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (5, 2, 'SecurityManagementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (6, 2, 'WorkflowManagementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (7, 5, 'UserPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (8, 5, 'RolePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (9, 5, 'SecurityDescriptorPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (10, NULL, 'SystemPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (11, 10, 'SystemwideApplicationConfigurationManagementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (12, 10, 'SystemwideSecurityManagementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (13, 10, 'SystemwideWorkflowManagementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (14, 12, 'SystemwideUserPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (15, 12, 'SystemwideRolePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (16, 12, 'SystemwideSecurityDescriptorPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (17, 3, 'PersonalUserAbsencePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (18, 3, 'PersonalUserSubstitutePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (19, 3, 'PersonalUserPropertyPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (20, 7, 'UserAbsencePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (21, 7, 'UserSubstitutePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (22, 7, 'UserPropertyPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (23, 14, 'SystemwideUserAbsencePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (24, 14, 'SystemwideUserSubstitutePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (25, 14, 'SystemwideUserPropertyPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (26, 3, 'PersonalUserRolePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (27, 7, 'UserRolePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (28, 14, 'SystemwideUserRolePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (29, 5, 'SessionPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (30, 12, 'SystemwideSessionPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (31, 11, 'SystemwideApplicationPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (32, 11, 'SystemwideLanguagePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (33, 11, 'SystemwideSystemPropertiesPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (34, 2, 'ApplicationConfigurationManagementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (35, 34, 'ApplicationPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (37, 34, 'ProcessModelPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (38, 34, 'ProcessModelVersionPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (39, 34, 'LibraryPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (40, 34, 'ExternalDatabaseConfigurationPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (41, 11, 'SystemwideProcessModelPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (42, 11, 'SystemwideProcessModelVersionPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (43, 11, 'SystemwideLibraryPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (44, 11, 'SystemwideExternalDatabaseConfigurationPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (45, 6, 'StartElementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (46, 13, 'SystemwideStartElementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (47, 6, 'StartEventElementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (48, 13, 'SystemwideStartEventElementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (49, 6, 'ProcessStartPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (50, 13, 'SystemwideProcessStartPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (51, 6, 'TaskStartPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (52, 13, 'SystemwideTaskStartPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (53, 6, 'TaskEndPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (54, 13, 'SystemwideTaskEndPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (55, 6, 'TaskElementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (56, 13, 'SystemwideTaskElementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (57, 6, 'TaskSwitchEventPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (58, 13, 'SystemwideTaskSwitchEventPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (59, 6, 'TaskPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (60, 13, 'SystemwideTaskPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (61, 6, 'CasePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (62, 13, 'SystemwideCasePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (63, 6, 'NotePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (64, 13, 'SystemwideNotePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (65, 59, 'TaskCustomFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (66, 60, 'SystemwideTaskCustomFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (67, 59, 'TaskBusinessFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (68, 60, 'SystemwideTaskBusinessFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (69, 59, 'TaskSystemFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (70, 60, 'SystemwideTaskSystemFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (71, 59, 'CaseCustomFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (72, 60, 'SystemwideCaseCustomFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (73, 59, 'CaseBusinessFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (74, 60, 'SystemwideCaseBusinessFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (75, 59, 'CaseSystemFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (76, 60, 'SystemwideCaseSystemFieldsPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (77, 6, 'WorkflowEventPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (78, 13, 'SystemwideWorkflowEventPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (79, 6, 'IntermediateEventPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (80, 13, 'SystemwideIntermediateEventPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (81, 6, 'IntermediateEventElementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (82, 13, 'SystemwideIntermediateEventElementPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (83, 6, 'PageArchivePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (84, 13, 'SystemwidePageArchivePermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (85, 15, 'SystemwideRolePropertyPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (86, 8, 'RolePropertyPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (87, 35, 'ApplicationPropertyPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (88, 31, 'SystemwideApplicationPropertyPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (89, 6, 'DocumentPermissions');

INSERT INTO IWA_PermissionGroup (PermissionGroupId, ParentPermissionGroupId, Name) VALUES (90, 13, 'SystemwideDocumentPermissions');

INSERT INTO IWA_SecurityDescriptorType (SecurityDescriptorTypeId, RootPermissionGroupId, Name) VALUES (0, 10, 'System');

INSERT INTO IWA_SecurityDescriptorType (SecurityDescriptorTypeId, RootPermissionGroupId, Name) VALUES (1, 0, 'Application');

INSERT INTO IWA_SecurityDescriptor (SecurityDescriptorId, SecurityDescriptorTypeId, OwnerUserId) VALUES (0, 0, NULL);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 100);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 100);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 101);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 102);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 102);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 103);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 104);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 104);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 105);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 106);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 106);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 107);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 108);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 108);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 109);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 110);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 110);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 111);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 112);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 112);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 113);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 114);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 114);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 115);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 116);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 116);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 117);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 118);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 118);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 119);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (22, 120);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (25, 120);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (19, 121);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (22, 122);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (25, 122);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (19, 123);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (22, 124);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (25, 124);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (19, 125);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (22, 126);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (25, 126);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (19, 127);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (27, 128);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (28, 128);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (27, 129);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (28, 129);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (27, 130);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (28, 130);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (26, 131);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (20, 132);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (23, 132);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (17, 133);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (20, 134);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (23, 134);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (17, 135);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (20, 136);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (23, 136);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (17, 137);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (21, 138);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (24, 138);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (18, 139);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (21, 140);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (24, 140);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (18, 141);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (21, 142);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (24, 142);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (18, 143);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (21, 144);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (24, 144);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (18, 145);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 146);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 146);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 147);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 148);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 148);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 149);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 149);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 150);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 150);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 151);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 151);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 152);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 152);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 153);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 153);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 154);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 154);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 155);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 155);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 156);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 156);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 157);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 157);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 158);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 158);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 159);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 159);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 160);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 160);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 161);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 161);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (8, 162);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (15, 162);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 163);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 163);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 164);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 164);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (7, 165);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (14, 165);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 166);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 166);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 167);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 167);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 168);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 168);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (5, 169);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (12, 169);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (5, 170);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (12, 170);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (5, 171);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (12, 171);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 172);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 172);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (9, 173);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (16, 173);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (9, 174);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (16, 174);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (9, 175);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (16, 175);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (9, 176);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (16, 176);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (9, 177);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (16, 177);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (9, 178);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (16, 178);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (9, 179);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (16, 179);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (9, 180);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (16, 180);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (9, 181);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (16, 181);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (9, 182);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (16, 182);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 183);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 183);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 184);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 184);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 185);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 185);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 186);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 187);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 187);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 188);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 189);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 189);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 190);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 191);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 191);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (3, 192);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 193);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 193);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 194);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 194);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 195);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 195);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 196);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 196);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 197);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 197);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 198);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 198);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 199);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 199);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 200);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 200);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (29, 201);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (30, 201);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 202);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 203);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 204);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 204);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 205);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (33, 206);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (33, 207);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (32, 208);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (32, 209);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (32, 210);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 211);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 211);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 212);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 212);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (33, 213);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (33, 214);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 215);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 215);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 216);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 216);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 217);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 217);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 218);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 218);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 219);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 219);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 220);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 220);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 221);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 221);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 222);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 222);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 223);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 223);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 224);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 224);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 225);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 225);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 226);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 226);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 227);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 227);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 228);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 228);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 229);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 229);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 230);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 230);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 231);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 231);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 232);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 232);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 233);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 233);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 234);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 234);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (40, 235);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (44, 235);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (40, 236);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (44, 236);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (40, 237);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (44, 237);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 238);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 238);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 239);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 239);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 240);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 240);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (40, 241);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (44, 241);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (40, 242);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (44, 242);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (40, 243);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (44, 243);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (40, 244);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (44, 244);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (40, 245);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (44, 245);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (40, 246);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (44, 246);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (40, 247);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (44, 247);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (40, 248);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (44, 248);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 249);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 249);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 250);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 250);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 251);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 251);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 252);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 252);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 253);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 253);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 254);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 254);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 257);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 257);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 258);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 258);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 259);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 259);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 260);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 260);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 261);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 261);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 262);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 262);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 263);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 263);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 264);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 264);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 265);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 265);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 266);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 266);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 267);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 267);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 268);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 268);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 269);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 269);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 270);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 270);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 271);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 271);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 272);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 272);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 273);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 273);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 274);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 274);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 275);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 275);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 276);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 276);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 277);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 277);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 278);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 278);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 279);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 279);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 280);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 280);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 281);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 281);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 282);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 282);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 283);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 283);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 284);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 284);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 285);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 285);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (38, 286);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (42, 286);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 287);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 287);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 288);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 288);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 289);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 289);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 290);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 290);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 291);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 291);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 292);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 292);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 293);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 293);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 294);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 294);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 295);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 295);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 296);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 296);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 297);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 297);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 298);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 298);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 299);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 299);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 300);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 300);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 301);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 301);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 302);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 302);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 303);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 303);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 304);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 304);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 305);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 305);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 306);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 306);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 307);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 307);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 308);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 308);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 309);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 309);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 310);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 310);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 311);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 311);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 312);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 312);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 313);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 313);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 314);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 314);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 315);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 315);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 320);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 320);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 321);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 321);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 322);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 322);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 323);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 323);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 324);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 324);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (37, 325);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (41, 325);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (35, 326);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (31, 326);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (59, 327);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (60, 327);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (61, 328);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (62, 328);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (61, 329);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (62, 329);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (61, 330);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (62, 330);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (61, 331);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (62, 331);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (59, 332);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (60, 332);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (59, 333);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (60, 333);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (77, 334);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (78, 334);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 335);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 335);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 336);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 336);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (81, 337);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (82, 337);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (81, 338);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (82, 338);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (81, 339);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (82, 339);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (81, 340);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (82, 340);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (47, 341);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (48, 341);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (47, 342);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (48, 342);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (47, 343);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (48, 343);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (47, 344);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (48, 344);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (45, 345);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (46, 345);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (45, 346);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (46, 346);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (45, 347);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (46, 347);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (45, 348);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (46, 348);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (49, 349);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (50, 349);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (49, 350);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (50, 350);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (45, 351);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (46, 351);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (45, 352);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (46, 352);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (47, 353);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (48, 353);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (47, 354);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (48, 354);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (47, 355);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (48, 355);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (47, 356);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (48, 356);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (55, 357);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (56, 357);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (51, 358);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (52, 358);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (51, 359);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (52, 359);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (53, 360);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (54, 360);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (53, 361);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (54, 361);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (53, 362);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (54, 362);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (55, 363);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (56, 363);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (55, 364);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (56, 364);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (51, 365);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (52, 365);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (53, 366);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (54, 366);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (55, 367);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (56, 367);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (55, 368);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (56, 368);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (55, 369);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (56, 369);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (57, 370);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (58, 370);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 371);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 372);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 373);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 373);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 374);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 374);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 375);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 375);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 376);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 376);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 377);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 377);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 378);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 378);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 380);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 380);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 381);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 381);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 382);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 382);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (81, 383);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (82, 383);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (81, 384);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (82, 384);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (81, 385);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (82, 385);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (81, 386);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (82, 386);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (81, 387);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (82, 387);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (81, 388);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (82, 388);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 390);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 391);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 392);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 393);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 394);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 395);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 396);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 397);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 398);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 399);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 400);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 401);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 402);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 403);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 403);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (61, 404);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (62, 404);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 405);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 405);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 406);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 406);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 407);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 407);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 408);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 408);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 409);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 409);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 410);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 410);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 411);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 411);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (63, 412);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (64, 412);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (63, 413);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (64, 413);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (63, 414);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (64, 414);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 415);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 415);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 416);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 416);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 417);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 417);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 418);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 418);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 419);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 419);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 420);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 420);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 421);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 421);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 422);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 422);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 423);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 423);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 424);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 424);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 425);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 425);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 426);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 426);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 427);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 427);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 428);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 428);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 429);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 429);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 430);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 430);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 431);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 431);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 432);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 432);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 433);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 433);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 434);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 434);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 435);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 435);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 436);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 436);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 437);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 437);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 438);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 438);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 439);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 439);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 440);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 440);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 441);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 441);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 442);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 442);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 443);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 443);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 444);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 444);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (73, 445);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (74, 445);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 446);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 446);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 447);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 447);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 448);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 448);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 449);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 449);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 450);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 450);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 451);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 451);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 452);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 452);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 453);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 453);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 454);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 454);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 455);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 455);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 456);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 456);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 457);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 457);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 458);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 458);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 459);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 459);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 460);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 460);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 461);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 461);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 462);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 462);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 463);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 463);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 464);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 464);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 465);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 465);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 466);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 466);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 467);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 467);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 468);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 468);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 469);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 469);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 470);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 470);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 471);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 471);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 472);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 472);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 473);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 473);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 474);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 474);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 475);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 475);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (71, 476);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (72, 476);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 477);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 477);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 478);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 478);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 479);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 479);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 480);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 480);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 481);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 481);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 482);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 482);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 483);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 483);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 484);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 484);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 485);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 485);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 486);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 486);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 487);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 487);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 488);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 488);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 489);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 489);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 490);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 490);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 491);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 491);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (75, 492);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (76, 492);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (57, 493);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (58, 493);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 494);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 494);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (79, 495);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (80, 495);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 496);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 496);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 497);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 497);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 498);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 498);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 499);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 499);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 500);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 500);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 501);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 501);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 502);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 502);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 503);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 503);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 504);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 504);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 505);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 505);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 506);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 506);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 507);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 507);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 508);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 508);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 509);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 509);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 510);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 510);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 511);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 511);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 512);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 512);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 513);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 513);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 514);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 514);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 515);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 515);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 516);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 516);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 517);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 517);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 518);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 518);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 520);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 520);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 521);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 521);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 522);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 522);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (67, 523);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (68, 523);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (67, 524);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (68, 524);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 525);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 525);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 526);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 526);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 527);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 527);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 528);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 528);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 529);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 529);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 530);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 530);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 531);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 531);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 532);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 532);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 533);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 533);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 534);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 534);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 535);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 535);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 536);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 536);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 537);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 537);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 538);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 538);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 539);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 539);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 540);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 540);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 541);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 541);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 542);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 542);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 543);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 543);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 544);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 544);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 545);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 545);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 546);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 546);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 547);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 547);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 548);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 548);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 549);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 549);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 550);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 550);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 551);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 551);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 552);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 552);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 553);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 553);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 554);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 554);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 555);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 555);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 556);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 556);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 557);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 557);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 558);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 558);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 559);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 559);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 560);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 560);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 561);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 561);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 562);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 562);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (59, 563);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (60, 563);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (59, 564);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (60, 564);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 565);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 565);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 566);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 566);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (65, 567);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (66, 567);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (51, 568);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (52, 568);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (53, 569);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (54, 569);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 570);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 571);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 572);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (4, 573);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (87, 574);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (88, 574);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (87, 575);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (88, 575);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (87, 576);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (88, 576);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (87, 577);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (88, 577);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (83, 578);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (84, 578);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (83, 579);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (84, 579);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (69, 580);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (70, 580);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (85, 581);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (86, 581);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (85, 582);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (86, 582);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (39, 583);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (43, 583);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (87, 584);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (88, 584);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (87, 585);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (88, 585);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (89, 586);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (89, 587);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (89, 588);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (89, 589);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (90, 586);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (90, 587);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (90, 588);

INSERT INTO IWA_PermissionGroupPermission (PermissionGroupId, PermissionId) VALUES (90, 589);
