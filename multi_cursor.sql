
IF EXISTS( SELECT 1 FROM INFORMATION_SCHEMA. TABLES WHERE TABLE_NAME = 'Comment')
    EXEC [dbo].[usp_eventStreamItems_create_trigger]
        @tableName = N'Commment',
        @triggerName = N'EventStreamItemsCommentTrigger',
        @msgTypeName = N'comment';
     
    DISABLE TRIGGER [dbo].[usp_eventStreamTrigger] ON [dbo].[Comment];
GO

DISABLE TRIGGER [dbo].[EventStreamAnnoucementsTrigger] ON [dbo].[Annoucement];
DISABLE TRIGGER [dbo].[EventStreamAttachmentTrigger] ON [dbo].[Attachment];
DISABLE TRIGGER [dbo].[EventStreamAvatarTrigger] ON [dbo].[Avatar];
DISABLE TRIGGER [dbo].[EventStreamCategoryTrigger] ON [dbo].[Category];
DISABLE TRIGGER [dbo].[EventStreamCustomerTrigger] ON [dbo].[Customer];
DISABLE TRIGGER [dbo].[EventStreamDemographicsTrigger] ON [dbo].[Demographics];
DISABLE TRIGGER [dbo].[EventStreamEmployeeTrigger] ON [dbo].[Employee];
DISABLE TRIGGER [dbo].[EventStreamOrderTrigger] ON [dbo].[Order];
DISABLE TRIGGER [dbo].[EventStreamProductTrigger] ON [dbo].[Product];
DISABLE TRIGGER [dbo].[EventStreamRegionTrigger] ON [dbo].[Region];
DISABLE TRIGGER [dbo].[EventStreamShipperTrigger] ON [dbo].[Shipper];
DISABLE TRIGGER [dbo].[EventStreamSubscriptionTrigger] ON [dbo].[Subscription];
DISABLE TRIGGER [dbo].[EventStreamTerritoryTrigger] ON [dbo].[Territory];
DISABLE TRIGGER [dbo].[EventStreamUserTrigger] ON [dbo].[User];
DISABLE TRIGGER [dbo].[EventStreamUserpermissionTrigger] ON [dbo].[Userpermission];






