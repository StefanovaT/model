---
uid: Systems.Core.AttributeChangesHistory
---
# Systems.Core.AttributeChangesHistory View

**Namespace:** [Systems.Core](Systems.Core.md)  

Each entry represents an entity attribute change with previous and new value. Entity: Sys_Attribute_Changes_History_View

## Default Visualization
Default Display Text Format:  
_{RepositoryName}: {EntityItemId}_  
Default Search Members:  
__  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Core.AttributeChangesHistory](Systems.Core.AttributeChangesHistory.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AttributeName](Systems.Core.AttributeChangesHistory.md#attributename) | string (64) |  
| [EntityItemId](Systems.Core.AttributeChangesHistory.md#entityitemid) | guid | The id of the actual changed object, described by this change. This is different than the aggregate root, which is pointed by Root Object. `Required` `Filter(multi eq)` `Inherited from Sys_Object_Changes_Table.Entity_Item_Id` 
| [NewValue](Systems.Core.AttributeChangesHistory.md#newvalue) | string (max) __nullable__ |  
| [PreviousValue](Systems.Core.AttributeChangesHistory.md#previousvalue) | string (max) | The previous value. `Required` `Filter(eq)` 
| [RepositoryName](Systems.Core.AttributeChangesHistory.md#repositoryname) | string (64) | The repository of the actual changed object, described by this change. This is different than the aggregate root, which is pointed by Root Object. `Required` `Filter(multi eq;like)` `Inherited from Sys_Object_Changes_Table.Repository_Name` 
| [TimeUtc](Systems.Core.AttributeChangesHistory.md#timeutc) | datetime | Date and time (in Utc) when the changeset was processed by the server. `Required` `Default(NowUtc)` `Filter(eq;ge;le)` `ORD` `Inherited from Sys_Object_Changesets_<br />Table.Time_Utc` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [User](Systems.Core.AttributeChangesHistory.md#user) | [Users](Systems.Security.Users.md) (nullable) | The user which initiated the change. null when it is unknown. `Filter(multi eq)` `Inherited from Sys_Object_Changesets_<br />Table.User_Id` |


## Attribute Details

### AttributeName

_Type_: **string (64)**  
_Category_: **System**  
_Inherited From_: **Sys_Attribute_Changes_Table.Attribute_Name**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### EntityItemId

The id of the actual changed object, described by this change. This is different than the aggregate root, which is pointed by Root Object. `Required` `Filter(multi eq)` `Inherited from Sys_Object_Changes_Table.Entity_Item_Id`

_Type_: **guid**  
_Category_: **System**  
_Inherited From_: **Sys_Object_Changes_Table.Entity_Item_Id**  
_Supported Filters_: **Equals, EqualsIn**  

### NewValue

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Inherited From_: **Sys_Attribute_Changes_Table.New_Value**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### PreviousValue

The previous value. `Required` `Filter(eq)`

_Type_: **string (max)**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### RepositoryName

The repository of the actual changed object, described by this change. This is different than the aggregate root, which is pointed by Root Object. `Required` `Filter(multi eq;like)` `Inherited from Sys_Object_Changes_Table.Repository_Name`

_Type_: **string (64)**  
_Category_: **System**  
_Inherited From_: **Sys_Object_Changes_Table.Repository_Name**  
_Supported Filters_: **Equals, Like, EqualsIn**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### TimeUtc

Date and time (in Utc) when the changeset was processed by the server. `Required` `Default(NowUtc)` `Filter(eq;ge;le)` `ORD` `Inherited from Sys_Object_Changesets_Table.Time_Utc`

_Type_: **datetime**  
_Category_: **System**  
_Inherited From_: **Sys_Object_Changesets_Table.Time_Utc**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **True**  
_Default Value_: **CurrentDateTimeUtc**  


## Reference Details

### User

The user which initiated the change. null when it is unknown. `Filter(multi eq)` `Inherited from Sys_Object_Changesets_Table.User_Id`

_Type_: **[Users](Systems.Security.Users.md) (nullable)**  
_Category_: **System**  
_Inherited From_: **Sys_Object_Changesets_Table.User_Id**  
_Supported Filters_: **Equals, EqualsIn**  


## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Core_AttributeChangesHistory?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Core_AttributeChangesHistory?$top=10>

