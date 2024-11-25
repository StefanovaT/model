---
uid: Finance.Cost.CostTypes
---
# Finance.Cost.CostTypes Entity

**Namespace:** [Finance.Cost](Finance.Cost.md)  

Types of costs. Entity: Cost_Types

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Code; Name_  
Code Data Member:  
_Code_  
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
* [Finance.Cost.CostTypes](Finance.Cost.CostTypes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Code](Finance.Cost.CostTypes.md#code) | string (10) | Unique cost type code. Used for charting. `Required` `Filter(eq)` `ORD` 
| [DisplayText](Finance.Cost.CostTypes.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Finance.Cost.CostTypes.md#id) | guid |  
| [IsActive](Finance.Cost.CostTypes.md#isactive) | boolean | Indicates whether this cost type is active and usable for choosing in new documents. `Required` `Default(true)` `Filter(eq)` `Introduced in version 22.1.5.53` 
| [Name](Finance.Cost.CostTypes.md#name) | string (254) | Multilanguage cost type name. `Required` `Filter(like)` 
| [ObjectVersion](Finance.Cost.CostTypes.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 


## Attribute Details

### Code

Unique cost type code. Used for charting. `Required` `Filter(eq)` `ORD`

_Type_: **string (10)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **True**  
_Maximum Length_: **10**  
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

### IsActive

Indicates whether this cost type is active and usable for choosing in new documents. `Required` `Default(true)` `Filter(eq)` `Introduced in version 22.1.5.53`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### Name

Multilanguage cost type name. `Required` `Filter(like)`

_Type_: **string (254)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
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

[!list limit=1000 erp.entity=Finance.Cost.CostTypes erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Cost.CostTypes erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Cost_CostTypes?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Cost_CostTypes?$top=10>

