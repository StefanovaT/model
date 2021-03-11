# Table Wms_Warehouse_Order_Lines

A planned task (operation) in a warehouse order. Entity: Wms_Warehouse_Order_Lines (Introduced in version 20.1)

## Owner Tables Hierarchy

* [Wms_Warehouse_Orders](Wms_Warehouse_Orders.md)
* [Gen_Documents](Gen_Documents.md)

## Summary

| Name | Type | Description |
| - | - | --- |
|[Warehouse_Order_Line_Id](#warehouse_order_line_id)|`uniqueidentifier` `PK`||
|[Warehouse_Order_Id](#warehouse_order_id)|`uniqueidentifier` ||
|[Line_No](#line_no)|`int` |Unique consecutive line number within the order.|
|[Warehouse_Worker_Id](#warehouse_worker_id)|`uniqueidentifier` |Human or robot worker, which should execute the operation. NULL means that the line is shared among all workers, assigned to the order.|
|[Task_Type](#task_type)|`nvarchar(3)` Allowed: `REC`, `DES`, `MOV`, `LBL`, `INS`, `PCK`, `UPK`, `KIT`, `RKT`, `CNT`, `TSK`|The type of the task (operation), which should be performed. REC=Receive; DES=Despatch; MOV=Move; LBL=Label; INS=Inspect; PCK=Pack; UPK=Unpack; KIT=Assemble kit; RKT=Reverse kitting; CNT=Count; TSK=Task.|
|[Warehouse_Zone_Id](#warehouse_zone_id)|`uniqueidentifier` |The warehouse zone, in which the operation should be performed. NULL for operations which do not require specific zone.|
|[Warehouse_Location_Id](#warehouse_location_id)|`uniqueidentifier` |Location, where the opeartion should be performed. NULL for operations, which do not require location.|
|[Product_Id](#product_id)|`uniqueidentifier` |The product, which should be used for the operation.|
|[Product_Variant_Id](#product_variant_id)|`uniqueidentifier` |The product variant, which should be used.|
|[Lot_Id](#lot_id)|`uniqueidentifier` |The lot of the product, which should be used. NULL for operations, which are not lot-specific, or when any lot can be used.|
|[Serial_Number_Id](#serial_number_id)|`uniqueidentifier` |The serial number of the product, which should be used. NULL for operations, which are not serial number-specific, or when any serial number can be used.|
|[Logistic_Unit_Id](#logistic_unit_id)|`uniqueidentifier` |Logistic unit, which should be used in the operation.|
|[Quantity](#quantity)|`decimal(12, 3)` |The quantity of the product, which should be processed.|
|[Quantity_Unit_Id](#quantity_unit_id)|`uniqueidentifier` |The measurement unit of Quantity. NULL for operations, which are not quantity-related.|
|[To_Warehouse_Location_Id](#to_warehouse_location_id)|`uniqueidentifier` |Destination warehouse location. NULL for operations, which do not specify destination location.|
|[Notes](#notes)|`nvarchar(2147483647)` ||
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Warehouse_Order_Line_Id


Warehouse_Order_Line_Id

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|yes|
|Order in Primary Key|1|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|NewGuid|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Warehouse_Order_Line_Id](Wms_Warehouse_Order_Lines.md#warehouse_order_line_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|no|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Warehouse_Order_Id


Warehouse_Order_Id

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|yes|
|Referenced Table|[Wms_Warehouse_Orders](Wms_Warehouse_Orders.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Warehouse_Order_Id](Wms_Warehouse_Order_Lines.md#warehouse_order_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|no|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Line_No


Line_No


Unique consecutive line number within the order.


Unique consecutive line number within the order.

| Property | Value |
| - | - |
|Type|int|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Autoincrement|1|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Line_No](Wms_Warehouse_Order_Lines.md#line_no)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|yes|

### Warehouse_Worker_Id


Warehouse_Worker_Id


Human or robot worker, which should execute the operation. NULL means that the line is shared among all workers, assigned to the order.


Human or robot worker, which should execute the operation. NULL means that the line is shared among all workers, assigned to the order.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Wms_Warehouse_Workers](Wms_Warehouse_Workers.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Warehouse_Worker_Id](Wms_Warehouse_Order_Lines.md#warehouse_worker_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Task_Type


Task_Type


The type of the task (operation), which should be performed. REC=Receive; DES=Despatch; MOV=Move; LBL=Label; INS=Inspect; PCK=Pack; UPK=Unpack; KIT=Assemble kit; RKT=Reverse kitting; CNT=Count; TSK=Task.


The type of the task (operation), which should be performed. REC=Receive; DES=Despatch; MOV=Move; LBL=Label; INS=Inspect; PCK=Pack; UPK=Unpack; KIT=Assemble kit; RKT=Reverse kitting; CNT=Count; TSK=Task.

| Property | Value |
| - | - |
|Type|nvarchar(3)|
|Is Mulitlanguage|no|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Allowed Values|`REC`, `DES`, `MOV`, `LBL`, `INS`, `PCK`, `UPK`, `KIT`, `RKT`, `CNT`, `TSK`|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Task_Type](Wms_Warehouse_Order_Lines.md#task_type)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|3|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Warehouse_Zone_Id


Warehouse_Zone_Id


The warehouse zone, in which the operation should be performed. NULL for operations which do not require specific zone.


The warehouse zone, in which the operation should be performed. NULL for operations which do not require specific zone.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Wms_Warehouse_Zones](Wms_Warehouse_Zones.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Warehouse_Zone_Id](Wms_Warehouse_Order_Lines.md#warehouse_zone_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Warehouse_Location_Id


Warehouse_Location_Id


Location, where the opeartion should be performed. NULL for operations, which do not require location.


Location, where the opeartion should be performed. NULL for operations, which do not require location.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Wms_Warehouse_Locations](Wms_Warehouse_Locations.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Warehouse_Location_Id](Wms_Warehouse_Order_Lines.md#warehouse_location_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Product_Id


Product_Id


The product, which should be used for the operation.


The product, which should be used for the operation.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Products](Gen_Products.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Product_Id](Wms_Warehouse_Order_Lines.md#product_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Product_Variant_Id


Product_Variant_Id


The product variant, which should be used.


The product variant, which should be used.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Product_Variants](Gen_Product_Variants.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Product_Variant_Id](Wms_Warehouse_Order_Lines.md#product_variant_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Lot_Id


Lot_Id


The lot of the product, which should be used. NULL for operations, which are not lot-specific, or when any lot can be used.


The lot of the product, which should be used. NULL for operations, which are not lot-specific, or when any lot can be used.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Inv_Lots](Inv_Lots.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Lot_Id](Wms_Warehouse_Order_Lines.md#lot_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Serial_Number_Id


Serial_Number_Id


The serial number of the product, which should be used. NULL for operations, which are not serial number-specific, or when any serial number can be used.


The serial number of the product, which should be used. NULL for operations, which are not serial number-specific, or when any serial number can be used.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Inv_Serial_Numbers](Inv_Serial_Numbers.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Serial_Number_Id](Wms_Warehouse_Order_Lines.md#serial_number_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Logistic_Unit_Id


Logistic_Unit_Id


Logistic unit, which should be used in the operation.


Logistic unit, which should be used in the operation.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Log_Logistic_Units](Log_Logistic_Units.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Logistic_Unit_Id](Wms_Warehouse_Order_Lines.md#logistic_unit_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Quantity


Quantity


The quantity of the product, which should be processed.


The quantity of the product, which should be processed.

| Property | Value |
| - | - |
|Type|decimal(12, 3)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Quantity](Wms_Warehouse_Order_Lines.md#quantity)|
|Format|N3|
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|
|GreaterThanOrLessThan|None|no|no|

### Quantity_Unit_Id


Quantity_Unit_Id


The measurement unit of Quantity. NULL for operations, which are not quantity-related.


The measurement unit of Quantity. NULL for operations, which are not quantity-related.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Measurement_Units](Gen_Measurement_Units.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Quantity_Unit_Id](Wms_Warehouse_Order_Lines.md#quantity_unit_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### To_Warehouse_Location_Id


To_Warehouse_Location_Id


Destination warehouse location. NULL for operations, which do not specify destination location.


Destination warehouse location. NULL for operations, which do not specify destination location.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Wms_Warehouse_Locations](Wms_Warehouse_Locations.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[To_Warehouse_Location_Id](Wms_Warehouse_Order_Lines.md#to_warehouse_location_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Notes


Notes

| Property | Value |
| - | - |
|Type|nvarchar(2147483647)|
|Is Mulitlanguage|no|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Notes](Wms_Warehouse_Order_Lines.md#notes)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|2147483647|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

### Row_Version


Row_Version

| Property | Value |
| - | - |
|Type|timestamp|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Wms_Warehouse_Order_Lines](Wms_Warehouse_Order_Lines.md).[Row_Version](Wms_Warehouse_Order_Lines.md#row_version)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|no|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

