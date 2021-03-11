# Table Acc_Financial_Statement_Node_Correspondances

Contains the actual correspondance filters, which specify how each financial statement node is calculated. Entity: Acc_Financial_Statement_Node_Correspondances

## Owner Tables Hierarchy

* [Acc_Financial_Statement_Nodes](Acc_Financial_Statement_Nodes.md)
* [Acc_Financial_Statements](Acc_Financial_Statements.md)

## Summary

| Name | Type | Description |
| - | - | --- |
|[Financial_Statement_Node_Correspondance_Id](#financial_statement_node_correspondance_id)|`uniqueidentifier` `PK`||
|[Financial_Statement_Node_Id](#financial_statement_node_id)|`uniqueidentifier` ||
|[Account_Group_Id](#account_group_id)|`uniqueidentifier` |Main account group determining the correspondances for which the balances are summed|
|[Correspondant_Account_Group_Id](#correspondant_account_group_id)|`uniqueidentifier` |Correspondant account group determining the correspondances for which the balances are summed. If NULL means that the balances of all correspondances for the main account group are summed.|
|[Multiplier](#multiplier)|`decimal(18, 0)` |Factor by which the correspondence balance will be multiplied.|
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Financial_Statement_Node_Correspondance_Id


Financial_Statement_Node_Correspondance_Id

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
|Derived From|[Acc_Financial_Statement_Node_Correspondances](Acc_Financial_Statement_Node_Correspondances.md).[Financial_Statement_Node_Correspondance_Id](Acc_Financial_Statement_Node_Correspondances.md#financial_statement_node_correspondance_id)|
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
|Equals|NULL|no|yes|

### Financial_Statement_Node_Id


Financial_Statement_Node_Id

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|yes|
|Referenced Table|[Acc_Financial_Statement_Nodes](Acc_Financial_Statement_Nodes.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Acc_Financial_Statement_Node_Correspondances](Acc_Financial_Statement_Node_Correspondances.md).[Financial_Statement_Node_Id](Acc_Financial_Statement_Node_Correspondances.md#financial_statement_node_id)|
|Format||
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
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|yes|

### Account_Group_Id


Account_Group_Id


Main account group determining the correspondances for which the balances are summed


Main account group determining the correspondances for which the balances are summed

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Acc_Account_Groups](Acc_Account_Groups.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Acc_Financial_Statement_Node_Correspondances](Acc_Financial_Statement_Node_Correspondances.md).[Account_Group_Id](Acc_Financial_Statement_Node_Correspondances.md#account_group_id)|
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

### Correspondant_Account_Group_Id


Correspondant_Account_Group_Id


Correspondant account group determining the correspondances for which the balances are summed. If NULL means that the balances of all correspondances for the main account group are summed.


Correspondant account group determining the correspondances for which the balances are summed. If NULL means that the balances of all correspondances for the main account group are summed.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Acc_Account_Groups](Acc_Account_Groups.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Acc_Financial_Statement_Node_Correspondances](Acc_Financial_Statement_Node_Correspondances.md).[Correspondant_Account_Group_Id](Acc_Financial_Statement_Node_Correspondances.md#correspondant_account_group_id)|
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

### Multiplier


Multiplier


Factor by which the correspondence balance will be multiplied.


Factor by which the correspondence balance will be multiplied.

| Property | Value |
| - | - |
|Type|decimal(18, 0)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|1|
|Derived From|[Acc_Financial_Statement_Node_Correspondances](Acc_Financial_Statement_Node_Correspondances.md).[Multiplier](Acc_Financial_Statement_Node_Correspondances.md#multiplier)|
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
|Derived From|[Acc_Financial_Statement_Node_Correspondances](Acc_Financial_Statement_Node_Correspondances.md).[Row_Version](Acc_Financial_Statement_Node_Correspondances.md#row_version)|
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

