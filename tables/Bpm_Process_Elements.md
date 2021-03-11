# Table Bpm_Process_Elements

Contains the flow elements of the process model. Entity: Bpm_Process_Elements

## Owner Tables Hierarchy

* [Bpm_Processes](Bpm_Processes.md)

## Summary

| Name | Type | Description |
| - | - | --- |
|[Process_Element_Id](#process_element_id)|`uniqueidentifier` `PK`||
|[Process_Id](#process_id)|`uniqueidentifier` |The process, to which this element belongs.|
|[Process_Lane_Id](#process_lane_id)|`uniqueidentifier` |The process lane to which this element belongs.|
|[Process_Element_Code](#process_element_code)|`nvarchar(16)` |Element code, unique within the process. Used as ID for XML serialization purposes.|
|[Process_Element_Name](#process_element_name)|`nvarchar(512)` `ML`|Multilanguage process name.|
|[Element_Type](#element_type)|`nvarchar(1)` Allowed: `A`, `E`, `G`, `C`|Basic type of the element. A=Activity; E=Event; G=Gateway; C=Artifact.|
|[Element_Subtype](#element_subtype)|`nvarchar(3)` Allowed: `ATU`, `ATM`, `ATV`, `ATC`, `ATB`, `ATS`, `ATR`, `ES1`, `ES2`, `ES4`, `EE1`, `EE2`, `EE5`, `EE9`, `EI1`, `EI2`, `EI3`, `EI4`, `GEX`, `GIN`, `CAT`, `CGP`|Subtype of the element. Each type allows only certain types of sub-types.|
|[Instructions_Html](#instructions_html)|`nvarchar(2147483647)` |Detailed instructions to the executor in HTML format.|
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Process_Element_Id


Process_Element_Id

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
|Derived From|[Bpm_Process_Elements](Bpm_Process_Elements.md).[Process_Element_Id](Bpm_Process_Elements.md#process_element_id)|
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

### Process_Id


Process_Id


The process, to which this element belongs.


The process, to which this element belongs.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|yes|
|Referenced Table|[Bpm_Processes](Bpm_Processes.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Bpm_Process_Elements](Bpm_Process_Elements.md).[Process_Id](Bpm_Process_Elements.md#process_id)|
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

### Process_Lane_Id


Process_Lane_Id


The process lane to which this element belongs.


The process lane to which this element belongs.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Bpm_Process_Lanes](Bpm_Process_Lanes.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Bpm_Process_Elements](Bpm_Process_Elements.md).[Process_Lane_Id](Bpm_Process_Elements.md#process_lane_id)|
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

### Process_Element_Code


Process_Element_Code


Element code, unique within the process. Used as ID for XML serialization purposes.


Element code, unique within the process. Used as ID for XML serialization purposes.

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
|Default Value|None|
|Derived From|[Bpm_Process_Elements](Bpm_Process_Elements.md).[Process_Element_Code](Bpm_Process_Elements.md#process_element_code)|
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

### Process_Element_Name


Process_Element_Name


Multilanguage process name.


Multilanguage process name.

| Property | Value |
| - | - |
|Type|nvarchar(512)|
|Is Mulitlanguage|yes|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Bpm_Process_Elements](Bpm_Process_Elements.md).[Process_Element_Name](Bpm_Process_Elements.md#process_element_name)|
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
|Max Length|512|
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

### Element_Type


Element_Type


Basic type of the element. A=Activity; E=Event; G=Gateway; C=Artifact.


Basic type of the element. A=Activity; E=Event; G=Gateway; C=Artifact.

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
|Allowed Values|`A`, `E`, `G`, `C`|
|Default Value|None|
|Derived From|[Bpm_Process_Elements](Bpm_Process_Elements.md).[Element_Type](Bpm_Process_Elements.md#element_type)|
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
|Like|None|no|no|

### Element_Subtype


Element_Subtype


Subtype of the element. Each type allows only certain types of sub-types.


Subtype of the element. Each type allows only certain types of sub-types.

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
|Allowed Values|`ATU`, `ATM`, `ATV`, `ATC`, `ATB`, `ATS`, `ATR`, `ES1`, `ES2`, `ES4`, `EE1`, `EE2`, `EE5`, `EE9`, `EI1`, `EI2`, `EI3`, `EI4`, `GEX`, `GIN`, `CAT`, `CGP`|
|Default Value|None|
|Derived From|[Bpm_Process_Elements](Bpm_Process_Elements.md).[Element_Subtype](Bpm_Process_Elements.md#element_subtype)|
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
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|
|Like|None|no|no|

### Instructions_Html


Instructions_Html


Detailed instructions to the executor in HTML format.


Detailed instructions to the executor in HTML format.

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
|Derived From|[Bpm_Process_Elements](Bpm_Process_Elements.md).[Instructions_Html](Bpm_Process_Elements.md#instructions_html)|
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
|Max Length|2147483647|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|
|Like|None|no|no|

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
|Derived From|[Bpm_Process_Elements](Bpm_Process_Elements.md).[Row_Version](Bpm_Process_Elements.md#row_version)|
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

