---
uid: Systems.Dmv.CurrentSessions
---
# Systems.Dmv.CurrentSessions View

**Namespace:** [Systems.Dmv](Systems.Dmv.md)  

Sessions dynamic management view. Entity: Dmv_Current_Sessions (Introduced in version 23.1.1.52)

## Default Visualization
Default Display Text Format:  
_{User}: {Device}_  
Default Search Members:  
__  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Dmv.CurrentSessions](Systems.Dmv.CurrentSessions.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AbsoluteExpirationTime](Systems.Dmv.CurrentSessions.md#absoluteexpirationtime) | datetime |  
| [Applications](Systems.Dmv.CurrentSessions.md#applications) | string (64) |  
| [CurrentRequestsCount](Systems.Dmv.CurrentSessions.md#currentrequestscount) | int32 |  
| [Device](Systems.Dmv.CurrentSessions.md#device) | string (64) |  
| [DownloadMB](Systems.Dmv.CurrentSessions.md#downloadmb) | decimal (12, 3) |  
| [LastRequestTime](Systems.Dmv.CurrentSessions.md#lastrequesttime) | datetime |  
| [StartTime](Systems.Dmv.CurrentSessions.md#starttime) | datetime |  
| [TotalRequestsCount](Systems.Dmv.CurrentSessions.md#totalrequestscount) | int64 |  
| [UploadMB](Systems.Dmv.CurrentSessions.md#uploadmb) | decimal (12, 3) |  
| [User](Systems.Dmv.CurrentSessions.md#user) | string (64) |  


## Attribute Details

### AbsoluteExpirationTime

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### Applications

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### CurrentRequestsCount

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### Device

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### DownloadMB

_Type_: **decimal (12, 3)**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### LastRequestTime

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### StartTime

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### TotalRequestsCount

_Type_: **int64**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### UploadMB

_Type_: **decimal (12, 3)**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### User

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  


## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Dmv_CurrentSessions?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Dmv_CurrentSessions?$top=10>

