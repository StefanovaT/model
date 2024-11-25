---
uid: Systems.Config.Jobs
---
# Systems.Config.Jobs Entity

**Namespace:** [Systems.Config](Systems.Config.md)  

The jobs, which are configured in the system. Entity: Sys_Jobs (Introduced in version 20.1)

## Renames

Old name: **Systems.Core.Jobs**  
New name: **Systems.Config.Jobs**  
Version: **24.1.5.35**  
Case: **35911**  



## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  
Name Data Member:  
_Name_  
Category:  _Settings_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Config.Jobs](Systems.Config.Jobs.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Systems.Config.Jobs.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Systems.Config.Jobs.md#id) | guid |  
| [IsActive](Systems.Config.Jobs.md#isactive) | boolean | Specifies whether the job is active and ready for running. `Required` `Default(true)` `Filter(eq)` 
| [JobType](Systems.Config.Jobs.md#jobtype) | [JobType](Systems.Config.Jobs.md#jobtype) | The system type of the job. DOC=Document Change State, POS=Run Postponed Events, DNT=Delete Old Notifications, DPI=Delete Old Print Images, DDV=Delete Old Document Versions, DIM=Delete Old Information Messages. `Required` `Filter(multi eq)` 
| [Name](Systems.Config.Jobs.md#name) | string (254) | The name of the job. `Required` `Filter(eq;like)` `ORD` 
| [Notes](Systems.Config.Jobs.md#notes) | string (max) __nullable__ | Notes for this Job. 
| [ObjectVersion](Systems.Config.Jobs.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [RunOnIdle](Systems.Config.Jobs.md#runonidle) | boolean | Specifies whether to automatically run the job when the server is idle. `Required` `Default(true)` `Filter(eq)` 


## Attribute Details

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### IsActive

Specifies whether the job is active and ready for running. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### JobType

The system type of the job. DOC=Document Change State, POS=Run Postponed Events, DNT=Delete Old Notifications, DPI=Delete Old Print Images, DDV=Delete Old Document Versions, DIM=Delete Old Information Messages. `Required` `Filter(multi eq)`

_Type_: **[JobType](Systems.Config.Jobs.md#jobtype)**  
_Category_: **System**  
Allowed values for the `JobType`(Systems.Config.Jobs.md#jobtype) data attribute  
_Allowed Values (Systems.Config.JobsRepository.JobType Enum Members)_  

| Value | Description |
| ---- | --- |
| DocumentChangeState | DocumentChangeState value. Stored as 'DOC'. <br /> _Database Value:_ 'DOC' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'DocumentChangeState' |
| RunPostponedEvents | RunPostponedEvents value. Stored as 'POS'. <br /> _Database Value:_ 'POS' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'RunPostponedEvents' |
| DeleteOldNotifications | DeleteOldNotifications value. Stored as 'DNT'. <br /> _Database Value:_ 'DNT' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'DeleteOldNotifications' |
| DeleteOldPrintImages | DeleteOldPrintImages value. Stored as 'DPI'. <br /> _Database Value:_ 'DPI' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'DeleteOldPrintImages' |
| DeleteOldDocumentVersions | Delete old document versions. Stored as 'DDV'. <br /> _Database Value:_ 'DDV' <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'DeleteOldDocumentVersions' |
| DeleteOldInformation<br />Messages | Delete old information messages. Stored as 'DIM'. <br /> _Database Value:_ 'DIM' <br /> _Model Value:_ 5 <br /> _Domain API Value:_ 'DeleteOldInformation<br />Messages' |
| DeleteAttribute<br />ChangesHistory | Delete attribute changes history. Stored as 'DAC'. <br /> _Database Value:_ 'DAC' <br /> _Model Value:_ 6 <br /> _Domain API Value:_ 'DeleteAttribute<br />ChangesHistory' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Name

The name of the job. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (254)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **254**  
_Show in UI_: **ShownByDefault**  

### Notes

Notes for this Job.

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### RunOnIdle

Specifies whether to automatically run the job when the server is idle. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  


## API Methods

Methods that can be invoked in public APIs.

### GetAllowedCustomPropertyValues

Gets the allowed values for the specified custom property for this entity object.              If supported the result is ordered by property value. Some property value sources do not support ordering - in that case the result is not ordered.  
_Return Type_: **Collection Of [CustomPropertyValue](../data-types.md#systems.bpm.custompropertyvalue)**  
_Declaring Type_: **EntityObject**  
_Domain API Request_: **GET**  

**Parameters**  
  * **customPropertyCode**  
    The code of the custom property  
    _Type_: string  

  * **search**  
    The search text - searches by value or description. Can contain wildcard character %.  
    _Type_: string  
     _Optional_: True  
    _Default Value_: null  

  * **exactMatch**  
    If true the search text should be equal to the property value  
    _Type_: boolean  
     _Optional_: True  
    _Default Value_: False  

  * **orderByDescription**  
    If true the result is ordered by Description instead of Value. Note that ordering is not always possible.  
    _Type_: boolean  
     _Optional_: True  
    _Default Value_: False  

  * **top**  
    The top clause - default is 10  
    _Type_: int32  
     _Optional_: True  
    _Default Value_: 10  

  * **skip**  
    The skip clause - default is 0  
    _Type_: int32  
     _Optional_: True  
    _Default Value_: 0  


### CreateNotification

Create a notification immediately in a separate transaction, and send a real-time event to the user.  
_Return Type_: **void**  
_Declaring Type_: **EntityObject**  
_Domain API Request_: **POST**  

**Parameters**  
  * **user**  
    The user.  
    _Type_: [Users](Systems.Security.Users.md)  

  * **notificationClass**  
    The notification class.  
    _Type_: string  

  * **subject**  
    The notification subject.  
    _Type_: string  


### CreateCopy

Duplicates the object and its child objects belonging to the same aggregate.              The duplicated objects are not saved to the data source but remain in the same transaction as the original object.  
_Return Type_: **EntityObject**  
_Declaring Type_: **EntityObject**  
_Domain API Request_: **POST**  


## Business Rules

[!list limit=1000 erp.entity=Systems.Config.Jobs erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Systems.Config.Jobs erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Config_Jobs?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Config_Jobs?$top=10>

