# Query Gen_Product_Dimensions_Table_Look_Up


## Summary

| Name | Type | Description |
| - | - | --- |
|[Source_Quantity_Unit_Id](#source_quantity_unit_id)|`uniqueidentifier` |The non-base measurement unit for which we specify convertion ratio|
|[Dest_Quantity_Unit_Id](#dest_quantity_unit_id)|`uniqueidentifier` |The measurement unit of Dest_Quantity. Should be one of the units of the base measurement category of the product|
|[Product_Dimension_Id](#product_dimension_id)|`uniqueidentifier` `PK`||
|[Product_Id](#product_id)|`uniqueidentifier` ||
|[Source_Quantity](#source_quantity)|`decimal(0, 0)` |The quantity in the non-base unit|
|[Measurement_Category_Id](#measurement_category_id)|`uniqueidentifier` Readonly|The measurement category of Source Quantity Unit. For each product, only one conversion ratio can be specified for a measurement category.|
|[Dest_Quantity](#dest_quantity)|`decimal(0, 0)` |Quantity in some of the base units, that equals Source_Quantity|
|[Convert_To_Base_Multiplier](#convert_to_base_multiplier)|`decimal(0, 0)` |This was intended to be the multiplier, but due to a historical bug actually contains the divisor of the convertion ratio from the non-base measurement category to the base measurement category. This should be automatically calculated by the system.|
|[Convert_To_Base_Divisor](#convert_to_base_divisor)|`decimal(0, 0)` |This was intended to be the divisor, but due to a historical bug actually contains the multiplier of the convertion ratio from the non-base measurement category to the base measurement category. This should be automatically calculated by the system.|

## Columns

### Source_Quantity_Unit_Id


Source_Quantity_Unit_Id


The non-base measurement unit for which we specify convertion ratio


The non-base measurement unit for which we specify convertion ratio

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Measurement_Units](Gen_Measurement_Units.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Gen_Product_Dimensions](Gen_Product_Dimensions.md).[Source_Quantity_Unit_Id](Gen_Product_Dimensions.md#source_quantity_unit_id)|
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
|Order|1|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|100|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Dest_Quantity_Unit_Id


Dest_Quantity_Unit_Id


The measurement unit of Dest_Quantity. Should be one of the units of the base measurement category of the product


The measurement unit of Dest_Quantity. Should be one of the units of the base measurement category of the product

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Measurement_Units](Gen_Measurement_Units.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Gen_Product_Dimensions](Gen_Product_Dimensions.md).[Dest_Quantity_Unit_Id](Gen_Product_Dimensions.md#dest_quantity_unit_id)|
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
|Order|2|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|100|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Product_Dimension_Id


Product_Dimension_Id

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
|Derived From|[Gen_Product_Dimensions](Gen_Product_Dimensions.md).[Product_Dimension_Id](Gen_Product_Dimensions.md#product_dimension_id)|
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

### Product_Id


Product_Id

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Products](Gen_Products.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Gen_Product_Dimensions](Gen_Product_Dimensions.md).[Product_Id](Gen_Product_Dimensions.md#product_id)|
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
|UI Width|100|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Source_Quantity


Source_Quantity


The quantity in the non-base unit


The quantity in the non-base unit

| Property | Value |
| - | - |
|Type|decimal(0, 0)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|1|
|Derived From|[Gen_Product_Dimensions](Gen_Product_Dimensions.md).[Source_Quantity](Gen_Product_Dimensions.md#source_quantity)|
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
|UI Width|100|
|Supports EQUALS_IN|no|

### Measurement_Category_Id


Measurement_Category_Id


The measurement category of Source Quantity Unit. For each product, only one conversion ratio can be specified for a measurement category.


The measurement category of Source Quantity Unit. For each product, only one conversion ratio can be specified for a measurement category.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Measurement_Categories](Gen_Measurement_Categories.md)|
|Readonly|yes|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Gen_Product_Dimensions](Gen_Product_Dimensions.md).[Measurement_Category_Id](Gen_Product_Dimensions.md#measurement_category_id)|
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
|UI Width|100|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Dest_Quantity


Dest_Quantity


Quantity in some of the base units, that equals Source_Quantity


Quantity in some of the base units, that equals Source_Quantity

| Property | Value |
| - | - |
|Type|decimal(0, 0)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|1|
|Derived From|[Gen_Product_Dimensions](Gen_Product_Dimensions.md).[Dest_Quantity](Gen_Product_Dimensions.md#dest_quantity)|
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
|UI Width|100|
|Supports EQUALS_IN|no|

### Convert_To_Base_Multiplier


Convert_To_Base_Multiplier


This was intended to be the multiplier, but due to a historical bug actually contains the divisor of the convertion ratio from the non-base measurement category to the base measurement category. This should be automatically calculated by the system.


This was intended to be the multiplier, but due to a historical bug actually contains the divisor of the convertion ratio from the non-base measurement category to the base measurement category. This should be automatically calculated by the system.

| Property | Value |
| - | - |
|Type|decimal(0, 0)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Gen_Product_Dimensions](Gen_Product_Dimensions.md).[Convert_To_Base_Multiplier](Gen_Product_Dimensions.md#convert_to_base_multiplier)|
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

### Convert_To_Base_Divisor


Convert_To_Base_Divisor


This was intended to be the divisor, but due to a historical bug actually contains the multiplier of the convertion ratio from the non-base measurement category to the base measurement category. This should be automatically calculated by the system.


This was intended to be the divisor, but due to a historical bug actually contains the multiplier of the convertion ratio from the non-base measurement category to the base measurement category. This should be automatically calculated by the system.

| Property | Value |
| - | - |
|Type|decimal(0, 0)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Gen_Product_Dimensions](Gen_Product_Dimensions.md).[Convert_To_Base_Divisor](Gen_Product_Dimensions.md#convert_to_base_divisor)|
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

