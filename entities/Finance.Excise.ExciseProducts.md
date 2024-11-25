---
uid: Finance.Excise.ExciseProducts
---
# Finance.Excise.ExciseProducts Entity

**Namespace:** [Finance.Excise](Finance.Excise.md)  

Excise product codes are defined by the taxation and customs authorities. For EU, these are 4-letter codes, similar to T200, S200, B000, etc. . Entity: Exc_Excise_Products (Introduced in version 21.1.3.87)

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
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
* [Finance.Excise.ExciseProducts](Finance.Excise.ExciseProducts.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Code](Finance.Excise.ExciseProducts.md#code) | string (32) | The unique code of the ExciseProduct. `Required` `Filter(multi eq;like)` `ORD` 
| [DisplayText](Finance.Excise.ExciseProducts.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Finance.Excise.ExciseProducts.md#id) | guid |  
| [Name](Finance.Excise.ExciseProducts.md#name) | [MultilanguageString (500)](../data-types.md#multilanguagestring) | Multilanguage string. `Required` `Filter(like)` 
| [ObjectVersion](Finance.Excise.ExciseProducts.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ExciseProductCategory](Finance.Excise.ExciseProducts.md#exciseproductcategory) | [ExciseProductCategories](Finance.Excise.ExciseProductCategories.md) | The category of the excise product. `Required` `Filter(multi eq)` |


## Attribute Details

### Code

The unique code of the ExciseProduct. `Required` `Filter(multi eq;like)` `ORD`

_Type_: **string (32)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like, EqualsIn**  
_Supports Order By_: **True**  
_Maximum Length_: **32**  
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

### Name

Multilanguage string. `Required` `Filter(like)`

_Type_: **[MultilanguageString (500)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  


## Reference Details

### ExciseProductCategory

The category of the excise product. `Required` `Filter(multi eq)`

_Type_: **[ExciseProductCategories](Finance.Excise.ExciseProductCategories.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
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

[!list limit=1000 erp.entity=Finance.Excise.ExciseProducts erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Excise.ExciseProducts erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Excise_ExciseProducts?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Excise_ExciseProducts?$top=10>

