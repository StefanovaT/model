# Table Sys_User_Business_Rule_Conditions

Represents one condition for the execution of a business rule. Entity: Sys_User_Business_Rule_Conditions

## Owner Tables Hierarchy

* [Sys_User_Business_Rules](Sys_User_Business_Rules.md)

## Summary

| Name | Type | Description |
| - | - | --- |
|[User_Business_Rule_Id](#user_business_rule_id)|`uniqueidentifier` |The business rule, for which the condition is defined.|
|[Condition_No](#condition_no)|`int` |Unique consecutive number of the condition within the business rule.|
|[Attribute_Name](#attribute_name)|`nvarchar(64)` |The attribute, which will be tested.|
|[Comparison_Type](#comparison_type)|`nvarchar(16)` Allowed: `Equals`, `Greater_Than`, `Less_Than`, `Like`, `IsNull`, `Not_Equals`|How to compare the attribute and the value of the condition - e.g. Attribute-Comparison-Value.|
|[Value](#value)|`nvarchar(254)` |The value against which the data attribute will be tested.|
|[User_Business_Rule_Condition_Id](#user_business_rule_condition_id)|`uniqueidentifier` `PK`||
|[Row_Version](#row_version)|`timestamp` ||
|[Notes](#notes)|`nvarchar(2147483647)` ||

## Columns

### User_Business_Rule_Id


User_Business_Rule_Id


The business rule, for which the condition is defined.


The business rule, for which the condition is defined.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|yes|
|Referenced Table|[Sys_User_Business_Rules](Sys_User_Business_Rules.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sys_User_Business_Rule_Conditions](Sys_User_Business_Rule_Conditions.md).[User_Business_Rule_Id](Sys_User_Business_Rule_Conditions.md#user_business_rule_id)|
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
|Order|1|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Condition_No


Condition_No


Unique consecutive number of the condition within the business rule.


Unique consecutive number of the condition within the business rule.

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
|Autoincrement|10|
|Derived From|[Sys_User_Business_Rule_Conditions](Sys_User_Business_Rule_Conditions.md).[Condition_No](Sys_User_Business_Rule_Conditions.md#condition_no)|
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
|Order|2|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Short|
|Supports EQUALS_IN|no|

### Attribute_Name


Attribute_Name


The attribute, which will be tested.


The attribute, which will be tested.

| Property | Value |
| - | - |
|Type|nvarchar(64)|
|Is Mulitlanguage|no|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sys_User_Business_Rule_Conditions](Sys_User_Business_Rule_Conditions.md).[Attribute_Name](Sys_User_Business_Rule_Conditions.md#attribute_name)|
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
|Max Length|64|
|Order|3|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

### Comparison_Type


Comparison_Type


How to compare the attribute and the value of the condition - e.g. Attribute-Comparison-Value.


How to compare the attribute and the value of the condition - e.g. Attribute-Comparison-Value.

| Property | Value |
| - | - |
|Type|nvarchar(16)|
|Is Mulitlanguage|no|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Allowed Values|`Equals`, `Greater_Than`, `Less_Than`, `Like`, `IsNull`, `Not_Equals`|
|Default Value|Equals|
|Derived From|[Sys_User_Business_Rule_Conditions](Sys_User_Business_Rule_Conditions.md).[Comparison_Type](Sys_User_Business_Rule_Conditions.md#comparison_type)|
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
|Max Length|16|
|Order|4|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Short|
|Supports EQUALS_IN|no|

### Value


Value


The value against which the data attribute will be tested.


The value against which the data attribute will be tested.

| Property | Value |
| - | - |
|Type|nvarchar(254)|
|Is Mulitlanguage|no|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sys_User_Business_Rule_Conditions](Sys_User_Business_Rule_Conditions.md).[Value](Sys_User_Business_Rule_Conditions.md#value)|
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
|Max Length|254|
|Order|5|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

### User_Business_Rule_Condition_Id


User_Business_Rule_Condition_Id

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
|Derived From|[Sys_User_Business_Rule_Conditions](Sys_User_Business_Rule_Conditions.md).[User_Business_Rule_Condition_Id](Sys_User_Business_Rule_Conditions.md#user_business_rule_condition_id)|
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
|Derived From|[Sys_User_Business_Rule_Conditions](Sys_User_Business_Rule_Conditions.md).[Row_Version](Sys_User_Business_Rule_Conditions.md#row_version)|
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
|Derived From|[Sys_User_Business_Rule_Conditions](Sys_User_Business_Rule_Conditions.md).[Notes](Sys_User_Business_Rule_Conditions.md#notes)|
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

