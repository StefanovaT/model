---
uid: Logistics.LogisticUnitContents
---
# Logistics.LogisticUnitContents Entity

**Namespace:** [Logistics](Logistics.md)  

Theoretical or actual content of a logistic unit. Entity: Log_Logistic_Unit_Contents (Introduced in version 21.1.0.77)

## Default Visualization
Default Display Text Format:  
_{LogisticUnit.SerialCode}_  
Default Search Members:  
_LotNumber; LogisticUnit.SerialCode_  
Code Data Member:  
_LotNumber_  
Name Data Member:  
_LogisticUnit.SerialCode_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Logistics.LogisticUnits](Logistics.LogisticUnits.md)  
Aggregate Root:  
[Logistics.LogisticUnits](Logistics.LogisticUnits.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [BaseQuantity](Logistics.LogisticUnitContents.md#basequantity) | decimal (12, 3) | The quantity, expressed in the base measurement category of the product. `Required` `Filter(eq;ge;le)` 
| [DisplayText](Logistics.LogisticUnitContents.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [ExpirationDate](Logistics.LogisticUnitContents.md#expirationdate) | date __nullable__ | Expiration date of the goods. null means unknown or N/A. `Filter(multi eq;ge;le)` 
| [GrossWeight](Logistics.LogisticUnitContents.md#grossweight) | decimal (12, 3) __nullable__ | Gross weight in kilograms (kg). null means unknown. `Filter(eq;ge;le)` 
| [Id](Logistics.LogisticUnitContents.md#id) | guid |  
| [LineNo](Logistics.LogisticUnitContents.md#lineno) | int32 | Consecutive position within the logistic unit. `Required` `Filter(multi eq)` 
| [LotNumber](Logistics.LogisticUnitContents.md#lotnumber) | string (32) __nullable__ | The production lot number. null means unknown. `Filter(multi eq;like)` 
| [Notes](Logistics.LogisticUnitContents.md#notes) | string (max) __nullable__ | Notes for this LogisticUnitContent. 
| [ObjectVersion](Logistics.LogisticUnitContents.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [Quantity](Logistics.LogisticUnitContents.md#quantity) | decimal (12, 3) | Quantity of the product in the logistic unit. Expressed in the specified measurement unit. `Required` `Filter(multi eq;ge;le)` 
| [StandardQuantity](Logistics.LogisticUnitContents.md#standardquantity) | decimal (12, 3) | The quantity, expessed in the standard measurement unit of the product. `Required` `Filter(eq;ge;le)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [LogisticUnit](Logistics.LogisticUnitContents.md#logisticunit) | [LogisticUnits](Logistics.LogisticUnits.md) | The containing logistic unit. `Required` `Filter(multi eq)` `Owner` |
| [Product](Logistics.LogisticUnitContents.md#product) | [Products](General.Products.Products.md) | The product, which is contained in the logistic unit. `Required` `Filter(multi eq)` |
| [QuantityUnit](Logistics.LogisticUnitContents.md#quantityunit) | [MeasurementUnits](General.MeasurementUnits.md) | The measurement unit of the quantity. `Required` `Filter(multi eq)` |


## Attribute Details

### BaseQuantity

The quantity, expressed in the base measurement category of the product. `Required` `Filter(eq;ge;le)`

_Type_: **decimal (12, 3)**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### ExpirationDate

Expiration date of the goods. null means unknown or N/A. `Filter(multi eq;ge;le)`

_Type_: **date __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  

### GrossWeight

Gross weight in kilograms (kg). null means unknown. `Filter(eq;ge;le)`

_Type_: **decimal (12, 3) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### LineNo

Consecutive position within the logistic unit. `Required` `Filter(multi eq)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.LogisticUnit.Contents.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 1)`

_Front-End Recalc Expressions:_  
`( obj.LogisticUnit.Contents.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 1)`
### LotNumber

The production lot number. null means unknown. `Filter(multi eq;like)`

_Type_: **string (32) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, Like, EqualsIn**  
_Supports Order By_: **False**  
_Maximum Length_: **32**  

### Notes

Notes for this LogisticUnitContent.

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### Quantity

Quantity of the product in the logistic unit. Expressed in the specified measurement unit. `Required` `Filter(multi eq;ge;le)`

_Type_: **decimal (12, 3)**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  

### StandardQuantity

The quantity, expessed in the standard measurement unit of the product. `Required` `Filter(eq;ge;le)`

_Type_: **decimal (12, 3)**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  


## Reference Details

### LogisticUnit

The containing logistic unit. `Required` `Filter(multi eq)` `Owner`

_Type_: **[LogisticUnits](Logistics.LogisticUnits.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### Product

The product, which is contained in the logistic unit. `Required` `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  

### QuantityUnit

The measurement unit of the quantity. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.MeasurementUnits.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  


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

[!list limit=1000 erp.entity=Logistics.LogisticUnitContents erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Logistics.LogisticUnitContents erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Logistics_LogisticUnitContents?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Logistics_LogisticUnitContents?$top=10>

