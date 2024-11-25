---
uid: Communities.Social.Groups
---
# Communities.Social.Groups Entity

**Namespace:** [Communities.Social](Communities.Social.md)  

Represents a group of users, sharing interest in the group topic. Entity: Cmm_Social_Groups (Introduced in version 20.1)

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  
Name Data Member:  
_Name_  
Category:  _Definitions_  
Show in UI:  _CannotBeShown_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Communities.Social.Groups](Communities.Social.Groups.md)  
  * [Communities.Social.GroupMembers](Communities.Social.GroupMembers.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Communities.Social.Groups.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Communities.Social.Groups.md#id) | guid |  
| [LastInteractionTimeUtc](Communities.Social.Groups.md#lastinteractiontimeutc) | datetime __nullable__ | The time (in UTC) of the last interaction of any kind (comment, reaction, etc.) in the group. null means the group did not have any interactions yet. `Filter(ge;le)` `ORD` `ReadOnly` `Introduced in version 22.1.6.61` 
| [Name](Communities.Social.Groups.md#name) | string (256) | Multilanguage name of the group. `Required` 
| [Notes](Communities.Social.Groups.md#notes) | string (max) __nullable__ | Notes for this Group. 
| [ObjectVersion](Communities.Social.Groups.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Members | [GroupMembers](Communities.Social.GroupMembers.md) | List of `GroupMember`(Communities.Social.GroupMembers.md) child objects, based on the `Communities.Social.GroupMember.SocialGroup`(Communities.Social.GroupMembers.md#socialgroup) back reference 


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
_Show in UI_: **ShownByDefault**  

### LastInteractionTimeUtc

The time (in UTC) of the last interaction of any kind (comment, reaction, etc.) in the group. null means the group did not have any interactions yet. `Filter(ge;le)` `ORD` `ReadOnly` `Introduced in version 22.1.6.61`

_Type_: **datetime __nullable__**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **True**  
_Show in UI_: **ShownByDefault**  

### Name

Multilanguage name of the group. `Required`

_Type_: **string (256)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **256**  
_Show in UI_: **ShownByDefault**  

### Notes

Notes for this Group.

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

[!list limit=1000 erp.entity=Communities.Social.Groups erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Communities.Social.Groups erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Communities_Social_Groups?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Communities_Social_Groups?$top=10>

