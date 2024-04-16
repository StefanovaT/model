---
uid: Projects.AI.TrainingConversations
---
# Projects.AI.TrainingConversations Entity

**Namespace:** [Projects.AI](Projects.AI.md)  

One piece of training data for fine-tuning AI models. Entity: Llm_Training_Conversations (Introduced in version 24.1.3.89)

## Default Visualization
Default Display Text Format:  
_{Id}: {ModelId}_  
Default Search Members:  
__  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Projects.AI.TrainingConversations](Projects.AI.TrainingConversations.md)  
  * [Projects.AI.TrainingConversationMessages](Projects.AI.TrainingConversationMessages.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [CreationTimeUtc](Projects.AI.TrainingConversations.md#creationtimeutc) | datetime | The date and time (UTC) when the conversation was created. `Required` `Default(NowUtc)` `Filter(ge;le)` `ReadOnly` 
| [DisplayText](Projects.AI.TrainingConversations.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Projects.AI.TrainingConversations.md#id) | guid |  
| [LastUpdateTimeUtc](Projects.AI.TrainingConversations.md#lastupdatetimeutc) | datetime | Time when the conversation or any messages in it were created or last modified. Can be used to track changes to the whole aggregate. `Required` `Filter(ge;le)` `ORD` `ReadOnly` 
| [Notes](Projects.AI.TrainingConversations.md#notes) | string (max) __nullable__ | Notes for this training conversation. 
| [ObjectVersion](Projects.AI.TrainingConversations.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [Origin](Projects.AI.TrainingConversations.md#origin) | [Origin](Projects.AI.TrainingConversations.md#origin) | Denotes how (based on what other object) was the conversation initially created. Possible values - User-entered, Chat, Calendar, etc. `Required` `Default("USR")` `Filter(multi eq)` `ReadOnly` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Model](Projects.AI.TrainingConversations.md#model) | [Models](Projects.AI.Models.md) | The model, which is being trained. `Required` `Filter(multi eq)` |
| [OriginDataObject](Projects.AI.TrainingConversations.md#origindataobject) | [ExtensibleDataObjects](Systems.Core.ExtensibleDataObjects.md) (nullable) | The object, whose data was used to initially create the conversation. null means the object is unknown or not a data object. `Filter(multi eq)` `ReadOnly` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Messages | [TrainingConversationMessages](Projects.AI.TrainingConversationMessages.md) | List of `TrainingConversation<br />Message`(Projects.AI.TrainingConversation<br />Messages.md) child objects, based on the `Projects.AI.TrainingConversation<br />Message.TrainingConversation`(Projects.AI.TrainingConversation<br />Messages.md#trainingconversation) back reference 


## Attribute Details

### CreationTimeUtc

The date and time (UTC) when the conversation was created. `Required` `Default(NowUtc)` `Filter(ge;le)` `ReadOnly`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDateTimeUtc**  
_Show in UI_: **ShownByDefault**  

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

### LastUpdateTimeUtc

Time when the conversation or any messages in it were created or last modified. Can be used to track changes to the whole aggregate. `Required` `Filter(ge;le)` `ORD` `ReadOnly`

_Type_: **datetime**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **True**  
_Show in UI_: **ShownByDefault**  

### Notes

Notes for this training conversation.

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

### Origin

Denotes how (based on what other object) was the conversation initially created. Possible values - User-entered, Chat, Calendar, etc. `Required` `Default("USR")` `Filter(multi eq)` `ReadOnly`

_Type_: **[Origin](Projects.AI.TrainingConversations.md#origin)**  
_Category_: **System**  
Allowed values for the `Origin`(Projects.AI.TrainingConversations.md#origin) data attribute  
_Allowed Values (Projects.AI.TrainingConversationsRepository.Origin Enum Members)_  

| Value | Description |
| ---- | --- |
| UserEntered | User-entered. Stored as 'USR'. <br /> _Database Value:_ 'USR' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'UserEntered' |
| Chat | Chat. Stored as 'CHT'. <br /> _Database Value:_ 'CHT' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Chat' |
| Calendar | Calendar. Stored as 'CAL'. <br /> _Database Value:_ 'CAL' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'Calendar' |
| Case | Case. Stored as 'CAS'. <br /> _Database Value:_ 'CAS' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'Case' |
| ToDo | To Do. Stored as 'TOD'. <br /> _Database Value:_ 'TOD' <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'ToDo' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **UserEntered**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### Model

The model, which is being trained. `Required` `Filter(multi eq)`

_Type_: **[Models](Projects.AI.Models.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### OriginDataObject

The object, whose data was used to initially create the conversation. null means the object is unknown or not a data object. `Filter(multi eq)` `ReadOnly`

_Type_: **[ExtensibleDataObjects](Systems.Core.ExtensibleDataObjects.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  


## API Methods

Methods that can be invoked in public APIs.

### GetAllowedCustomPropertyValues

Gets the allowed values for the specified custom property for this entity object.              If supported the result is ordered by property value. Some property value sources do not support ordering - in that case the result is not ordered.  
_Return Type_: **Collection Of [CustomPropertyValue](../data-types.md#general.custompropertyvalue)**  
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

Creates a notification and sends a real time event to the user.  
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
    The subject.  
    _Type_: string  


### CreateCopy

Duplicates the object and its child objects belonging to the same aggregate.              The duplicated objects are not saved to the data source but remain in the same transaction as the original object.  
_Return Type_: **EntityObject**  
_Declaring Type_: **EntityObject**  
_Domain API Request_: **POST**  


## Business Rules

[!list limit=1000 erp.entity=Projects.AI.TrainingConversations erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Projects.AI.TrainingConversations erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Projects_AI_TrainingConversations?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Projects_AI_TrainingConversations?$top=10>

