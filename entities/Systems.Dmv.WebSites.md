---
uid: Systems.Dmv.WebSites
---
# Systems.Dmv.WebSites View

**Namespace:** [Systems.Dmv](Systems.Dmv.md)  

Web sites dynamic management view. Entity: Dmv_Web_Sites (Introduced in version 23.1.1.43)

## Default Visualization
Default Display Text Format:  
_{RootUrl}: {Type}_  
Default Search Members:  
__  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Dmv.WebSites](Systems.Dmv.WebSites.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [RootUrl](Systems.Dmv.WebSites.md#rooturl) | string (256) |  
| [Status](Systems.Dmv.WebSites.md#status) | string (10) |  
| [Type](Systems.Dmv.WebSites.md#type) | string (64) |  


## Attribute Details

### RootUrl

_Type_: **string (256)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **256**  

### Status

_Type_: **string (10)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **10**  

### Type

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  


## API Methods

Methods that can be invoked in public APIs.

### Start

Start web site  
_Return Type_: **void**  
_Declaring Type_: **[WebSites](Systems.Dmv.WebSites.md)**  
_Domain API Request_: **POST**  

### Stop

Stop web site  
_Return Type_: **void**  
_Declaring Type_: **[WebSites](Systems.Dmv.WebSites.md)**  
_Domain API Request_: **POST**  

### Restart

Restart web site  
_Return Type_: **void**  
_Declaring Type_: **[WebSites](Systems.Dmv.WebSites.md)**  
_Domain API Request_: **POST**  

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Dmv_WebSites?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Dmv_WebSites?$top=10>

