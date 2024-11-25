---
uid: General.ReportQueries
---
# General.ReportQueries Entity

**Namespace:** [General](General.md)  

Contains the sub-queries, which a report contains. Entity: Gen_Report_Queries

## Default Visualization
Default Display Text Format:  
_{TableName}_  
Default Search Members:  
_TableName_  
Name Data Member:  
_TableName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[General.Reports](General.Reports.md)  
Aggregate Root:  
[General.Reports](General.Reports.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DependsOnChildRows](General.ReportQueries.md#dependsonchildrows) | boolean | If True the data in the current report table contains only the rows that have child rows in sub-tables. `Required` `Default(false)` 
| [DisplayText](General.ReportQueries.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [ExtensionsList](General.ReportQueries.md#extensionslist) | string (max) __nullable__ | A comma separated list of report extension names. An extension is set of additional fields that participate in the query. 
| [FilterXml](General.ReportQueries.md#filterxml) | dataaccessfilter __nullable__ | Filter for the loaded table. 
| [Id](General.ReportQueries.md#id) | guid |  
| [ObjectVersion](General.ReportQueries.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [ReferencePath](General.ReportQueries.md#referencepath) | string (512) | A sequence of table names and foreign key columns that define how the data will be loaded by this query. For example - Gen_Documents/<br />Enterprise_Company_<br />Id/Company_Id - will load the definition of the company for the enterprise company of a document. `Required` 
| [ShowCustomProperties](General.ReportQueries.md#showcustomproperties) | boolean | True to include the custom properties. `Required` `Default(false)` 
| [ShowTextColumns](General.ReportQueries.md#showtextcolumns) | boolean | True to include text descriptions for certain columns. `Required` `Default(false)` 
| [TableName](General.ReportQueries.md#tablename) | string (64) __nullable__ | The name of the report query. A Reference_Path can participate more than one time in the report but with different Report_Query_Name. This can be used to specify different filter for the same query. Can be null. 
| [UniqueName](General.ReportQueries.md#uniquename) | string (64) __nullable__ | The name of the data table in the printout datasource. If null the Reference_Path is used. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [<s>Report</s>](General.ReportQueries.md#report) | [Reports](General.Reports.md) | **OBSOLETE! Do not use!** The <see cref="Report"/> to which this ReportQuery belongs. `Obsolete` `Required` `Filter(multi eq)` `Obsoleted in version 25.1.0.13` `Obsolete` `Owner` |


## Attribute Details

### DependsOnChildRows

If True the data in the current report table contains only the rows that have child rows in sub-tables. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### ExtensionsList

A comma separated list of report extension names. An extension is set of additional fields that participate in the query.

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
_Show in UI_: **ShownByDefault**  

### FilterXml

Filter for the loaded table.

_Type_: **dataaccessfilter __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### ReferencePath

A sequence of table names and foreign key columns that define how the data will be loaded by this query. For example - Gen_Documents/Enterprise_Company_Id/Company_Id - will load the definition of the company for the enterprise company of a document. `Required`

_Type_: **string (512)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **512**  
_Show in UI_: **ShownByDefault**  

### ShowCustomProperties

True to include the custom properties. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **CannotBeShown**  

### ShowTextColumns

True to include text descriptions for certain columns. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **CannotBeShown**  

### TableName

The name of the report query. A Reference_Path can participate more than one time in the report but with different Report_Query_Name. This can be used to specify different filter for the same query. Can be null.

_Type_: **string (64) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
_Show in UI_: **ShownByDefault**  

### UniqueName

The name of the data table in the printout datasource. If null the Reference_Path is used.

_Type_: **string (64) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
_Show in UI_: **HiddenByDefault**  


## Reference Details

### Report

**OBSOLETE! Do not use!** The <see cref="Report"/> to which this ReportQuery belongs. `Obsolete` `Required` `Filter(multi eq)` `Obsoleted in version 25.1.0.13` `Obsolete` `Owner`

_Type_: **[Reports](General.Reports.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
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

Creates a notification and sends a real time event to the user.  
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
    The subject.  
    _Type_: string  


### CreateCopy

Duplicates the object and its child objects belonging to the same aggregate.              The duplicated objects are not saved to the data source but remain in the same transaction as the original object.  
_Return Type_: **EntityObject**  
_Declaring Type_: **EntityObject**  
_Domain API Request_: **POST**  


## Business Rules

[!list limit=1000 erp.entity=General.ReportQueries erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.ReportQueries erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_ReportQueries?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_ReportQueries?$top=10>

