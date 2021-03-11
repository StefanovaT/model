# Table Dw_Data_Measures

Contains the data measures of the General data warehouse. Entity: Dw_Data_Measures (Introduced in version 18.2)

## Summary

| Name | Type | Description |
| - | - | --- |
|[Data_Measure_Id](#data_measure_id)|`uniqueidentifier` `PK`||
|[Data_Measure_Code](#data_measure_code)|`nvarchar(16)` |Unique measure code.|
|[Data_Measure_Group_Id](#data_measure_group_id)|`uniqueidentifier` |The group to which this measure belongs.|
|[Data_Measure_Name](#data_measure_name)|`nvarchar(254)` |The name of the measure (multilanguage).|
|[Period](#period)|`nvarchar(1)` Allowed: `D`, `M`, `Q`, `Y`|The period for which the data is collected. D=Day, M=Month, Q=Quarter, Y=Year.|
|[Green_Zone_Spread_Percent](#green_zone_spread_percent)|`decimal(3, 2)` |The plus or minus percent, by which the goal can be missed, but still considered achieved.|
|[Horizontal_Trend_Spread_Percent](#horizontal_trend_spread_percent)|`decimal(3, 2)` |The change in percents, which is considered neutral. Higher positive/negative changes are considered positive/negative trends.|
|[Notes](#notes)|`nvarchar(2147483647)` ||

## Columns

### Data_Measure_Id


Data_Measure_Id

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
|Derived From|[Dw_Data_Measures](Dw_Data_Measures.md).[Data_Measure_Id](Dw_Data_Measures.md#data_measure_id)|
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

### Data_Measure_Code


Data_Measure_Code


Unique measure code.


Unique measure code.

| Property | Value |
| - | - |
|Type|nvarchar(16)|
|Is Mulitlanguage|no|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|yes|
|Attributes|None|
|Default Value|None|
|Derived From|[Dw_Data_Measures](Dw_Data_Measures.md).[Data_Measure_Code](Dw_Data_Measures.md#data_measure_code)|
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
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|
|Like|None|no|no|

### Data_Measure_Group_Id


Data_Measure_Group_Id


The group to which this measure belongs.


The group to which this measure belongs.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Dw_Data_Measure_Groups](Dw_Data_Measure_Groups.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Dw_Data_Measures](Dw_Data_Measures.md).[Data_Measure_Group_Id](Dw_Data_Measures.md#data_measure_group_id)|
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

### Data_Measure_Name


Data_Measure_Name


The name of the measure (multilanguage).


The name of the measure (multilanguage).

| Property | Value |
| - | - |
|Type|nvarchar(254)|
|Is Mulitlanguage|no|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Dw_Data_Measures](Dw_Data_Measures.md).[Data_Measure_Name](Dw_Data_Measures.md#data_measure_name)|
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
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|
|Like|None|no|no|

### Period


Period


The period for which the data is collected. D=Day, M=Month, Q=Quarter, Y=Year.


The period for which the data is collected. D=Day, M=Month, Q=Quarter, Y=Year.

| Property | Value |
| - | - |
|Type|nvarchar(1)|
|Is Mulitlanguage|no|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Allowed Values|`D`, `M`, `Q`, `Y`|
|Default Value|Q|
|Derived From|[Dw_Data_Measures](Dw_Data_Measures.md).[Period](Dw_Data_Measures.md#period)|
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
|Max Length|1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Green_Zone_Spread_Percent


Green_Zone_Spread_Percent


The plus or minus percent, by which the goal can be missed, but still considered achieved.


The plus or minus percent, by which the goal can be missed, but still considered achieved.

| Property | Value |
| - | - |
|Type|decimal(3, 2)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0.2|
|Derived From|[Dw_Data_Measures](Dw_Data_Measures.md).[Green_Zone_Spread_Percent](Dw_Data_Measures.md#green_zone_spread_percent)|
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
|Equals|NULL|no|no|

### Horizontal_Trend_Spread_Percent


Horizontal_Trend_Spread_Percent


The change in percents, which is considered neutral. Higher positive/negative changes are considered positive/negative trends.


The change in percents, which is considered neutral. Higher positive/negative changes are considered positive/negative trends.

| Property | Value |
| - | - |
|Type|decimal(3, 2)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0.01|
|Derived From|[Dw_Data_Measures](Dw_Data_Measures.md).[Horizontal_Trend_Spread_Percent](Dw_Data_Measures.md#horizontal_trend_spread_percent)|
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
|Equals|NULL|no|no|

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
|Derived From|[Dw_Data_Measures](Dw_Data_Measures.md).[Notes](Dw_Data_Measures.md#notes)|
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

