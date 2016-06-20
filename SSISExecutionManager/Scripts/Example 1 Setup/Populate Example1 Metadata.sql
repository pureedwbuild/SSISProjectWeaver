﻿ALTER TABLE [ctl].[ETLPackage_ETLPackageDependency] DROP CONSTRAINT [FK_ETLPackage_ETLPackageDependency_ETLPackage]
ALTER TABLE [ctl].[ETLPackage_ETLPackageDependency] DROP CONSTRAINT [FK_ETLPackage_ETLPackageDependency_ETLPackage_DependentOn]
ALTER TABLE [ctl].[ETLBatch_ETLBatchPhase] DROP CONSTRAINT [FK_ETLBatch_ETLBatchPhase_ETLBatch]
ALTER TABLE [ctl].[ETLBatch_ETLBatchPhase] DROP CONSTRAINT [FK_ETLBatch_ETLBatchPhase_ETLBatchPhase]
ALTER TABLE [ctl].[ETLBatchPhase_ETLPackage] DROP CONSTRAINT [FK_ETLBatchPhase_ETLPackage_ETLPackage_ETLBatchPhase]
ALTER TABLE [ctl].[ETLBatchPhase_ETLPackage] DROP CONSTRAINT [FK_ETLBatchPhase_ETLPackage_ETLPackage_ETLPackage]
ALTER TABLE [ctl].[ETLPackage] DROP CONSTRAINT [FK_ETLPackage_EntryPointETLPackageId]
ALTER TABLE [ctl].[ETLPackage] DROP CONSTRAINT [FK_ETLPackage_SupportSeverityLevel]
ALTER TABLE [ctl].[ETLBatchPhase_SQLCommand] DROP CONSTRAINT [FK_ETLBatchPhase_SQLCommand_SQLCommand_ETLBatchPhase]
ALTER TABLE [ctl].[ETLBatchPhase_SQLCommand] DROP CONSTRAINT [FK_ETLBatchPhase_SQLCommand_SQLCommand_SQLCommand]
ALTER TABLE [ctl].[ETLPackage_SQLCommandTrigger] DROP CONSTRAINT [FK_ETLPackage_SQLCommandTrigger_ETLPackage]
ALTER TABLE [ctl].[ETLPackage_SQLCommandTrigger] DROP CONSTRAINT [FK_ETLPackage_SQLCommandTrigger_SQLCommand]
SET IDENTITY_INSERT [ctl].[SQLCommand] ON
INSERT INTO [ctl].[SQLCommand] ([SQLCommandId], [SQLCommandName], [SQLCommand], [SQLCommandDescription], [RequiresETLBatchIdParameterInd], [RequiresEndETLBatchExecutionParameterInd], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (1, N'Check And Wait For Competing Jobs', N'EXEC [sqlcmd].[CheckAndWaitForCompetingJobs] ''SomeOtherJobName''', N'Waits for a particular job to complete before allowing this job/batch to start.', 0, 0, '20160617 19:13:44.2666667', N'MicrosoftAccount\orders@elish.net', '20160617 19:13:44.2666667', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[SQLCommand] ([SQLCommandId], [SQLCommandName], [SQLCommand], [SQLCommandDescription], [RequiresETLBatchIdParameterInd], [RequiresEndETLBatchExecutionParameterInd], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (2, N'Example SQL Command Trigger', N'EXEC [sqlcmd].[SQLCommandTriggerExample]', N'Example of a SQL Command-based ETL Package trigger.', 0, 0, '20160618 19:01:05.0100000', N'MicrosoftAccount\orders@elish.net', '20160618 19:01:05.0100000', N'MicrosoftAccount\orders@elish.net')
SET IDENTITY_INSERT [ctl].[SQLCommand] OFF
SET IDENTITY_INSERT [ctl].[ETLPackage_SQLCommandTrigger] ON
INSERT INTO [ctl].[ETLPackage_SQLCommandTrigger] ([ETLPackage_SQLCommandTriggerId], [ETLPackageId], [SQLCommandId], [EnabledInd], [CreatedDate], [CreatedUser]) VALUES (1, 2, 2, 1, '20160618 19:01:47.3500000', N'MicrosoftAccount\orders@elish.net')
SET IDENTITY_INSERT [ctl].[ETLPackage_SQLCommandTrigger] OFF
SET IDENTITY_INSERT [ctl].[ETLBatchPhase_SQLCommand] ON
INSERT INTO [ctl].[ETLBatchPhase_SQLCommand] ([ETLBatchPhase_SQLCommandId], [ETLBatchPhaseId], [SQLCommandId], [ExecuteAtBeginningOfPhaseInd], [ExecuteAtEndOfPhaseInd], [FailBatchOnFailureInd], [ExecutionOrder], [CreatedDate], [CreatedUser]) VALUES (1, 1, 1, 1, 0, 0, 0, '20160617 19:14:14.8933333', N'MicrosoftAccount\orders@elish.net')
SET IDENTITY_INSERT [ctl].[ETLBatchPhase_SQLCommand] OFF
SET IDENTITY_INSERT [ctl].[ETLPackage] ON
INSERT INTO [ctl].[ETLPackage] ([ETLPackageId], [SSISDBFolderName], [SSISDBProjectName], [SSISDBPackageName], [EntryPointETLPackageId], [EnabledInd], [ReadyForExecutionInd], [BypassEntryPointInd], [IgnoreDependenciesInd], [ExecuteSundayInd], [ExecuteMondayInd], [ExecuteTuesdayInd], [ExecuteWednesdayInd], [ExecuteThursdayInd], [ExecuteFridayInd], [ExecuteSaturdayInd], [Use32BitDtExecInd], [SupportSeverityLevelId], [Comments], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (2, N'SSISExecutionManager_Example1', N'ExampleProjectA', N'ProjectA_Extract_Control.dtsx', NULL, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 2, N'Example package', '20160614 16:52:37.6566667', N'MicrosoftAccount\orders@elish.net', '20160614 16:52:37.6566667', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLPackage] ([ETLPackageId], [SSISDBFolderName], [SSISDBProjectName], [SSISDBPackageName], [EntryPointETLPackageId], [EnabledInd], [ReadyForExecutionInd], [BypassEntryPointInd], [IgnoreDependenciesInd], [ExecuteSundayInd], [ExecuteMondayInd], [ExecuteTuesdayInd], [ExecuteWednesdayInd], [ExecuteThursdayInd], [ExecuteFridayInd], [ExecuteSaturdayInd], [Use32BitDtExecInd], [SupportSeverityLevelId], [Comments], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (3, N'SSISExecutionManager_Example1', N'ExampleProjectA', N'ProjectA_Extract1.dtsx', 2, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 2, N'Example package', '20160614 16:53:00.9166667', N'MicrosoftAccount\orders@elish.net', '20160614 16:53:00.9166667', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLPackage] ([ETLPackageId], [SSISDBFolderName], [SSISDBProjectName], [SSISDBPackageName], [EntryPointETLPackageId], [EnabledInd], [ReadyForExecutionInd], [BypassEntryPointInd], [IgnoreDependenciesInd], [ExecuteSundayInd], [ExecuteMondayInd], [ExecuteTuesdayInd], [ExecuteWednesdayInd], [ExecuteThursdayInd], [ExecuteFridayInd], [ExecuteSaturdayInd], [Use32BitDtExecInd], [SupportSeverityLevelId], [Comments], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (4, N'SSISExecutionManager_Example1', N'ExampleProjectA', N'ProjectA_Extract2.dtsx', 2, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 2, N'Example package', '20160614 16:53:14.1233333', N'MicrosoftAccount\orders@elish.net', '20160614 16:53:14.1233333', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLPackage] ([ETLPackageId], [SSISDBFolderName], [SSISDBProjectName], [SSISDBPackageName], [EntryPointETLPackageId], [EnabledInd], [ReadyForExecutionInd], [BypassEntryPointInd], [IgnoreDependenciesInd], [ExecuteSundayInd], [ExecuteMondayInd], [ExecuteTuesdayInd], [ExecuteWednesdayInd], [ExecuteThursdayInd], [ExecuteFridayInd], [ExecuteSaturdayInd], [Use32BitDtExecInd], [SupportSeverityLevelId], [Comments], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (5, N'SSISExecutionManager_Example1', N'ExampleProjectA', N'ProjectA_Transform1.dtsx', NULL, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 2, N'Example package', '20160614 18:05:00.4833333', N'MicrosoftAccount\orders@elish.net', '20160614 18:05:00.4833333', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLPackage] ([ETLPackageId], [SSISDBFolderName], [SSISDBProjectName], [SSISDBPackageName], [EntryPointETLPackageId], [EnabledInd], [ReadyForExecutionInd], [BypassEntryPointInd], [IgnoreDependenciesInd], [ExecuteSundayInd], [ExecuteMondayInd], [ExecuteTuesdayInd], [ExecuteWednesdayInd], [ExecuteThursdayInd], [ExecuteFridayInd], [ExecuteSaturdayInd], [Use32BitDtExecInd], [SupportSeverityLevelId], [Comments], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (6, N'SSISExecutionManager_Example1', N'ExampleProjectA', N'ProjectA_Load1.dtsx', NULL, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 2, N'Example package', '20160614 18:05:34.5533333', N'MicrosoftAccount\orders@elish.net', '20160614 18:05:34.5533333', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLPackage] ([ETLPackageId], [SSISDBFolderName], [SSISDBProjectName], [SSISDBPackageName], [EntryPointETLPackageId], [EnabledInd], [ReadyForExecutionInd], [BypassEntryPointInd], [IgnoreDependenciesInd], [ExecuteSundayInd], [ExecuteMondayInd], [ExecuteTuesdayInd], [ExecuteWednesdayInd], [ExecuteThursdayInd], [ExecuteFridayInd], [ExecuteSaturdayInd], [Use32BitDtExecInd], [SupportSeverityLevelId], [Comments], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (11, N'SSISExecutionManager_Example1', N'ExampleProjectB', N'ProjectB_Extract1.dtsx', NULL, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 2, N'Example package', '20160617 10:22:50.6933333', N'MicrosoftAccount\orders@elish.net', '20160617 10:22:50.6933333', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLPackage] ([ETLPackageId], [SSISDBFolderName], [SSISDBProjectName], [SSISDBPackageName], [EntryPointETLPackageId], [EnabledInd], [ReadyForExecutionInd], [BypassEntryPointInd], [IgnoreDependenciesInd], [ExecuteSundayInd], [ExecuteMondayInd], [ExecuteTuesdayInd], [ExecuteWednesdayInd], [ExecuteThursdayInd], [ExecuteFridayInd], [ExecuteSaturdayInd], [Use32BitDtExecInd], [SupportSeverityLevelId], [Comments], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (12, N'SSISExecutionManager_Example1', N'ExampleProjectB', N'ProjectB_Transform1.dtsx', NULL, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 2, N'Example package', '20160617 10:22:50.6933333', N'MicrosoftAccount\orders@elish.net', '20160617 10:22:50.6933333', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLPackage] ([ETLPackageId], [SSISDBFolderName], [SSISDBProjectName], [SSISDBPackageName], [EntryPointETLPackageId], [EnabledInd], [ReadyForExecutionInd], [BypassEntryPointInd], [IgnoreDependenciesInd], [ExecuteSundayInd], [ExecuteMondayInd], [ExecuteTuesdayInd], [ExecuteWednesdayInd], [ExecuteThursdayInd], [ExecuteFridayInd], [ExecuteSaturdayInd], [Use32BitDtExecInd], [SupportSeverityLevelId], [Comments], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (13, N'SSISExecutionManager_Example1', N'ExampleProjectB', N'ProjectB_Load1.dtsx', NULL, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 2, N'Example package', '20160617 10:22:50.6933333', N'MicrosoftAccount\orders@elish.net', '20160617 10:22:50.6933333', N'MicrosoftAccount\orders@elish.net')
SET IDENTITY_INSERT [ctl].[ETLPackage] OFF
SET IDENTITY_INSERT [ctl].[ETLBatchPhase_ETLPackage] ON
INSERT INTO [ctl].[ETLBatchPhase_ETLPackage] ([ETLBatchPhase_ETLPackageId], [ETLBatchPhaseId], [ETLPackageId], [CreatedDate], [CreatedUser]) VALUES (1, 1, 2, '20160617 10:26:09.5166667', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLBatchPhase_ETLPackage] ([ETLBatchPhase_ETLPackageId], [ETLBatchPhaseId], [ETLPackageId], [CreatedDate], [CreatedUser]) VALUES (2, 1, 3, '20160617 10:26:13.3166667', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLBatchPhase_ETLPackage] ([ETLBatchPhase_ETLPackageId], [ETLBatchPhaseId], [ETLPackageId], [CreatedDate], [CreatedUser]) VALUES (3, 1, 4, '20160617 10:26:15.2733333', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLBatchPhase_ETLPackage] ([ETLBatchPhase_ETLPackageId], [ETLBatchPhaseId], [ETLPackageId], [CreatedDate], [CreatedUser]) VALUES (4, 1, 11, '20160617 10:26:16.7033333', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLBatchPhase_ETLPackage] ([ETLBatchPhase_ETLPackageId], [ETLBatchPhaseId], [ETLPackageId], [CreatedDate], [CreatedUser]) VALUES (5, 2, 5, '20160617 10:26:27.9700000', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLBatchPhase_ETLPackage] ([ETLBatchPhase_ETLPackageId], [ETLBatchPhaseId], [ETLPackageId], [CreatedDate], [CreatedUser]) VALUES (6, 2, 12, '20160617 10:26:29.8100000', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLBatchPhase_ETLPackage] ([ETLBatchPhase_ETLPackageId], [ETLBatchPhaseId], [ETLPackageId], [CreatedDate], [CreatedUser]) VALUES (7, 3, 6, '20160617 10:26:39.2000000', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLBatchPhase_ETLPackage] ([ETLBatchPhase_ETLPackageId], [ETLBatchPhaseId], [ETLPackageId], [CreatedDate], [CreatedUser]) VALUES (8, 3, 13, '20160617 10:26:42.6600000', N'MicrosoftAccount\orders@elish.net')
SET IDENTITY_INSERT [ctl].[ETLBatchPhase_ETLPackage] OFF
SET IDENTITY_INSERT [ctl].[ETLBatchPhase] ON
INSERT INTO [ctl].[ETLBatchPhase] ([ETLBatchPhaseId], [ETLBatchPhase], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (1, N'Extract', '20160616 19:38:30.4566667', N'MicrosoftAccount\orders@elish.net', '20160616 19:38:30.4566667', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLBatchPhase] ([ETLBatchPhaseId], [ETLBatchPhase], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (2, N'Transform', '20160616 19:38:34.4566667', N'MicrosoftAccount\orders@elish.net', '20160616 19:38:34.4566667', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLBatchPhase] ([ETLBatchPhaseId], [ETLBatchPhase], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (3, N'Load', '20160616 19:38:37.1266667', N'MicrosoftAccount\orders@elish.net', '20160616 19:38:37.1266667', N'MicrosoftAccount\orders@elish.net')
SET IDENTITY_INSERT [ctl].[ETLBatchPhase] OFF
SET IDENTITY_INSERT [ctl].[ETLBatch_ETLBatchPhase] ON
INSERT INTO [ctl].[ETLBatch_ETLBatchPhase] ([ETLBatch_ETLBatchPhaseId], [ETLBatchId], [ETLBatchPhaseId], [PhaseExecutionOrderNo], [CreatedDate], [CreatedUser]) VALUES (1, 1, 1, 1, '20160616 19:39:40.0366667', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLBatch_ETLBatchPhase] ([ETLBatch_ETLBatchPhaseId], [ETLBatchId], [ETLBatchPhaseId], [PhaseExecutionOrderNo], [CreatedDate], [CreatedUser]) VALUES (2, 1, 2, 2, '20160616 19:39:42.0066667', N'MicrosoftAccount\orders@elish.net')
INSERT INTO [ctl].[ETLBatch_ETLBatchPhase] ([ETLBatch_ETLBatchPhaseId], [ETLBatchId], [ETLBatchPhaseId], [PhaseExecutionOrderNo], [CreatedDate], [CreatedUser]) VALUES (3, 1, 3, 3, '20160616 19:39:52.7566667', N'MicrosoftAccount\orders@elish.net')
SET IDENTITY_INSERT [ctl].[ETLBatch_ETLBatchPhase] OFF
SET IDENTITY_INSERT [ctl].[ETLBatch] ON
INSERT INTO [ctl].[ETLBatch] ([ETLBatchId], [ETLBatchName], [ETLBatchDescription], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (1, N'Daily Data Warehouse Load', N'This batch includes all phases and packages necessary for the daily data warehouse load.', '20160614 18:20:23.3400000', N'MicrosoftAccount\orders@elish.net', '20160614 18:20:23.3400000', N'MicrosoftAccount\orders@elish.net')
SET IDENTITY_INSERT [ctl].[ETLBatch] OFF
SET IDENTITY_INSERT [ctl].[ETLPackage_ETLPackageDependency] ON
INSERT INTO [ctl].[ETLPackage_ETLPackageDependency] ([ETLPackage_ETLPackageDependencyId], [ETLPackageId], [DependedOnETLPackageId], [EnabledInd], [Comments], [CreatedDate], [CreatedUser], [LastUpdatedDate], [LastUpdatedUser]) VALUES (1, 5, 12, 1, N'ProjectB_Package1.dtsx won''t execute until ProjectA_Package2.dtsx completes successfully.', '20160614 18:17:22.1666667', N'MicrosoftAccount\orders@elish.net', '20160614 18:17:22.1666667', N'MicrosoftAccount\orders@elish.net')
SET IDENTITY_INSERT [ctl].[ETLPackage_ETLPackageDependency] OFF
ALTER TABLE [ctl].[ETLPackage_ETLPackageDependency]
    ADD CONSTRAINT [FK_ETLPackage_ETLPackageDependency_ETLPackage] FOREIGN KEY ([ETLPackageId]) REFERENCES [ctl].[ETLPackage] ([ETLPackageId])
ALTER TABLE [ctl].[ETLPackage_ETLPackageDependency]
    ADD CONSTRAINT [FK_ETLPackage_ETLPackageDependency_ETLPackage_DependentOn] FOREIGN KEY ([DependedOnETLPackageId]) REFERENCES [ctl].[ETLPackage] ([ETLPackageId])
ALTER TABLE [ctl].[ETLBatch_ETLBatchPhase]
    ADD CONSTRAINT [FK_ETLBatch_ETLBatchPhase_ETLBatch] FOREIGN KEY ([ETLBatchId]) REFERENCES [ctl].[ETLBatch] ([ETLBatchId])
ALTER TABLE [ctl].[ETLBatch_ETLBatchPhase]
    ADD CONSTRAINT [FK_ETLBatch_ETLBatchPhase_ETLBatchPhase] FOREIGN KEY ([ETLBatchPhaseId]) REFERENCES [ctl].[ETLBatchPhase] ([ETLBatchPhaseId])
ALTER TABLE [ctl].[ETLBatchPhase_ETLPackage]
    ADD CONSTRAINT [FK_ETLBatchPhase_ETLPackage_ETLPackage_ETLBatchPhase] FOREIGN KEY ([ETLBatchPhaseId]) REFERENCES [ctl].[ETLBatchPhase] ([ETLBatchPhaseId])
ALTER TABLE [ctl].[ETLBatchPhase_ETLPackage]
    ADD CONSTRAINT [FK_ETLBatchPhase_ETLPackage_ETLPackage_ETLPackage] FOREIGN KEY ([ETLPackageId]) REFERENCES [ctl].[ETLPackage] ([ETLPackageId])
ALTER TABLE [ctl].[ETLPackage]
    ADD CONSTRAINT [FK_ETLPackage_EntryPointETLPackageId] FOREIGN KEY ([EntryPointETLPackageId]) REFERENCES [ctl].[ETLPackage] ([ETLPackageId])
ALTER TABLE [ctl].[ETLPackage]
    ADD CONSTRAINT [FK_ETLPackage_SupportSeverityLevel] FOREIGN KEY ([SupportSeverityLevelId]) REFERENCES [ref].[SupportSeverityLevel] ([SupportSeverityLevelId])
ALTER TABLE [ctl].[ETLBatchPhase_SQLCommand]
    ADD CONSTRAINT [FK_ETLBatchPhase_SQLCommand_SQLCommand_ETLBatchPhase] FOREIGN KEY ([ETLBatchPhaseId]) REFERENCES [ctl].[ETLBatchPhase] ([ETLBatchPhaseId])
ALTER TABLE [ctl].[ETLBatchPhase_SQLCommand]
    ADD CONSTRAINT [FK_ETLBatchPhase_SQLCommand_SQLCommand_SQLCommand] FOREIGN KEY ([SQLCommandId]) REFERENCES [ctl].[SQLCommand] ([SQLCommandId])
ALTER TABLE [ctl].[ETLPackage_SQLCommandTrigger]
    ADD CONSTRAINT [FK_ETLPackage_SQLCommandTrigger_ETLPackage] FOREIGN KEY ([ETLPackageId]) REFERENCES [ctl].[ETLPackage] ([ETLPackageId])
ALTER TABLE [ctl].[ETLPackage_SQLCommandTrigger]
    ADD CONSTRAINT [FK_ETLPackage_SQLCommandTrigger_SQLCommand] FOREIGN KEY ([SQLCommandId]) REFERENCES [ctl].[SQLCommand] ([SQLCommandId])