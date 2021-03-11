# Table Inv_Cost_Corrections_Options

Options per document type for the cost corrections. Entity: Inv_Cost_Corrections_Options

## Summary

| Name | Type | Description |
| - | - | --- |
|[Cost_Corrections_Option_Id](#cost_corrections_option_id)|`uniqueidentifier` `PK`||
|[Document_Type_Id](#document_type_id)|`uniqueidentifier` |The document type for which we specify the options.|
|[Reset_Transactions_State_On_Releasing](#reset_transactions_state_on_releasing)|`bit` |When true, the stock transactions state are re-set when the cost correction is released. The idea is to notify these documents, so that they have chance to re-generate their sub-documents.|
|[Schedule_Document_Events](#schedule_document_events)|`bit` |Indicates wheather the document events caused by the cost correction should be scheduled for later procession.|
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Cost_Corrections_Option_Id


Cost_Corrections_Option_Id

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
|Derived From|[Inv_Cost_Corrections_Options](Inv_Cost_Corrections_Options.md).[Cost_Corrections_Option_Id](Inv_Cost_Corrections_Options.md#cost_corrections_option_id)|
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

### Document_Type_Id


Document_Type_Id


The document type for which we specify the options.


The document type for which we specify the options.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Document_Types](Gen_Document_Types.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Cost_Corrections_Options](Inv_Cost_Corrections_Options.md).[Document_Type_Id](Inv_Cost_Corrections_Options.md#document_type_id)|
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

### Reset_Transactions_State_On_Releasing


Reset_Transactions_State_On_Releasing


When true, the stock transactions state are re-set when the cost correction is released. The idea is to notify these documents, so that they have chance to re-generate their sub-documents.


When true, the stock transactions state are re-set when the cost correction is released. The idea is to notify these documents, so that they have chance to re-generate their sub-documents.

| Property | Value |
| - | - |
|Type|bit|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|False|
|Derived From|[Inv_Cost_Corrections_Options](Inv_Cost_Corrections_Options.md).[Reset_Transactions_State_On_Releasing](Inv_Cost_Corrections_Options.md#reset_transactions_state_on_releasing)|
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

### Schedule_Document_Events


Schedule_Document_Events


Indicates wheather the document events caused by the cost correction should be scheduled for later procession.


Indicates wheather the document events caused by the cost correction should be scheduled for later procession.

| Property | Value |
| - | - |
|Type|bit|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|False|
|Derived From|[Inv_Cost_Corrections_Options](Inv_Cost_Corrections_Options.md).[Schedule_Document_Events](Inv_Cost_Corrections_Options.md#schedule_document_events)|
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
|Derived From|[Inv_Cost_Corrections_Options](Inv_Cost_Corrections_Options.md).[Row_Version](Inv_Cost_Corrections_Options.md#row_version)|
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

