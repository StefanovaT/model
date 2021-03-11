# Query Crm_Default_Sales_Order_Payment_Plans_Table_Load_Navigator


## Summary

| Name | Type | Description |
| - | - | --- |
|[Default_Sales_Order_Payment_Plan_Id](#default_sales_order_payment_plan_id)|`uniqueidentifier` `PK`||
|[Document_Type_Id](#document_type_id)|`uniqueidentifier` ||
|[Installment_Number](#installment_number)|`int` ||
|[Due_Date_Form_Method](#due_date_form_method)|`nvarchar` Allowed: `EXP`, `INV`, `SLS`, `SDD`, `IDD`||
|[Payment_Term_Days](#payment_term_days)|`int` ||
|[Amount_Percent](#amount_percent)|`decimal(0, 0)` ||
|[Remainder](#remainder)|`bit` ||
|[Enterprise_Company_Id](#enterprise_company_id)|`uniqueidentifier` |Enterprise company for which the current default installment template is valid. If enterprise company is not set then the installment template is valid for all enterprise companies.|
|[Enterprise_Company_Location_Id](#enterprise_company_location_id)|`uniqueidentifier` |Enterprise company location (within the chosen enterprise company) for which the current default installment template is valid. If enterprise company location is not set then the installment template is valid for all enterprise company locations.|
|[Payment_Account_Id](#payment_account_id)|`uniqueidentifier` |Default payment account for the current installment. NULL means that there is no default account.|
|[Payment_Type_Id](#payment_type_id)|`uniqueidentifier` |Default payment type for the current installment. NULL means that there is no default payment type.|
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Default_Sales_Order_Payment_Plan_Id


Default_Sales_Order_Payment_Plan_Id

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
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Default_Sales_Order_Payment_Plan_Id](Crm_Default_Sales_Order_Payment_Plans.md#default_sales_order_payment_plan_id)|
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
|Order|0|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Document_Type_Id


Document_Type_Id

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
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Document_Type_Id](Crm_Default_Sales_Order_Payment_Plans.md#document_type_id)|
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

### Installment_Number


Installment_Number

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
|Autoincrement|1|
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Installment_Number](Crm_Default_Sales_Order_Payment_Plans.md#installment_number)|
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
|UI Width|Short|
|Supports EQUALS_IN|no|

### Due_Date_Form_Method


Due_Date_Form_Method

| Property | Value |
| - | - |
|Type|nvarchar|
|Is Mulitlanguage|no|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Allowed Values|`EXP`, `INV`, `SLS`, `SDD`, `IDD`|
|Default Value|None|
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Due_Date_Form_Method](Crm_Default_Sales_Order_Payment_Plans.md#due_date_form_method)|
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
|Order|3|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Long|
|Supports EQUALS_IN|no|

### Payment_Term_Days


Payment_Term_Days

| Property | Value |
| - | - |
|Type|int|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0|
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Payment_Term_Days](Crm_Default_Sales_Order_Payment_Plans.md#payment_term_days)|
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
|Order|4|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Short|
|Supports EQUALS_IN|no|

### Amount_Percent


Amount_Percent

| Property | Value |
| - | - |
|Type|decimal(0, 0)|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None, IsPercent|
|Default Value|None|
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Amount_Percent](Crm_Default_Sales_Order_Payment_Plans.md#amount_percent)|
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
|Order|5|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Short|
|Supports EQUALS_IN|no|

### Remainder


Remainder

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
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Remainder](Crm_Default_Sales_Order_Payment_Plans.md#remainder)|
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
|Order|6|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Short|
|Supports EQUALS_IN|no|

### Enterprise_Company_Id


Enterprise_Company_Id


Enterprise company for which the current default installment template is valid. If enterprise company is not set then the installment template is valid for all enterprise companies.


Enterprise company for which the current default installment template is valid. If enterprise company is not set then the installment template is valid for all enterprise companies.

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
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Enterprise_Company_Id](Crm_Default_Sales_Order_Payment_Plans.md#enterprise_company_id)|
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
|Order|7|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Enterprise_Company_Location_Id


Enterprise_Company_Location_Id


Enterprise company location (within the chosen enterprise company) for which the current default installment template is valid. If enterprise company location is not set then the installment template is valid for all enterprise company locations.


Enterprise company location (within the chosen enterprise company) for which the current default installment template is valid. If enterprise company location is not set then the installment template is valid for all enterprise company locations.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Cm_Company_Locations](Cm_Company_Locations.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Enterprise_Company_Location_Id](Crm_Default_Sales_Order_Payment_Plans.md#enterprise_company_location_id)|
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
|Order|8|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Payment_Account_Id


Payment_Account_Id


Default payment account for the current installment. NULL means that there is no default account.


Default payment account for the current installment. NULL means that there is no default account.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Cash_Payment_Accounts](Cash_Payment_Accounts.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Payment_Account_Id](Crm_Default_Sales_Order_Payment_Plans.md#payment_account_id)|
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
|Order|9|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|

### Payment_Type_Id


Payment_Type_Id


Default payment type for the current installment. NULL means that there is no default payment type.


Default payment type for the current installment. NULL means that there is no default payment type.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Cash_Payment_Types](Cash_Payment_Types.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Payment_Type_Id](Crm_Default_Sales_Order_Payment_Plans.md#payment_type_id)|
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
|Order|10|
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
|Derived From|[Crm_Default_Sales_Order_Payment_Plans](Crm_Default_Sales_Order_Payment_Plans.md).[Row_Version](Crm_Default_Sales_Order_Payment_Plans.md#row_version)|
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
|Order|11|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

