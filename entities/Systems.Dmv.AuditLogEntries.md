---
uid: Systems.Dmv.AuditLogEntries
---
# Systems.Dmv.AuditLogEntries View

**Namespace:** [Systems.Dmv](Systems.Dmv.md)  

Information about the count and the size of audit log entries, grouped by application name, event class, entity name and event time. Entity: Dmv_Audit_Log_Entries (Introduced in version 24.1.3.48)

## Default Visualization
Default Display Text Format:  
_{ApplicationName}: {EventClass}_  
Default Search Members:  
__  
Category:  _Views_  
Show in UI:  _ShownByDefault_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Dmv.AuditLogEntries](Systems.Dmv.AuditLogEntries.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ApplicationName](Systems.Dmv.AuditLogEntries.md#applicationname) | string (64) | The client application that triggered the events. Null when unknown or N/A. `Required` `Filter(eq;like)` `ORD` 
| [EntityName](Systems.Dmv.AuditLogEntries.md#entityname) | string (64) | The entity, which is being referenced by the events. Null when unknown or N/A. `Required` `Filter(eq;like)` `ORD` 
| [EntriesCount](Systems.Dmv.AuditLogEntries.md#entriescount) | int32 | Total number of audit log entries. `Required` `Filter(eq;ge;le)` `ORD` 
| [EventClass](Systems.Dmv.AuditLogEntries.md#eventclass) | string (1) | The event primary classification, which shows the source of the events. `Required` `Filter(eq;like)` `ORD` 
| [TotalSizeMB](Systems.Dmv.AuditLogEntries.md#totalsizemb) | int64 | Total size of the audit log entries in megabytes. `Required` `Filter(eq;ge;le)` `ORD` 
| [Year](Systems.Dmv.AuditLogEntries.md#year) | string (30) | Year when the events occurred. `Required` `Filter(eq;like)` `ORD` 


## Attribute Details

### ApplicationName

The client application that triggered the events. Null when unknown or N/A. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **64**  
_Show in UI_: **ShownByDefault**  

### EntityName

The entity, which is being referenced by the events. Null when unknown or N/A. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **64**  
_Show in UI_: **ShownByDefault**  

### EntriesCount

Total number of audit log entries. `Required` `Filter(eq;ge;le)` `ORD`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **True**  
_Show in UI_: **ShownByDefault**  

### EventClass

The event primary classification, which shows the source of the events. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (1)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **1**  
_Show in UI_: **ShownByDefault**  

### TotalSizeMB

Total size of the audit log entries in megabytes. `Required` `Filter(eq;ge;le)` `ORD`

_Type_: **int64**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **True**  
_Show in UI_: **ShownByDefault**  

### Year

Year when the events occurred. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (30)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **30**  
_Show in UI_: **ShownByDefault**  


## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Dmv_AuditLogEntries?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Dmv_AuditLogEntries?$top=10>

