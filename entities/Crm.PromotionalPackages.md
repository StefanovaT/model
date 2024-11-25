---
uid: Crm.PromotionalPackages
---
# Crm.PromotionalPackages Entity

**Namespace:** [Crm](Crm.md)  

Promotional packages are packages of products, which are sold together at a special pricing and discount conditions. Entity: Crm_Promotional_Packages

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Code; Name_  
Code Data Member:  
_Code_  
Name Data Member:  
_Name_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Crm.PromotionalPackages](Crm.PromotionalPackages.md)  
  * [Crm.PromotionalPackageLines](Crm.PromotionalPackageLines.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Active](Crm.PromotionalPackages.md#active) | boolean | Package status: true = the offer is available for new documents; false = otherwise. `Required` `Default(true)` `Filter(eq)` 
| [Code](Crm.PromotionalPackages.md#code) | string (20) | Unique code of the promotional package. `Required` `Filter(eq;like)` `ORD` 
| [DisplayText](Crm.PromotionalPackages.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Crm.PromotionalPackages.md#id) | guid |  
| [Name](Crm.PromotionalPackages.md#name) | string (254) | The name of this PromotionalPackage. `Required` `Filter(eq;like)` `ORD` 
| [ObjectVersion](Crm.PromotionalPackages.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [ValidForCustomerFilterXML](Crm.PromotionalPackages.md#validforcustomerfilterxml) | dataaccessfilter __nullable__ | When not null, the package is valid only for the customers, that match the filter. `Unit: CustomersRepository.TableName` 
| [ValidForDistribution<br />ChannelFilterX<br />ML](Crm.PromotionalPackages.md#validfordistributionchannelfilterxml) | dataaccessfilter __nullable__ | When not null, the package is valid only if the specified distribution channel of the sales order fits in the filter criteria. `Unit: Marketing.DistributionChannels<br />Repository.TableName` 
| [ValidForShipTo<br />CustomerFilter<br />XML](Crm.PromotionalPackages.md#validforshiptocustomerfilterxml) | dataaccessfilter __nullable__ | When not null, specifies validity condition for the Ship To Customer of the sales document. `Unit: CustomersRepository.TableName` 
| [ValidFromDate](Crm.PromotionalPackages.md#validfromdate) | date __nullable__ | When not null specifies the first date when the package is valid for offering. The date is compared against the document date. `Filter(eq;ge;le)` 
| [ValidToDate](Crm.PromotionalPackages.md#validtodate) | date __nullable__ | When not null specifies the last date (inclusive) when the package is valid. The date is compared against the document date. `Filter(eq;ge;le)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Campaign](Crm.PromotionalPackages.md#campaign) | [Campaigns](Crm.Marketing.Campaigns.md) (nullable) | Тhe marketing campaign to which the current definition belongs. `Filter(multi eq)` `Introduced in version 22.1.4.67` |
| [EnterpriseCompany](Crm.PromotionalPackages.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable) | When not null, indicates that the package is valid only for the specified enterprise company. `Filter(multi eq)` |
| [EnterpriseCompanyLocation](Crm.PromotionalPackages.md#enterprisecompanylocation) | [CompanyLocations](General.Contacts.CompanyLocations.md) (nullable) | The Enterprise Company Location to which this PromotionalPackage applies, or null if it is for all enterprise company locations. `Filter(multi eq)` |
| [ValidForCustomer](Crm.PromotionalPackages.md#validforcustomer) | [Customers](Crm.Customers.md) (nullable) | When not null, the package is valid only for the specified customer. `Filter(multi eq)` |
| [ValidForDistribution<br />Channel](Crm.PromotionalPackages.md#validfordistributionchannel) | [DistributionChannels](Crm.Marketing.DistributionChannels.md) (nullable) | When not null, the package is valid only for the specified distribution channel of the sales order. `Filter(multi eq)` |
| [ValidForPriceList](Crm.PromotionalPackages.md#validforpricelist) | [PriceLists](Crm.PriceLists.md) (nullable) | When not null, the package is valid only for the specified price list. `Filter(multi eq)` |
| [ValidForShipToCustomer](Crm.PromotionalPackages.md#validforshiptocustomer) | [Customers](Crm.Customers.md) (nullable) | When not null, specifies that the package is valid only when the sales document is for the specified Ship To Customer. `Filter(multi eq)` |
| [ValidForTargetGroup](Crm.PromotionalPackages.md#validfortargetgroup) | [TargetGroups](Crm.Marketing.TargetGroups.md) (nullable) | When not null, the package is valid only for the specified customer target group. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Lines | [PromotionalPackageLines](Crm.PromotionalPackageLines.md) | List of `PromotionalPackageLine`(Crm.PromotionalPackageLines.md) child objects, based on the `Crm.PromotionalPackageLine.PromotionalPackage`(Crm.PromotionalPackageLines.md#promotionalpackage) back reference 


## Attribute Details

### Active

Package status: true = the offer is available for new documents; false = otherwise. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### Code

Unique code of the promotional package. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (20)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **20**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`obj.IncMax( o => o.Code, null, "00000")`

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### Name

The name of this PromotionalPackage. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (254)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **254**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### ValidForCustomerFilterXML

When not null, the package is valid only for the customers, that match the filter. `Unit: CustomersRepository.TableName`

_Type_: **dataaccessfilter __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ValidForDistributionChannelFilterXML

When not null, the package is valid only if the specified distribution channel of the sales order fits in the filter criteria. `Unit: Marketing.DistributionChannelsRepository.TableName`

_Type_: **dataaccessfilter __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ValidForShipToCustomerFilterXML

When not null, specifies validity condition for the Ship To Customer of the sales document. `Unit: CustomersRepository.TableName`

_Type_: **dataaccessfilter __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ValidFromDate

When not null specifies the first date when the package is valid for offering. The date is compared against the document date. `Filter(eq;ge;le)`

_Type_: **date __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ValidToDate

When not null specifies the last date (inclusive) when the package is valid. The date is compared against the document date. `Filter(eq;ge;le)`

_Type_: **date __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### Campaign

Тhe marketing campaign to which the current definition belongs. `Filter(multi eq)` `Introduced in version 22.1.4.67`

_Type_: **[Campaigns](Crm.Marketing.Campaigns.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### EnterpriseCompany

When not null, indicates that the package is valid only for the specified enterprise company. `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### EnterpriseCompanyLocation

The Enterprise Company Location to which this PromotionalPackage applies, or null if it is for all enterprise company locations. `Filter(multi eq)`

_Type_: **[CompanyLocations](General.Contacts.CompanyLocations.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ValidForCustomer

When not null, the package is valid only for the specified customer. `Filter(multi eq)`

_Type_: **[Customers](Crm.Customers.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ValidForDistributionChannel

When not null, the package is valid only for the specified distribution channel of the sales order. `Filter(multi eq)`

_Type_: **[DistributionChannels](Crm.Marketing.DistributionChannels.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ValidForPriceList

When not null, the package is valid only for the specified price list. `Filter(multi eq)`

_Type_: **[PriceLists](Crm.PriceLists.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ValidForShipToCustomer

When not null, specifies that the package is valid only when the sales document is for the specified Ship To Customer. `Filter(multi eq)`

_Type_: **[Customers](Crm.Customers.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ValidForTargetGroup

When not null, the package is valid only for the specified customer target group. `Filter(multi eq)`

_Type_: **[TargetGroups](Crm.Marketing.TargetGroups.md) (nullable)**  
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

[!list limit=1000 erp.entity=Crm.PromotionalPackages erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.PromotionalPackages erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_PromotionalPackages?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_PromotionalPackages?$top=10>

