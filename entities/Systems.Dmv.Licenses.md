---
uid: Systems.Dmv.Licenses
---
# Systems.Dmv.Licenses View

**Namespace:** [Systems.Dmv](Systems.Dmv.md)  

Dynaimc management view, providing license information. Entity: Dmv_Licenses (Introduced in version 24.1.3.66)

## Default Visualization
Default Display Text Format:  
_{StartDate}: {ExpiryDate}_  
Default Search Members:  
__  
Category:  _Views_  
Show in UI:  _CannotBeShown_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Dmv.Licenses](Systems.Dmv.Licenses.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DeactivationDate](Systems.Dmv.Licenses.md#deactivationdate) | datetime | The date when the license was deactivated. `Required` `Filter(ge;le)` 
| [ExpiryDate](Systems.Dmv.Licenses.md#expirydate) | datetime | When the license expires. `Required` `Filter(ge;le)` 
| [IsActive](Systems.Dmv.Licenses.md#isactive) | boolean | True if the license is active. `Required` 
| [LicenseString](Systems.Dmv.Licenses.md#licensestring) | string (max) | The license string. `Required` 
| [Notes](Systems.Dmv.Licenses.md#notes) | string (max) | Additional license notes. `Required` 
| [Origin](Systems.Dmv.Licenses.md#origin) | string (256) | The origin of this license. `Required` 
| [Provider](Systems.Dmv.Licenses.md#provider) | string (256) | The license provider - e.g., a local file. `Required` 
| [Scope](Systems.Dmv.Licenses.md#scope) | string (32) | The scope of the license. `Required` `Introduced in version 24.1.3.67` 
| [StartDate](Systems.Dmv.Licenses.md#startdate) | datetime | The start date of the license. `Required` `Filter(ge;le)` 


## Attribute Details

### DeactivationDate

The date when the license was deactivated. `Required` `Filter(ge;le)`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ExpiryDate

When the license expires. `Required` `Filter(ge;le)`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### IsActive

True if the license is active. `Required`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### LicenseString

The license string. `Required`

_Type_: **string (max)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
_Show in UI_: **ShownByDefault**  

### Notes

Additional license notes. `Required`

_Type_: **string (max)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
_Show in UI_: **ShownByDefault**  

### Origin

The origin of this license. `Required`

_Type_: **string (256)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **256**  
_Show in UI_: **ShownByDefault**  

### Provider

The license provider - e.g., a local file. `Required`

_Type_: **string (256)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **256**  
_Show in UI_: **ShownByDefault**  

### Scope

The scope of the license. `Required` `Introduced in version 24.1.3.67`

_Type_: **string (32)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **32**  
_Show in UI_: **ShownByDefault**  

### StartDate

The start date of the license. `Required` `Filter(ge;le)`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  


## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Dmv_Licenses?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Dmv_Licenses?$top=10>

