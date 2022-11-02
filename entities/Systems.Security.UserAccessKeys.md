---
uid: Systems.Security.UserAccessKeys
---
# Systems.Security.UserAccessKeys Entity

**Namespace:** [Systems.Security](Systems.Security.md)  

Obsolete. Not used. Entity: Sec_User_Access_Keys (Obsoleted in version 22.1.6.60)

> [!NOTE]  
> **OBSOLETE! Do not use!**   


## Default Visualization
Default Display Text Format:  
_{User.Name:T}_  
Default Search Members:  
_User.Name_  
Name Data Member:  
_User.Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Systems.Security.Users](Systems.Security.Users.md)  
Aggregate Root:  
[Systems.Security.Users](Systems.Security.Users.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [CanDelete](Systems.Security.UserAccessKeys.md#candelete) | boolean | Obsolete. Not used. `Required` 
| [CanUpdate](Systems.Security.UserAccessKeys.md#canupdate) | boolean | Obsolete. Not used. `Required` 
| [DisplayText](Systems.Security.UserAccessKeys.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Systems.Security.UserAccessKeys.md#id) | guid |  
| [ObjectVersion](Systems.Security.UserAccessKeys.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [Permission1](Systems.Security.UserAccessKeys.md#permission1) | boolean | Obsolete. Not used. `Required` `Default(false)` 
| [Permission10](Systems.Security.UserAccessKeys.md#permission10) | boolean | Obsolete. Not used. `Required` `Default(false)` 
| [Permission2](Systems.Security.UserAccessKeys.md#permission2) | boolean | Obsolete. Not used. `Required` `Default(false)` 
| [Permission3](Systems.Security.UserAccessKeys.md#permission3) | boolean | Obsolete. Not used. `Required` `Default(false)` 
| [Permission4](Systems.Security.UserAccessKeys.md#permission4) | boolean | Obsolete. Not used. `Required` `Default(false)` 
| [Permission5](Systems.Security.UserAccessKeys.md#permission5) | boolean | Obsolete. Not used. `Required` `Default(false)` 
| [Permission6](Systems.Security.UserAccessKeys.md#permission6) | boolean | Obsolete. Not used. `Required` `Default(false)` 
| [Permission7](Systems.Security.UserAccessKeys.md#permission7) | boolean | Obsolete. Not used. `Required` `Default(false)` 
| [Permission8](Systems.Security.UserAccessKeys.md#permission8) | boolean | Obsolete. Not used. `Required` `Default(false)` 
| [Permission9](Systems.Security.UserAccessKeys.md#permission9) | boolean | Obsolete. Not used. `Required` `Default(false)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [AccessKey](Systems.Security.UserAccessKeys.md#accesskey) | [AccessKeys](Systems.Security.AccessKeys.md) | The access key, containing the user permissions for this UserAccessKey. Null means that all users have unlimited permissions. `Required` `Filter(multi eq)` |
| [User](Systems.Security.UserAccessKeys.md#user) | [Users](Systems.Security.Users.md) | Obsolete. Not used. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### CanDelete

Obsolete. Not used. `Required`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### CanUpdate

Obsolete. Not used. `Required`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### Permission1

Obsolete. Not used. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Permission10

Obsolete. Not used. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Permission2

Obsolete. Not used. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Permission3

Obsolete. Not used. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Permission4

Obsolete. Not used. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Permission5

Obsolete. Not used. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Permission6

Obsolete. Not used. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Permission7

Obsolete. Not used. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Permission8

Obsolete. Not used. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Permission9

Obsolete. Not used. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  


## Reference Details

### AccessKey

The access key, containing the user permissions for this UserAccessKey. Null means that all users have unlimited permissions. `Required` `Filter(multi eq)`

_Type_: **[AccessKeys](Systems.Security.AccessKeys.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  

### User

Obsolete. Not used. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Users](Systems.Security.Users.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  


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

[!list limit=1000 erp.entity=Systems.Security.UserAccessKeys erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Systems.Security.UserAccessKeys erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Security_UserAccessKeys?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Security_UserAccessKeys?$top=10>

