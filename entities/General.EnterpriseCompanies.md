---
uid: General.EnterpriseCompanies
---
# General.EnterpriseCompanies Entity

**Namespace:** [General](General.md)  

The companies in the enterprise that issue documents. Entity: Gen_Enterprise_Companies

## Default Visualization
Default Display Text Format:  
_{Company.PartyName:T}_  
Default Search Members:  
_Company.RegistrationNumber; Company.PartyName_  
Code Data Member:  
_Company.RegistrationNumber_  
Name Data Member:  
_Company.PartyName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _3 - Track object and attribute changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [General.EnterpriseCompanies](General.EnterpriseCompanies.md)  
  * [Applications.Fleet.Crews](Applications.Fleet.Crews.md)  
    * [Applications.Fleet.CrewMembers](Applications.Fleet.CrewMembers.md)  
  * [Applications.Fleet.VehicleSets](Applications.Fleet.VehicleSets.md)  
    * [Applications.Fleet.VehicleSetVehicles](Applications.Fleet.VehicleSetVehicles.md)  
  * [General.Geography.MapPoints](General.Geography.MapPoints.md)  
  * [Finance.Vat.BGVATDeclaringPersons](Finance.Vat.BGVATDeclaringPersons.md)  
  * [Projects.Classic.Resources](Projects.Classic.Resources.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [BIStartDate](General.EnterpriseCompanies.md#bistartdate) | datetime __nullable__ | Defines the period for which BI extracts data. BI includes documents with "Document Date" greater than or equal to "BI Start Date". `Filter(eq;ge;le)` `Introduced in version 18.2` 
| [DefaultCostingMethod](General.EnterpriseCompanies.md#defaultcostingmethod) | [DefaultCostingMethod](General.EnterpriseCompanies.md#defaultcostingmethod) | Default method for cost evaluation (if not specified in the product). Currently supported: EXP - Explicit lot specifying; AVG - Average cost. `Required` `Default("AVG")` 
| [DefaultCustomer<br />CreditLimitBase](General.EnterpriseCompanies.md#defaultcustomercreditlimitbase) | [Amount (18, 2)](../data-types.md#amount) __nullable__ | Customer credit limit, which is used by default when creating new customers. It is specified in the base currency of the enterprise company. `Currency: BaseCurrency` `Filter(eq;like)` 
| [DefaultLanguage](General.EnterpriseCompanies.md#defaultlanguage) | [DefaultLanguage](General.EnterpriseCompanies.md#defaultlanguage) __nullable__ | The default language for multi-language names in the definitions (like Customer_Name, Product_Name, ...). `Default("en")` 
| [DisplayText](General.EnterpriseCompanies.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [EditPeriodStartDate](General.EnterpriseCompanies.md#editperiodstartdate) | datetime __nullable__ | Start date of the priod when the documents can be edited. `Filter(ge;le)` 
| [Id](General.EnterpriseCompanies.md#id) | guid |  
| [IsActive](General.EnterpriseCompanies.md#isactive) | boolean | Indicates whether the current Enterprise company  is active. `Required` `Default(true)` `Filter(multi eq)` `Introduced in version 20.1` 
| [ObjectVersion](General.EnterpriseCompanies.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [PrintImagesRetentionMonths](General.EnterpriseCompanies.md#printimagesretentionmonths) | int32 | A period of months for which the printed images of the documents will be kept. `Required` `Default(60)` `Filter(multi eq;ge;le)` `Introduced in version 20.1` 
| [UIBaseColor](General.EnterpriseCompanies.md#uibasecolor) | int32 __nullable__ | When not null, specifies the background color to use for visualization of the UI when the current enterprise company is selected. The color is in RGBA color format. `Introduced in version 18.2` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [AccessKey](General.EnterpriseCompanies.md#accesskey) | [AccessKeys](Systems.Security.AccessKeys.md) (nullable) | The access key, containing the user permissions for this EnterpriseCompany. Null means that all users have unlimited permissions. `Filter(multi eq)` |
| [AdvanceProduct](General.EnterpriseCompanies.md#advanceproduct) | [Products](General.Products.Products.md) (nullable) | Product that is used for handling advances in trade documents. `Filter(multi eq)` |
| [BaseCurrency](General.EnterpriseCompanies.md#basecurrency) | [Currencies](General.Currencies.Currencies.md) | The base currency for summary reporting for this company. `Required` `Filter(multi eq)` |
| [Company](General.EnterpriseCompanies.md#company) | [Companies](General.Contacts.Companies.md) | Contains the base company data on which this enterprise company is based. `Required` `Filter(multi eq)` |
| [ExchangeDifference<br />CreditAccount](General.EnterpriseCompanies.md#exchangedifferencecreditaccount) | [Accounts](Finance.Accounting.Accounts.md) (nullable) | Account for balancing accounting vouchers with credit difference due to currency exchanges. `Filter(multi eq)` |
| [ExchangeDifference<br />DebitAccount](General.EnterpriseCompanies.md#exchangedifferencedebitaccount) | [Accounts](Finance.Accounting.Accounts.md) (nullable) | Account for balancing accounting vouchers with debit difference due to currency exchanges. `Filter(multi eq)` |
| [VATDocumentAmountType](General.EnterpriseCompanies.md#vatdocumentamounttype) | [DocumentAmountTypes](Systems.Documents.DocumentAmountTypes.md) (nullable) | The document amount that is used to determine the amount of the VAT entries when they are generated. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| BGVATDeclaringPersons | [BGVATDeclaringPersons](Finance.Vat.BGVATDeclaringPersons.md) | List of `BGVATDeclaringPerson`(Finance.Vat.BGVATDeclaringPersons.md) child objects, based on the `Finance.Vat.BGVATDeclaringPerson.EnterpriseCompany`(Finance.Vat.BGVATDeclaringPersons.md#enterprisecompany) back reference 
| Crews | [Crews](Applications.Fleet.Crews.md) | List of `Crew`(Applications.Fleet.Crews.md) child objects, based on the `Applications.Fleet.Crew.EnterpriseCompany`(Applications.Fleet.Crews.md#enterprisecompany) back reference 
| MapPoints | [MapPoints](General.Geography.MapPoints.md) | List of `MapPoint`(General.Geography.MapPoints.md) child objects, based on the `General.Geography.MapPoint.EnterpriseCompany`(General.Geography.MapPoints.md#enterprisecompany) back reference 
| Resources | [Resources](Projects.Classic.Resources.md) | List of `Resource`(Projects.Classic.Resources.md) child objects, based on the `Projects.Classic.Resource.EnterpriseCompany`(Projects.Classic.Resources.md#enterprisecompany) back reference 
| VehicleSets | [VehicleSets](Applications.Fleet.VehicleSets.md) | List of `VehicleSet`(Applications.Fleet.VehicleSets.md) child objects, based on the `Applications.Fleet.VehicleSet.EnterpriseCompany`(Applications.Fleet.VehicleSets.md#enterprisecompany) back reference 


## Attribute Details

### BIStartDate

Defines the period for which BI extracts data. BI includes documents with "Document Date" greater than or equal to "BI Start Date". `Filter(eq;ge;le)` `Introduced in version 18.2`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### DefaultCostingMethod

Default method for cost evaluation (if not specified in the product). Currently supported: EXP - Explicit lot specifying; AVG - Average cost. `Required` `Default("AVG")`

_Type_: **[DefaultCostingMethod](General.EnterpriseCompanies.md#defaultcostingmethod)**  
_Category_: **System**  
Allowed values for the `DefaultCostingMethod`(General.EnterpriseCompanies.md#defaultcostingmethod) data attribute  
_Allowed Values (General.EnterpriseCompaniesRepository.DefaultCostingMethod Enum Members)_  

| Value | Description |
| ---- | --- |
| AverageCost | AverageCost value. Stored as 'AVG'. <br /> _Database Value:_ 'AVG' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'AverageCost' |
| ExplicitlySpecifyLot | ExplicitlySpecifyLot value. Stored as 'EXP'. <br /> _Database Value:_ 'EXP' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'ExplicitlySpecifyLot' |
| SetByBlockedForDocument | SetByBlockedForDocument value. Stored as 'BLD'. <br /> _Database Value:_ 'BLD' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'SetByBlockedForDocument' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **AverageCost**  
_Show in UI_: **ShownByDefault**  

### DefaultCustomerCreditLimitBase

Customer credit limit, which is used by default when creating new customers. It is specified in the base currency of the enterprise company. `Currency: BaseCurrency` `Filter(eq;like)`

_Type_: **[Amount (18, 2)](../data-types.md#amount) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### DefaultLanguage

The default language for multi-language names in the definitions (like Customer_Name, Product_Name, ...). `Default("en")`

_Type_: **[DefaultLanguage](General.EnterpriseCompanies.md#defaultlanguage) __nullable__**  
_Category_: **System**  
Allowed values for the `DefaultLanguage`(General.EnterpriseCompanies.md#defaultlanguage) data attribute  
_Allowed Values (General.EnterpriseCompaniesRepository.DefaultLanguage Enum Members)_  

| Value | Description |
| ---- | --- |
| Bulgarian | Bulgarian value. Stored as 'bg'. <br /> _Database Value:_ 'bg' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Bulgarian' |
| English | English value. Stored as 'en'. <br /> _Database Value:_ 'en' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'English' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **English**  
_Show in UI_: **CannotBeShown**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### EditPeriodStartDate

Start date of the priod when the documents can be edited. `Filter(ge;le)`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### IsActive

Indicates whether the current Enterprise company  is active. `Required` `Default(true)` `Filter(multi eq)` `Introduced in version 20.1`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### PrintImagesRetentionMonths

A period of months for which the printed images of the documents will be kept. `Required` `Default(60)` `Filter(multi eq;ge;le)` `Introduced in version 20.1`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **60**  
_Show in UI_: **ShownByDefault**  

### UIBaseColor

When not null, specifies the background color to use for visualization of the UI when the current enterprise company is selected. The color is in RGBA color format. `Introduced in version 18.2`

_Type_: **int32 __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### AccessKey

The access key, containing the user permissions for this EnterpriseCompany. Null means that all users have unlimited permissions. `Filter(multi eq)`

_Type_: **[AccessKeys](Systems.Security.AccessKeys.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **CannotBeShown**  


_Remarks_  
Supported permissions

| Permission | Type |
| --- | --- |
| Update | - |
| Delete | - |
| Administer (manage security)| - |
### AdvanceProduct

Product that is used for handling advances in trade documents. `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### BaseCurrency

The base currency for summary reporting for this company. `Required` `Filter(multi eq)`

_Type_: **[Currencies](General.Currencies.Currencies.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Company

Contains the base company data on which this enterprise company is based. `Required` `Filter(multi eq)`

_Type_: **[Companies](General.Contacts.Companies.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ExchangeDifferenceCreditAccount

Account for balancing accounting vouchers with credit difference due to currency exchanges. `Filter(multi eq)`

_Type_: **[Accounts](Finance.Accounting.Accounts.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ExchangeDifferenceDebitAccount

Account for balancing accounting vouchers with debit difference due to currency exchanges. `Filter(multi eq)`

_Type_: **[Accounts](Finance.Accounting.Accounts.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### VATDocumentAmountType

The document amount that is used to determine the amount of the VAT entries when they are generated. `Filter(multi eq)`

_Type_: **[DocumentAmountTypes](Systems.Documents.DocumentAmountTypes.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  


## API Methods

Methods that can be invoked in public APIs.

### GetAllowedCustomPropertyValues

Gets the allowed values for the specified custom property for this entity object.              If supported the result is ordered by property value. Some property value sources do not support ordering - in that case the result is not ordered.  
_Return Type_: **Collection Of [CustomPropertyValue](../data-types.md#systems.bpm.custompropertyvalue)**  
_Declaring Type_: **EntityObject**  
_Domain API Request_: **GET**  

**Parameters**  
  * **customPropertyCode**  
    The code of the custom property  
    _Type_: string  

  * **search**  
    The search text - searches by value or description. Can contain wildcard character %.  
    _Type_: string  
     _Optional_: True  
    _Default Value_: null  

  * **exactMatch**  
    If true the search text should be equal to the property value  
    _Type_: boolean  
     _Optional_: True  
    _Default Value_: False  

  * **orderByDescription**  
    If true the result is ordered by Description instead of Value. Note that ordering is not always possible.  
    _Type_: boolean  
     _Optional_: True  
    _Default Value_: False  

  * **top**  
    The top clause - default is 10  
    _Type_: int32  
     _Optional_: True  
    _Default Value_: 10  

  * **skip**  
    The skip clause - default is 0  
    _Type_: int32  
     _Optional_: True  
    _Default Value_: 0  


### CreateNotification

Create a notification immediately in a separate transaction, and send a real-time event to the user.  
_Return Type_: **void**  
_Declaring Type_: **EntityObject**  
_Domain API Request_: **POST**  

**Parameters**  
  * **user**  
    The user.  
    _Type_: [Users](Systems.Security.Users.md)  

  * **notificationClass**  
    The notification class.  
    _Type_: string  

  * **subject**  
    The notification subject.  
    _Type_: string  


### CreateCopy

Duplicates the object and its child objects belonging to the same aggregate.              The duplicated objects are not saved to the data source but remain in the same transaction as the original object.  
_Return Type_: **EntityObject**  
_Declaring Type_: **EntityObject**  
_Domain API Request_: **POST**  


## Business Rules

[!list limit=1000 erp.entity=General.EnterpriseCompanies erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.EnterpriseCompanies erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_EnterpriseCompanies?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_EnterpriseCompanies?$top=10>

