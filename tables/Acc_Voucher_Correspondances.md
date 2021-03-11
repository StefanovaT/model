# Table Acc_Voucher_Correspondances

Obsolete. Not used. Entity: Acc_Voucher_Correspondances

## Owner Tables Hierarchy

* [Acc_Vouchers](Acc_Vouchers.md)
* [Gen_Documents](Gen_Documents.md)

## Summary

| Name | Type | Description |
| - | - | --- |
|[Correspondance_Id](#correspondance_id)|`uniqueidentifier` `PK`||
|[Voucher_Id](#voucher_id)|`uniqueidentifier` ||
|[Debit_Voucher_Line_Id](#debit_voucher_line_id)|`uniqueidentifier` |Obsolete. Not used. (The voucher line which contains the debited account)|
|[Credit_Voucher_Line_Id](#credit_voucher_line_id)|`uniqueidentifier` |Obsolete. Not used. (The voucher line which contains the credited account)|
|[Debit_Amount](#debit_amount)|`decimal(18, 2)` |Obsolete. Not used.|
|[Credit_Amount](#credit_amount)|`decimal(18, 2)` |Obsolete. Not used.|
|[Amount_Base](#amount_base)|`decimal(18, 2)` |Obsolete. Not used.|
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Correspondance_Id


Correspondance_Id

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
|Derived From|[Acc_Voucher_Correspondances](Acc_Voucher_Correspondances.md).[Correspondance_Id](Acc_Voucher_Correspondances.md#correspondance_id)|
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

### Voucher_Id


Voucher_Id

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|yes|
|Referenced Table|[Acc_Vouchers](Acc_Vouchers.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Acc_Voucher_Correspondances](Acc_Voucher_Correspondances.md).[Voucher_Id](Acc_Voucher_Correspondances.md#voucher_id)|
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

### Debit_Voucher_Line_Id


Debit_Voucher_Line_Id


Obsolete. Not used. (The voucher line which contains the debited account)


Obsolete. Not used. (The voucher line which contains the debited account)

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Acc_Voucher_Correspondances](Acc_Voucher_Correspondances.md).[Debit_Voucher_Line_Id](Acc_Voucher_Correspondances.md#debit_voucher_line_id)|
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

### Credit_Voucher_Line_Id


Credit_Voucher_Line_Id


Obsolete. Not used. (The voucher line which contains the credited account)


Obsolete. Not used. (The voucher line which contains the credited account)

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Acc_Voucher_Correspondances](Acc_Voucher_Correspondances.md).[Credit_Voucher_Line_Id](Acc_Voucher_Correspondances.md#credit_voucher_line_id)|
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

### Debit_Amount


Debit_Amount


Obsolete. Not used.


Obsolete. Not used.

| Property | Value |
| - | - |
|Type|decimal(18, 2)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0|
|Derived From|[Acc_Voucher_Correspondances](Acc_Voucher_Correspondances.md).[Debit_Amount](Acc_Voucher_Correspondances.md#debit_amount)|
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

### Credit_Amount


Credit_Amount


Obsolete. Not used.


Obsolete. Not used.

| Property | Value |
| - | - |
|Type|decimal(18, 2)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0|
|Derived From|[Acc_Voucher_Correspondances](Acc_Voucher_Correspondances.md).[Credit_Amount](Acc_Voucher_Correspondances.md#credit_amount)|
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

### Amount_Base


Amount_Base


Obsolete. Not used.


Obsolete. Not used.

| Property | Value |
| - | - |
|Type|decimal(18, 2)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0|
|Derived From|[Acc_Voucher_Correspondances](Acc_Voucher_Correspondances.md).[Amount_Base](Acc_Voucher_Correspondances.md#amount_base)|
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
|Derived From|[Acc_Voucher_Correspondances](Acc_Voucher_Correspondances.md).[Row_Version](Acc_Voucher_Correspondances.md#row_version)|
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

