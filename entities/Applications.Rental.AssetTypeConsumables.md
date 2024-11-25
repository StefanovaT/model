---
uid: Applications.Rental.AssetTypeConsumables
---
# Applications.Rental.AssetTypeConsumables Entity

**Namespace:** [Applications.Rental](Applications.Rental.md)  

Consumables are products, which are usually sold accompanying an asset rental. Entity: Rent_Asset_Type_Consumables

## Default Visualization
Default Display Text Format:  
_{RentalAssetType.RentalAssetTypeName}_  
Default Search Members:  
_RentalAssetType.RentalAssetTypeName_  
Name Data Member:  
_RentalAssetType.RentalAssetTypeName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Applications.Rental.AssetTypes](Applications.Rental.AssetTypes.md)  
Aggregate Root:  
[Applications.Rental.AssetTypes](Applications.Rental.AssetTypes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ConsumableQuantity](Applications.Rental.AssetTypeConsumables.md#consumablequantity) | [Quantity (12, 3)](../data-types.md#quantity) | Specifies what quantity of the consumable should be offered for each rented asset. `Unit: ConsumableQuantityUnit` `Required` 
| [DisplayText](Applications.Rental.AssetTypeConsumables.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Applications.Rental.AssetTypeConsumables.md#id) | guid |  
| [Notes](Applications.Rental.AssetTypeConsumables.md#notes) | string (max) __nullable__ | Notes for this AssetTypeConsumable. 
| [ObjectVersion](Applications.Rental.AssetTypeConsumables.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ConsumableQuantityUnit](Applications.Rental.AssetTypeConsumables.md#consumablequantityunit) | [MeasurementUnits](General.Products.MeasurementUnits.md) | The measurement unit of Consumable Quantity. `Required` `Filter(multi eq)` |
| [Product](Applications.Rental.AssetTypeConsumables.md#product) | [Products](General.Products.Products.md) | The consumable which is offered accompanying the asset rental. `Required` `Filter(multi eq)` |
| [RentalAssetType](Applications.Rental.AssetTypeConsumables.md#rentalassettype) | [AssetTypes](Applications.Rental.AssetTypes.md) | The rental asset type for which the consumable would be offered. `Required` `Filter(multi eq)` `Owner` |
| [Store](Applications.Rental.AssetTypeConsumables.md#store) | [Stores](Logistics.Inventory.Stores.md) | The store which contains the consumable. `Required` `Filter(multi eq)` |


## Attribute Details

### ConsumableQuantity

Specifies what quantity of the consumable should be offered for each rented asset. `Unit: ConsumableQuantityUnit` `Required`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
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

### Notes

Notes for this AssetTypeConsumable.

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


## Reference Details

### ConsumableQuantityUnit

The measurement unit of Consumable Quantity. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.Products.MeasurementUnits.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Product

The consumable which is offered accompanying the asset rental. `Required` `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### RentalAssetType

The rental asset type for which the consumable would be offered. `Required` `Filter(multi eq)` `Owner`

_Type_: **[AssetTypes](Applications.Rental.AssetTypes.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Show in UI_: **ShownByDefault**  

### Store

The store which contains the consumable. `Required` `Filter(multi eq)`

_Type_: **[Stores](Logistics.Inventory.Stores.md)**  
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

[!list limit=1000 erp.entity=Applications.Rental.AssetTypeConsumables erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Rental.AssetTypeConsumables erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Rental_AssetTypeConsumables?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Rental_AssetTypeConsumables?$top=10>

