---
uid: General.Products.MeasurementCategories
---
# General.Products.MeasurementCategories Entity

**Namespace:** [General.Products](General.Products.md)  

Categories of measurement units. The units within a category are directly convertable to each other. Each category contains one base unit and unlimited number of derived units with fixed ratio to the base unit. Entity: Gen_Measurement_Categories

## Renames

Old name: **General.MeasurementCategories**  
New name: **General.Products.MeasurementCategories**  
Version: **24.1.5.35**  
Case: **35911**  



## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Name_  
Name Data Member:  
_Name_  
Category:  _Settings_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [General.Products.MeasurementCategories](General.Products.MeasurementCategories.md)  
  * [General.Products.MeasurementUnits](General.Products.MeasurementUnits.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](General.Products.MeasurementCategories.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](General.Products.MeasurementCategories.md#id) | guid |  
| [IsDefault](General.Products.MeasurementCategories.md#isdefault) | boolean | True=This category is the default category; false=otherwise. `Required` `Default(false)` `Filter(eq)` 
| [Name](General.Products.MeasurementCategories.md#name) | [MultilanguageString (64)](../data-types.md#multilanguagestring) | The name of this MeasurementCategory. `Required` `Filter(eq;like)` 
| [ObjectVersion](General.Products.MeasurementCategories.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| MeasurementUnits | [MeasurementUnits](General.Products.MeasurementUnits.md) | List of `MeasurementUnit`(General.Products.MeasurementUnits.md) child objects, based on the `General.Products.MeasurementUnit.MeasurementCategory`(General.Products.MeasurementUnits.md#measurementcategory) back reference 


## Attribute Details

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

### IsDefault

True=This category is the default category; false=otherwise. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### Name

The name of this MeasurementCategory. `Required` `Filter(eq;like)`

_Type_: **[MultilanguageString (64)](../data-types.md#multilanguagestring)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  


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

[!list limit=1000 erp.entity=General.Products.MeasurementCategories erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Products.MeasurementCategories erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Products_MeasurementCategories?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Products_MeasurementCategories?$top=10>
