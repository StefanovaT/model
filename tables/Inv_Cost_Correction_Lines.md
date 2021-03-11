# Table Inv_Cost_Correction_Lines

Cost correction detail lines. One line is created for each corrected transaction line. Entity: Inv_Cost_Correction_Lines

## Owner Tables Hierarchy

* [Inv_Cost_Corrections](Inv_Cost_Corrections.md)
* [Gen_Documents](Gen_Documents.md)

## Summary

| Name | Type | Description |
| - | - | --- |
|[Cost_Correction_Line_Id](#cost_correction_line_id)|`uniqueidentifier` `PK`||
|[Cost_Correction_Id](#cost_correction_id)|`uniqueidentifier` ||
|[Transaction_Line_Id](#transaction_line_id)|`uniqueidentifier` |The transaction line, which is corrected.|
|[Cost_Correction_Amount](#cost_correction_amount)|`decimal(14, 2)` |The amount of correction (plus or minus) for the Amount field of the transaction line.|
|[Product_Cost_Adjustment](#product_cost_adjustment)|`decimal(14, 2)` |The amount of correction (plus or minus) for the Product Cost field of the transaction line.|
|[Store_Cost_Adjustment](#store_cost_adjustment)|`decimal(14, 2)` |The amount of correction (plus or minus) for the Store Cost field of the transaction line.|
|[Base_Cost_Adjustment](#base_cost_adjustment)|`decimal(14, 2)` |The amount of correction (plus or minus) for the Base Cost field of the transaction line.|
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Cost_Correction_Line_Id


Cost_Correction_Line_Id

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
|Derived From|[Inv_Cost_Correction_Lines](Inv_Cost_Correction_Lines.md).[Cost_Correction_Line_Id](Inv_Cost_Correction_Lines.md#cost_correction_line_id)|
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

### Cost_Correction_Id


Cost_Correction_Id

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|yes|
|Referenced Table|[Inv_Cost_Corrections](Inv_Cost_Corrections.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Cost_Correction_Lines](Inv_Cost_Correction_Lines.md).[Cost_Correction_Id](Inv_Cost_Correction_Lines.md#cost_correction_id)|
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

### Transaction_Line_Id


Transaction_Line_Id


The transaction line, which is corrected.


The transaction line, which is corrected.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Inv_Transaction_Lines](Inv_Transaction_Lines.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Cost_Correction_Lines](Inv_Cost_Correction_Lines.md).[Transaction_Line_Id](Inv_Cost_Correction_Lines.md#transaction_line_id)|
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
|Equals|NULL|no|no|

### Cost_Correction_Amount


Cost_Correction_Amount


The amount of correction (plus or minus) for the Amount field of the transaction line.


The amount of correction (plus or minus) for the Amount field of the transaction line.

| Property | Value |
| - | - |
|Type|decimal(14, 2)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0|
|Derived From|[Inv_Cost_Correction_Lines](Inv_Cost_Correction_Lines.md).[Cost_Correction_Amount](Inv_Cost_Correction_Lines.md#cost_correction_amount)|
|Format|N2|
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

### Product_Cost_Adjustment


Product_Cost_Adjustment


The amount of correction (plus or minus) for the Product Cost field of the transaction line.


The amount of correction (plus or minus) for the Product Cost field of the transaction line.

| Property | Value |
| - | - |
|Type|decimal(14, 2)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0|
|Derived From|[Inv_Cost_Correction_Lines](Inv_Cost_Correction_Lines.md).[Product_Cost_Adjustment](Inv_Cost_Correction_Lines.md#product_cost_adjustment)|
|Format|N2|
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|no|
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

### Store_Cost_Adjustment


Store_Cost_Adjustment


The amount of correction (plus or minus) for the Store Cost field of the transaction line.


The amount of correction (plus or minus) for the Store Cost field of the transaction line.

| Property | Value |
| - | - |
|Type|decimal(14, 2)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0|
|Derived From|[Inv_Cost_Correction_Lines](Inv_Cost_Correction_Lines.md).[Store_Cost_Adjustment](Inv_Cost_Correction_Lines.md#store_cost_adjustment)|
|Format|N2|
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|no|
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

### Base_Cost_Adjustment


Base_Cost_Adjustment


The amount of correction (plus or minus) for the Base Cost field of the transaction line.


The amount of correction (plus or minus) for the Base Cost field of the transaction line.

| Property | Value |
| - | - |
|Type|decimal(14, 2)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0|
|Derived From|[Inv_Cost_Correction_Lines](Inv_Cost_Correction_Lines.md).[Base_Cost_Adjustment](Inv_Cost_Correction_Lines.md#base_cost_adjustment)|
|Format|N2|
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|no|
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
|Derived From|[Inv_Cost_Correction_Lines](Inv_Cost_Correction_Lines.md).[Row_Version](Inv_Cost_Correction_Lines.md#row_version)|
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

