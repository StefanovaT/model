# Table Sys_Default_Values

Contains user-specified default values for columns in data entry forms. Entity: Sys_Default_Values

## Summary

| Name | Type | Description |
| - | - | --- |
|[Default_Value_Id](#default_value_id)|`uniqueidentifier` `PK`|Unique id of this default|
|[Condition_User_Login](#condition_user_login)|`nvarchar(64)` |If not NULL specifies that the default should be applied only if User_Login equals this value|
|[Condition_User_Machine](#condition_user_machine)|`nvarchar(64)` |If not NULL specifies that the default should be applied only if User_Machine equals this value|
|[Condition_Enterprise_Company_Id](#condition_enterprise_company_id)|`uniqueidentifier` |If not NULL specifies that the default should be applied only if Enterprise_Company_Id equals this value|
|[Condition_Document_Type_Id](#condition_document_type_id)|`uniqueidentifier` |If not NULL specifies that the default should be applied only if Document_Type_Id equals this value|
|[Condition_Form_Name](#condition_form_name)|`nvarchar(64)` |If not NULL specifies that the default should be applied only if Form_Name equals the specified value|
|[Panel_Name](#panel_name)|`nvarchar(64)` |When not null, specifies the panel for which the default value applies.|
|[Table_Name](#table_name)|`nvarchar(64)` |The table, containing the column for which the default value is specified.|
|[Column_Name](#column_name)|`nvarchar(64)` |The column for which the default is specified|
|[Default_Value](#default_value)|`nvarchar(254)` |The default value for Column_Name. Should be applied only if the other conditions are met. NULL specifies NULL default|
|[Condition_Role_Id](#condition_role_id)|`uniqueidentifier` |When not null, specifies that the default value should be applied only when the user plays the specified role.|
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Default_Value_Id


Default_Value_Id


Unique id of this default


Unique id of this default

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
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Default_Value_Id](Sys_Default_Values.md#default_value_id)|
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

### Condition_User_Login


Condition_User_Login


If not NULL specifies that the default should be applied only if User_Login equals this value


If not NULL specifies that the default should be applied only if User_Login equals this value

| Property | Value |
| - | - |
|Type|nvarchar(64)|
|Is Mulitlanguage|no|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Condition_User_Login](Sys_Default_Values.md#condition_user_login)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|yes|
|Visible|yes|
|Max Length|64|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Condition_User_Machine


Condition_User_Machine


If not NULL specifies that the default should be applied only if User_Machine equals this value


If not NULL specifies that the default should be applied only if User_Machine equals this value

| Property | Value |
| - | - |
|Type|nvarchar(64)|
|Is Mulitlanguage|no|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Condition_User_Machine](Sys_Default_Values.md#condition_user_machine)|
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
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Condition_Enterprise_Company_Id


Condition_Enterprise_Company_Id


If not NULL specifies that the default should be applied only if Enterprise_Company_Id equals this value


If not NULL specifies that the default should be applied only if Enterprise_Company_Id equals this value

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Enterprise_Companies](Gen_Enterprise_Companies.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Condition_Enterprise_Company_Id](Sys_Default_Values.md#condition_enterprise_company_id)|
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
|UI Width|Long|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Condition_Document_Type_Id


Condition_Document_Type_Id


If not NULL specifies that the default should be applied only if Document_Type_Id equals this value


If not NULL specifies that the default should be applied only if Document_Type_Id equals this value

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Document_Types](Gen_Document_Types.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Condition_Document_Type_Id](Sys_Default_Values.md#condition_document_type_id)|
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
|UI Width|Long|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Condition_Form_Name


Condition_Form_Name


If not NULL specifies that the default should be applied only if Form_Name equals the specified value


If not NULL specifies that the default should be applied only if Form_Name equals the specified value

| Property | Value |
| - | - |
|Type|nvarchar(64)|
|Is Mulitlanguage|no|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|yes|
|Attributes|None|
|Default Value|None|
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Condition_Form_Name](Sys_Default_Values.md#condition_form_name)|
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
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Panel_Name


Panel_Name


When not null, specifies the panel for which the default value applies.


When not null, specifies the panel for which the default value applies.

| Property | Value |
| - | - |
|Type|nvarchar(64)|
|Is Mulitlanguage|no|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Panel_Name](Sys_Default_Values.md#panel_name)|
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
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Long|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|
|Like|None|no|no|

### Table_Name


Table_Name


The table, containing the column for which the default value is specified.


The table, containing the column for which the default value is specified.

| Property | Value |
| - | - |
|Type|nvarchar(64)|
|Is Mulitlanguage|no|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Table_Name](Sys_Default_Values.md#table_name)|
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
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Long|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Column_Name


Column_Name


The column for which the default is specified


The column for which the default is specified

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
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Column_Name](Sys_Default_Values.md#column_name)|
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
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Long|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Default_Value


Default_Value


The default value for Column_Name. Should be applied only if the other conditions are met. NULL specifies NULL default


The default value for Column_Name. Should be applied only if the other conditions are met. NULL specifies NULL default

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
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Default_Value](Sys_Default_Values.md#default_value)|
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
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Long|
|Supports EQUALS_IN|no|

### Condition_Role_Id


Condition_Role_Id


When not null, specifies that the default value should be applied only when the user plays the specified role.


When not null, specifies that the default value should be applied only when the user plays the specified role.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Wf_Roles](Wf_Roles.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Condition_Role_Id](Sys_Default_Values.md#condition_role_id)|
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
|Derived From|[Sys_Default_Values](Sys_Default_Values.md).[Row_Version](Sys_Default_Values.md#row_version)|
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

