# Table Inv_Store_Orders

Orders for store transactions. After an order is executed, store transaction is created. Entity: Inv_Store_Orders

## Owner Tables Hierarchy

* [Gen_Documents](Gen_Documents.md)

## Summary

| Name | Type | Description |
| - | - | --- |
|[Store_Order_Id](#store_order_id)|`uniqueidentifier` `PK`||
|[Document_Id](#document_id)|`uniqueidentifier` |The Id of the store order document entry|
|[Store_Id](#store_id)|`uniqueidentifier` |The designated warehouse for the operation|
|[Due_Date](#due_date)|`datetime` |The final date, when the store transaction should occur.|
|[Movement_Type](#movement_type)|`nvarchar(1)` Allowed: `I`, `R`|Store order movement type. R=RECEIPT, I=ISSUE|
|[Status](#status)|`nvarchar(1)` |P=Planned; F=Firm planned; R=Released; C=Completed|
|[Planned_Release_Date](#planned_release_date)|`datetime` |Date, when the respective store transaction document is scheduled to be released to the supplier or manufacturing. This is respected by all PAB (projected available balance) and ATP (available to promise) calculations as the date on which the store transaction is scheduled to occur.|
|[Planned_Completion_Date](#planned_completion_date)|`datetime` |Date, when the quantities are expected to be completely issued/received|
|[Driver_Name](#driver_name)|`nvarchar(64)` |The name of the driver, who will deliver the stocks.|
|[Temp_Transport_Company_Name](#temp_transport_company_name)|`nvarchar(64)` |Obsolete. Not used.|
|[Vehicle_Reg_Number](#vehicle_reg_number)|`nvarchar(32)` |Obsolete. Not used.|
|[Ordering_Person_Id](#ordering_person_id)|`uniqueidentifier` |The person, which ordered the operation.|
|[Issued_By_Party_Id](#issued_by_party_id)|`uniqueidentifier` |The party, which issued the goods.|
|[Received_By_Party_Id](#received_by_party_id)|`uniqueidentifier` |The party, which received the goods.|
|[Document_Currency_Id](#document_currency_id)|`uniqueidentifier` |The currency in which the document amounts are expessed.|
|[Is_Single_Execution](#is_single_execution)|`bit` Readonly|Specifies whether the document is a single execution of its order document.|
|[Is_Released](#is_released)|`bit` Readonly|True if the document is not void and its state is released or greater|
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Store_Order_Id


Store_Order_Id

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
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Store_Order_Id](Inv_Store_Orders.md#store_order_id)|
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

### Document_Id


Document_Id


The Id of the store order document entry


The Id of the store order document entry

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|yes|
|Referenced Table|[Gen_Documents](Gen_Documents.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Document_Id](Inv_Store_Orders.md#document_id)|
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

### Store_Id


Store_Id


The designated warehouse for the operation


The designated warehouse for the operation

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Inv_Stores](Inv_Stores.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Store_Id](Inv_Store_Orders.md#store_id)|
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
|Equals|NULL|no|no|

### Due_Date


Due_Date


The final date, when the store transaction should occur.


The final date, when the store transaction should occur.

| Property | Value |
| - | - |
|Type|datetime|
|DateTime Format|DateTime|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|yes|
|Attributes|None|
|Default Value|CurrentDate|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Due_Date](Inv_Store_Orders.md#due_date)|
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
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|GreaterThanOrLessThan|None|no|no|

### Movement_Type


Movement_Type


Store order movement type. R=RECEIPT, I=ISSUE


Store order movement type. R=RECEIPT, I=ISSUE

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
|Allowed Values|`I`, `R`|
|Default Value|R|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Movement_Type](Inv_Store_Orders.md#movement_type)|
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
|Max Length|1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Status


Status


P=Planned; F=Firm planned; R=Released; C=Completed


P=Planned; F=Firm planned; R=Released; C=Completed

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
|Default Value|P|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Status](Inv_Store_Orders.md#status)|
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
|Max Length|1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

### Planned_Release_Date


Planned_Release_Date


Date, when the respective store transaction document is scheduled to be released to the supplier or manufacturing. This is respected by all PAB (projected available balance) and ATP (available to promise) calculations as the date on which the store transaction is scheduled to occur.


Date, when the respective store transaction document is scheduled to be released to the supplier or manufacturing. This is respected by all PAB (projected available balance) and ATP (available to promise) calculations as the date on which the store transaction is scheduled to occur.

| Property | Value |
| - | - |
|Type|datetime|
|DateTime Format|DateTime|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Planned_Release_Date](Inv_Store_Orders.md#planned_release_date)|
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
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|GreaterThanOrLessThan|None|no|no|

### Planned_Completion_Date


Planned_Completion_Date


Date, when the quantities are expected to be completely issued/received


Date, when the quantities are expected to be completely issued/received

| Property | Value |
| - | - |
|Type|datetime|
|DateTime Format|DateTime|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Planned_Completion_Date](Inv_Store_Orders.md#planned_completion_date)|
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
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|GreaterThanOrLessThan|None|no|no|

### Driver_Name


Driver_Name


The name of the driver, who will deliver the stocks.


The name of the driver, who will deliver the stocks.

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
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Driver_Name](Inv_Store_Orders.md#driver_name)|
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
|Max Length|64|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Long|
|Supports EQUALS_IN|no|

### Temp_Transport_Company_Name


Temp_Transport_Company_Name


Obsolete. Not used.


Obsolete. Not used.

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
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Temp_Transport_Company_Name](Inv_Store_Orders.md#temp_transport_company_name)|
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
|Max Length|64|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

### Vehicle_Reg_Number


Vehicle_Reg_Number


Obsolete. Not used.


Obsolete. Not used.

| Property | Value |
| - | - |
|Type|nvarchar(32)|
|Is Mulitlanguage|no|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Vehicle_Reg_Number](Inv_Store_Orders.md#vehicle_reg_number)|
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
|Max Length|32|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

### Ordering_Person_Id


Ordering_Person_Id


The person, which ordered the operation.


The person, which ordered the operation.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Cm_Persons](Cm_Persons.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Ordering_Person_Id](Inv_Store_Orders.md#ordering_person_id)|
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
|Equals|NULL|yes|no|

### Issued_By_Party_Id


Issued_By_Party_Id


The party, which issued the goods.


The party, which issued the goods.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Parties](Gen_Parties.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Issued_By_Party_Id](Inv_Store_Orders.md#issued_by_party_id)|
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
|Equals|NULL|yes|no|

### Received_By_Party_Id


Received_By_Party_Id


The party, which received the goods.


The party, which received the goods.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Parties](Gen_Parties.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Received_By_Party_Id](Inv_Store_Orders.md#received_by_party_id)|
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
|Equals|NULL|yes|no|

### Document_Currency_Id


Document_Currency_Id


The currency in which the document amounts are expessed.


The currency in which the document amounts are expessed.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Currencies](Gen_Currencies.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Document_Currency_Id](Inv_Store_Orders.md#document_currency_id)|
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
|Equals|NULL|no|yes|

### Is_Single_Execution


Is_Single_Execution


Specifies whether the document is a single execution of its order document.


Specifies whether the document is a single execution of its order document.

| Property | Value |
| - | - |
|Type|bit|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|yes|
|Sortable|no|
|Attributes|None|
|Default Value|False|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Is_Single_Execution](Inv_Store_Orders.md#is_single_execution)|
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

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|yes|

### Is_Released


Is_Released


True if the document is not void and its state is released or greater


True if the document is not void and its state is released or greater

| Property | Value |
| - | - |
|Type|bit|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|yes|
|Sortable|no|
|Attributes|None|
|Default Value|False|
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Is_Released](Inv_Store_Orders.md#is_released)|
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

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|yes|

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
|Derived From|[Inv_Store_Orders](Inv_Store_Orders.md).[Row_Version](Inv_Store_Orders.md#row_version)|
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

