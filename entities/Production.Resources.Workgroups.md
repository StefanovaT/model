---
uid: Production.Resources.Workgroups
---
# Production.Resources.Workgroups Entity

**Namespace:** [Production.Resources](Production.Resources.md)  

Production workgroups. Entity: Prd_Workgroups

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  
Name Data Member:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Production.Resources.Workgroups](Production.Resources.Workgroups.md)  
  * [Production.Resources.WorkgroupResources](Production.Resources.WorkgroupResources.md)  
    * [Production.Resources.Capacity](Production.Resources.Capacity.md)  
  * [Production.Resources.WorkgroupShifts](Production.Resources.WorkgroupShifts.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Active](Production.Resources.Workgroups.md#active) | boolean | Indicates whether the current workgroup is active. `Required` `Default(true)` `Filter(eq)` `Introduced in version 22.1.5.26` 
| [<s>CostCurrency</s>](Production.Resources.Workgroups.md#costcurrency) | string (3) __nullable__ | **OBSOLETE! Do not use!**  
| [DisplayText](Production.Resources.Workgroups.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [FullPath](Production.Resources.Workgroups.md#fullpath) | string (254) __nullable__ | The full path to the current node, represented with slash ('/') as leading, trailing and separator character. Example: '/rootnode/subnode/'. `Default("")` 
| [Id](Production.Resources.Workgroups.md#id) | guid |  
| [Name](Production.Resources.Workgroups.md#name) | string (64) | Name of the workgroup. `Required` `Filter(like)` 
| [Notes](Production.Resources.Workgroups.md#notes) | string (254) __nullable__ | User notes for the workgroup. 
| [ObjectVersion](Production.Resources.Workgroups.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [Parent](Production.Resources.Workgroups.md#parent) | string (255) | Path-like parent workgroup name. `Required` `Default("/")` `Filter(like)` `ORD` 

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Resources | [WorkgroupResources](Production.Resources.WorkgroupResources.md) | List of `WorkgroupResource`(Production.Resources.WorkgroupResources.md) child objects, based on the `Production.Resources.WorkgroupResource.Workgroup`(Production.Resources.WorkgroupResources.md#workgroup) back reference 
| Shifts | [WorkgroupShifts](Production.Resources.WorkgroupShifts.md) | List of `WorkgroupShift`(Production.Resources.WorkgroupShifts.md) child objects, based on the `Production.Resources.WorkgroupShift.Workgroup`(Production.Resources.WorkgroupShifts.md#workgroup) back reference 


## Attribute Details

### Active

Indicates whether the current workgroup is active. `Required` `Default(true)` `Filter(eq)` `Introduced in version 22.1.5.26`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  

### CostCurrency

**OBSOLETE! Do not use!**

_Type_: **string (3) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **3**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### FullPath

The full path to the current node, represented with slash ('/') as leading, trailing and separator character. Example: '/rootnode/subnode/'. `Default("")`

_Type_: **string (254) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
_Default Value_: ****  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

Name of the workgroup. `Required` `Filter(like)`

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### Notes

User notes for the workgroup.

_Type_: **string (254) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### Parent

Path-like parent workgroup name. `Required` `Default("/")` `Filter(like)` `ORD`

_Type_: **string (255)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **True**  
_Maximum Length_: **255**  
_Default Value_: **/**  


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

Creates a notification a sends a real time event to the user.  
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

[!list limit=1000 erp.entity=Production.Resources.Workgroups erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Production.Resources.Workgroups erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Production_Resources_Workgroups?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Production_Resources_Workgroups?$top=10>

