---
uid: Systems.Monitoring.ResolvedConflicts
---
# Systems.Monitoring.ResolvedConflicts Entity

**Namespace:** [Systems.Monitoring](Systems.Monitoring.md)  

Contains records of conflicts, which were automatically resolved by update procedures. Entity: Sys_Resolved_Conflicts

## Renames

Old name: **Systems.Core.ResolvedConflicts**  
New name: **Systems.Monitoring.ResolvedConflicts**  
Version: **24.1.5.35**  
Case: **35911**  



## Default Visualization
Default Display Text Format:  
_{TableName:T}_  
Default Search Members:  
_TableName_  
Name Data Member:  
_TableName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Monitoring.ResolvedConflicts](Systems.Monitoring.ResolvedConflicts.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ConflictDescription](Systems.Monitoring.ResolvedConflicts.md#conflictdescription) | [MultilanguageString (400)](../data-types.md#multilanguagestring) | Description of the conflict. `Required` `ReadOnly` 
| [DisplayText](Systems.Monitoring.ResolvedConflicts.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Systems.Monitoring.ResolvedConflicts.md#id) | guid |  
| [ObjectVersion](Systems.Monitoring.ResolvedConflicts.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [ResolveConfirmedByUser](Systems.Monitoring.ResolvedConflicts.md#resolveconfirmedbyuser) | boolean | True, when the conflict resolution was manually confirmed by user. `Required` `Default(false)` `Filter(eq)` 
| [ResolveConfirmedTime](Systems.Monitoring.ResolvedConflicts.md#resolveconfirmedtime) | datetime __nullable__ | Time when the conflict resolution was confirmed by the user. `Filter(ge;le)` `ReadOnly` 
| [ResolveDescription](Systems.Monitoring.ResolvedConflicts.md#resolvedescription) | [MultilanguageString (400)](../data-types.md#multilanguagestring) | Description of the resolution of the conflict. `Required` `ReadOnly` 
| [ResolvedTime](Systems.Monitoring.ResolvedConflicts.md#resolvedtime) | datetime | Time when the resolution of the conflict was made. `Required` `Default(Now)` `Filter(ge;le)` `ReadOnly` 
| [RevisedByUser](Systems.Monitoring.ResolvedConflicts.md#revisedbyuser) | boolean | True, when the conflict resolution was revised (reviewed) manually by user. `Required` `Default(false)` `Filter(eq)` `ReadOnly` 
| [TableName](Systems.Monitoring.ResolvedConflicts.md#tablename) | [MultilanguageString (64)](../data-types.md#multilanguagestring) | Name of the table in which the conflict has occurred. `Required` `Filter(like)` `ReadOnly` 
| [URL](Systems.Monitoring.ResolvedConflicts.md#url) | string (254) | URL of the item (the row) for which the conflict occurred. `Required` `ReadOnly` 


## Attribute Details

### ConflictDescription

Description of the conflict. `Required` `ReadOnly`

_Type_: **[MultilanguageString (400)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
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

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### ResolveConfirmedByUser

True, when the conflict resolution was manually confirmed by user. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### ResolveConfirmedTime

Time when the conflict resolution was confirmed by the user. `Filter(ge;le)` `ReadOnly`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`DateTime.Now`

### ResolveDescription

Description of the resolution of the conflict. `Required` `ReadOnly`

_Type_: **[MultilanguageString (400)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ResolvedTime

Time when the resolution of the conflict was made. `Required` `Default(Now)` `Filter(ge;le)` `ReadOnly`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDateTime**  
_Show in UI_: **ShownByDefault**  

### RevisedByUser

True, when the conflict resolution was revised (reviewed) manually by user. `Required` `Default(false)` `Filter(eq)` `ReadOnly`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### TableName

Name of the table in which the conflict has occurred. `Required` `Filter(like)` `ReadOnly`

_Type_: **[MultilanguageString (64)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### URL

URL of the item (the row) for which the conflict occurred. `Required` `ReadOnly`

_Type_: **string (254)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
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

[!list limit=1000 erp.entity=Systems.Monitoring.ResolvedConflicts erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Systems.Monitoring.ResolvedConflicts erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Monitoring_ResolvedConflicts?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Monitoring_ResolvedConflicts?$top=10>

