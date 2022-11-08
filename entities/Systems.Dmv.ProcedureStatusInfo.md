---
uid: Systems.Dmv.ProcedureStatusInfo
---
# Systems.Dmv.ProcedureStatusInfo View

**Namespace:** [Systems.Dmv](Systems.Dmv.md)  

Dynamic management view for long running procedures. Entity: Dmv_Procedure_Status_Info (Introduced in version 23.1.1.53)

## Default Visualization
Default Display Text Format:  
_{StartTime}: {User}_  
Default Search Members:  
__  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Dmv.ProcedureStatusInfo](Systems.Dmv.ProcedureStatusInfo.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Completed](Systems.Dmv.ProcedureStatusInfo.md#completed) | boolean |  
| [ElapsedMin](Systems.Dmv.ProcedureStatusInfo.md#elapsedmin) | string (64) |  
| [ElapsedPercent](Systems.Dmv.ProcedureStatusInfo.md#elapsedpercent) | double |  
| [EndTime](Systems.Dmv.ProcedureStatusInfo.md#endtime) | string (64) |  
| [Error](Systems.Dmv.ProcedureStatusInfo.md#error) | string (128) | If not null, this is the text of the exception that occured during the procedure execution. `Required` 
| [Procedure](Systems.Dmv.ProcedureStatusInfo.md#procedure) | string (128) |  
| [Properties](Systems.Dmv.ProcedureStatusInfo.md#properties) | string (128) | List of procedure status properties. `Required` 
| [StartTime](Systems.Dmv.ProcedureStatusInfo.md#starttime) | string (64) |  
| [User](Systems.Dmv.ProcedureStatusInfo.md#user) | string (128) |  


## Attribute Details

### Completed

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  

### ElapsedMin

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### ElapsedPercent

_Type_: **double**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### EndTime

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### Error

If not null, this is the text of the exception that occured during the procedure execution. `Required`

_Type_: **string (128)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **128**  

### Procedure

_Type_: **string (128)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **128**  

### Properties

List of procedure status properties. `Required`

_Type_: **string (128)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **128**  

### StartTime

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### User

_Type_: **string (128)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **128**  


## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Dmv_ProcedureStatusInfo?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Dmv_ProcedureStatusInfo?$top=10>

