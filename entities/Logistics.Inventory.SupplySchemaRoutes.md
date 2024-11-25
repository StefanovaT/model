---
uid: Logistics.Inventory.SupplySchemaRoutes
---
# Logistics.Inventory.SupplySchemaRoutes Entity

**Namespace:** [Logistics.Inventory](Logistics.Inventory.md)  

Obsolete. Not used. Entity: Inv_Supply_Schema_Routes (Obsoleted in version 22.1.6.60)

> [!NOTE]  
> **OBSOLETE! Do not use!**   


## Default Visualization
Default Display Text Format:  
_{SupplySchema.Name}_  
Default Search Members:  
_SupplySchema.Name_  
Name Data Member:  
_SupplySchema.Name_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Logistics.Inventory.SupplySchemata](Logistics.Inventory.SupplySchemata.md)  
Aggregate Root:  
[Logistics.Inventory.SupplySchemata](Logistics.Inventory.SupplySchemata.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Logistics.Inventory.SupplySchemaRoutes.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Logistics.Inventory.SupplySchemaRoutes.md#id) | guid |  
| [Notes](Logistics.Inventory.SupplySchemaRoutes.md#notes) | string (254) __nullable__ | Notes for this SupplySchemaRoute. 
| [ObjectVersion](Logistics.Inventory.SupplySchemaRoutes.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [SchemaXML](Logistics.Inventory.SupplySchemaRoutes.md#schemaxml) | string (max) __nullable__ | Obsolete. Not used. (Used by the schematic control). 
| [TransitTimeDays](Logistics.Inventory.SupplySchemaRoutes.md#transittimedays) | int32 | Obsolete. Not used. (Time needed for the delivery of the goods using this route). `Required` `Default(0)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [DestinationStore](Logistics.Inventory.SupplySchemaRoutes.md#destinationstore) | [Stores](Logistics.Inventory.Stores.md) | Obsolete. Not used. `Required` `Filter(multi eq)` |
| [SourceStore](Logistics.Inventory.SupplySchemaRoutes.md#sourcestore) | [Stores](Logistics.Inventory.Stores.md) | Obsolete. Not used. `Required` `Filter(multi eq)` |
| [<s>SupplySchema</s>](Logistics.Inventory.SupplySchemaRoutes.md#supplyschema) | [SupplySchemata](Logistics.Inventory.SupplySchemata.md) | **OBSOLETE! Do not use!** The <see cref="SupplySchema"/> to which this SupplySchemaRoute belongs. `Obsolete` `Required` `Filter(multi eq)` `Obsoleted in version 25.1.1.47` `Obsolete` `Owner` |


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

### Notes

Notes for this SupplySchemaRoute.

_Type_: **string (254) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
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

### SchemaXML

Obsolete. Not used. (Used by the schematic control).

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
_Show in UI_: **ShownByDefault**  

### TransitTimeDays

Obsolete. Not used. (Time needed for the delivery of the goods using this route). `Required` `Default(0)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### DestinationStore

Obsolete. Not used. `Required` `Filter(multi eq)`

_Type_: **[Stores](Logistics.Inventory.Stores.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### SourceStore

Obsolete. Not used. `Required` `Filter(multi eq)`

_Type_: **[Stores](Logistics.Inventory.Stores.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### SupplySchema

**OBSOLETE! Do not use!** The <see cref="SupplySchema"/> to which this SupplySchemaRoute belongs. `Obsolete` `Required` `Filter(multi eq)` `Obsoleted in version 25.1.1.47` `Obsolete` `Owner`

_Type_: **[SupplySchemata](Logistics.Inventory.SupplySchemata.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
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

[!list limit=1000 erp.entity=Logistics.Inventory.SupplySchemaRoutes erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Logistics.Inventory.SupplySchemaRoutes erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Logistics_Inventory_SupplySchemaRoutes?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Logistics_Inventory_SupplySchemaRoutes?$top=10>

