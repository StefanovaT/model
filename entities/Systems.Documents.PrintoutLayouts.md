---
uid: Systems.Documents.PrintoutLayouts
---
# Systems.Documents.PrintoutLayouts Entity

**Namespace:** [Systems.Documents](Systems.Documents.md)  

Contains design layouts for document printouts. Entity: Gen_Printout_Layouts

## Renames

Old name: **General.PrintoutLayouts**  
New name: **Systems.Documents.PrintoutLayouts**  
Version: **24.1.5.35**  
Case: **35911**  



## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  
Name Data Member:  
_Name_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _4 - Track object attribute and blob changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Documents.PrintoutLayouts](Systems.Documents.PrintoutLayouts.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [BinaryLayout](Systems.Documents.PrintoutLayouts.md#binarylayout) | byte[] __nullable__ | The printout layout, when the format requires binary storage. Alternative to Layout. 
| [DisplayText](Systems.Documents.PrintoutLayouts.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [DocumentEntityName](Systems.Documents.PrintoutLayouts.md#documententityname) | string (64) | The entity name of the document type e.g. Crm_Sales_Orders, Inv_Store_Orders etc. `Required` `Filter(eq)` 
| [Id](Systems.Documents.PrintoutLayouts.md#id) | guid |  
| [Layout](Systems.Documents.PrintoutLayouts.md#layout) | string (max) __nullable__ | The textual representation of the printout layout, when the format requires text representation. Alternative to Binary_Layout. 
| [LayoutFormat](Systems.Documents.PrintoutLayouts.md#layoutformat) | string (32) | Format specifier of the layout. Recognized by the application. `Required` `Filter(multi eq)` 
| [Name](Systems.Documents.PrintoutLayouts.md#name) | string (64) | The name of this PrintoutLayout. `Required` `Filter(eq;like)` `ORD` 
| [Notes](Systems.Documents.PrintoutLayouts.md#notes) | string (254) __nullable__ | Notes for this PrintoutLayout. 
| [ObjectVersion](Systems.Documents.PrintoutLayouts.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [DataSource](Systems.Documents.PrintoutLayouts.md#datasource) | [DataSources](Systems.Documents.DataSources.md) (nullable) | The data source for the printout. `Filter(multi eq)` |


## Attribute Details

### BinaryLayout

The printout layout, when the format requires binary storage. Alternative to Layout.

_Type_: **byte[] __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **CannotBeShown**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### DocumentEntityName

The entity name of the document type e.g. Crm_Sales_Orders, Inv_Store_Orders etc. `Required` `Filter(eq)`

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
_Show in UI_: **ShownByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### Layout

The textual representation of the printout layout, when the format requires text representation. Alternative to Binary_Layout.

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
_Show in UI_: **ShownByDefault**  

### LayoutFormat

Format specifier of the layout. Recognized by the application. `Required` `Filter(multi eq)`

_Type_: **string (32)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Maximum Length_: **32**  
_Show in UI_: **CannotBeShown**  

### Name

The name of this PrintoutLayout. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (64)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **64**  
_Show in UI_: **ShownByDefault**  

_Front-End Recalc Expressions:_  
`IIF( Not( IsNullOrEmpty( obj.DocumentEntityName)), obj.GetDefaultName( ), null)`
### Notes

Notes for this PrintoutLayout.

_Type_: **string (254) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
_Show in UI_: **HiddenByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  


## Reference Details

### DataSource

The data source for the printout. `Filter(multi eq)`

_Type_: **[DataSources](Systems.Documents.DataSources.md) (nullable)**  
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

[!list limit=1000 erp.entity=Systems.Documents.PrintoutLayouts erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Systems.Documents.PrintoutLayouts erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Documents_PrintoutLayouts?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Documents_PrintoutLayouts?$top=10>

