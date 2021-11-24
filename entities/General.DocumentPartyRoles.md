---
uid: General.DocumentPartyRoles
---
# General.DocumentPartyRoles Entity

**Namespace:** [General](General.md)  

Represents the different possible roles of a party associated to a document. Entity: Gen_Document_Party_Roles (Introduced in version 22.1.4.45)

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Member:  
__  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [General.DocumentPartyRoles](General.DocumentPartyRoles.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Code](General.DocumentPartyRoles.md#code) | string (32) | The code of the role. `Required` `Filter(eq;like)` `ORD` 
| [Id](General.DocumentPartyRoles.md#id) | guid |  
| [Name](General.DocumentPartyRoles.md#name) | [MultilanguageString](../data-types.md#multilanguagestring) | Party role name (multi-language). `Required` `Filter(eq;like)` 
| [Notes](General.DocumentPartyRoles.md#notes) | string (max) __nullable__ | Notes for this DocumentPartyRole. 


## Attribute Details

### Code

The code of the role. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (32)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **32**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

Party role name (multi-language). `Required` `Filter(eq;like)`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  

### Notes

Notes for this DocumentPartyRole.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  



## Business Rules

[!list limit=1000 erp.entity=General.DocumentPartyRoles erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.DocumentPartyRoles erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_DocumentPartyRoles?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_DocumentPartyRoles?$top=10>
