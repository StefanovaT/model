---
uid: Logistics.Wms.WarehouseAvailabilityView
---
# Logistics.Wms.WarehouseAvailabilityView View

**Namespace:** [Logistics.Wms](Logistics.Wms.md)  

The availability of goods in the warehouse locations of the warehouse. Entity: Wms_Warehouse_Availability_Indexed_View (Introduced in version 21.1.1.35)

## Default Visualization
Default Display Text Format:  
_{WarehouseId}: {WarehouseLocationId}_  
Default Search Members:  
__  
Category:  _Views_  
Show in UI:  _ShownByDefault_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Logistics.Wms.WarehouseAvailabilityView](Logistics.Wms.WarehouseAvailabilityView.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [QuantityBaseAvailable](Logistics.Wms.WarehouseAvailabilityView.md#quantitybaseavailable) | decimal (38, 3) | Currently available quantity in base measurement unit. `Required` `Filter(eq;ge;le)` `Introduced in version 22.1.5.25` 
| [StandardQuantityAvailable](Logistics.Wms.WarehouseAvailabilityView.md#standardquantityavailable) | decimal (38, 3) | Currently available theoretical quantity according to the measurement dimensions of the product. It can be used to calculate the quantity available in fixed measurement units like pieces. `Required` `Introduced in version 22.1.5.25` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [LogisticUnit](Logistics.Wms.WarehouseAvailabilityView.md#logisticunit) | [LogisticUnits](Logistics.LogisticUnits.md) | Logistic unit, which was transacted. null when the transaction was not for a logistic unit. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Log_Logistic_Units_Table.Logistic_Unit_Id` |
| [Lot](Logistics.Wms.WarehouseAvailabilityView.md#lot) | [Lots](Logistics.Inventory.Lots.md) | The lot which was transacted. null when the transaction was not for a specific lot. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Inv_Lots_Table.Lot_Id` |
| [Product](Logistics.Wms.WarehouseAvailabilityView.md#product) | [Products](General.Products.Products.md) | The product, which was transacted. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Gen_Products_Table.Id` |
| [ProductVariant](Logistics.Wms.WarehouseAvailabilityView.md#productvariant) | [ProductVariants](General.Products.ProductVariants.md) | The product variant, which was transacted. null when the transaction was not for a product variant. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Gen_Product_Variants_Table.Product_Variant_Id` |
| [SerialNumber](Logistics.Wms.WarehouseAvailabilityView.md#serialnumber) | [SerialNumbers](Logistics.Inventory.SerialNumbers.md) | The serial number which was transacted. null when the transaction was not for a specific serial number. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Inv_Serial_Numbers_Table.Id` |
| [Warehouse](Logistics.Wms.WarehouseAvailabilityView.md#warehouse) | [Warehouses](Logistics.Wms.Warehouses.md) | The warehouse in which the transaction occurred. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Wms_Warehouses_Table.Warehouse_Id` |
| [WarehouseLocation](Logistics.Wms.WarehouseAvailabilityView.md#warehouselocation) | [WarehouseLocations](Logistics.Wms.WarehouseLocations.md) | The warehouse location, where the transaction occurred. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Wms_Warehouse_<br />Locations_Table.Warehouse_Location_Id` |


## Attribute Details

### QuantityBaseAvailable

Currently available quantity in base measurement unit. `Required` `Filter(eq;ge;le)` `Introduced in version 22.1.5.25`

_Type_: **decimal (38, 3)**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### StandardQuantityAvailable

Currently available theoretical quantity according to the measurement dimensions of the product. It can be used to calculate the quantity available in fixed measurement units like pieces. `Required` `Introduced in version 22.1.5.25`

_Type_: **decimal (38, 3)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### LogisticUnit

Logistic unit, which was transacted. null when the transaction was not for a logistic unit. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Log_Logistic_Units_Table.Logistic_Unit_Id`

_Type_: **[LogisticUnits](Logistics.LogisticUnits.md)**  
_Category_: **System**  
_Inherited From_: **Log_Logistic_Units_Table.Logistic_Unit_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **ShownByDefault**  

### Lot

The lot which was transacted. null when the transaction was not for a specific lot. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Inv_Lots_Table.Lot_Id`

_Type_: **[Lots](Logistics.Inventory.Lots.md)**  
_Category_: **System**  
_Inherited From_: **Inv_Lots_Table.Lot_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **ShownByDefault**  

### Product

The product, which was transacted. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Gen_Products_Table.Id`

_Type_: **[Products](General.Products.Products.md)**  
_Category_: **System**  
_Inherited From_: **Gen_Products_Table.Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **ShownByDefault**  

### ProductVariant

The product variant, which was transacted. null when the transaction was not for a product variant. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Gen_Product_Variants_Table.Product_Variant_Id`

_Type_: **[ProductVariants](General.Products.ProductVariants.md)**  
_Category_: **System**  
_Inherited From_: **Gen_Product_Variants_Table.Product_Variant_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **ShownByDefault**  

### SerialNumber

The serial number which was transacted. null when the transaction was not for a specific serial number. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Inv_Serial_Numbers_Table.Id`

_Type_: **[SerialNumbers](Logistics.Inventory.SerialNumbers.md)**  
_Category_: **System**  
_Inherited From_: **Inv_Serial_Numbers_Table.Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **ShownByDefault**  

### Warehouse

The warehouse in which the transaction occurred. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Wms_Warehouses_Table.Warehouse_Id`

_Type_: **[Warehouses](Logistics.Wms.Warehouses.md)**  
_Category_: **System**  
_Inherited From_: **Wms_Warehouses_Table.Warehouse_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **ShownByDefault**  

### WarehouseLocation

The warehouse location, where the transaction occurred. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Wms_Warehouse_Locations_Table.Warehouse_Location_Id`

_Type_: **[WarehouseLocations](Logistics.Wms.WarehouseLocations.md)**  
_Category_: **System**  
_Inherited From_: **Wms_Warehouse_Locations_Table.Warehouse_Location_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **ShownByDefault**  


## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Logistics_Wms_WarehouseAvailabilityView?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Logistics_Wms_WarehouseAvailabilityView?$top=10>

