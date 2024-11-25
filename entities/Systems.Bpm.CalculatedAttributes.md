---
uid: Systems.Bpm.CalculatedAttributes
---
# Systems.Bpm.CalculatedAttributes Entity

**Namespace:** [Systems.Bpm](Systems.Bpm.md)  

User-defined read-only calculated attribute. Entity: Sys_Calculated_Attributes

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  
Name Data Member:  
_Name_  
Category:  _Settings_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _3 - Track object and attribute changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Bpm.CalculatedAttributes](Systems.Bpm.CalculatedAttributes.md)  
  * [Systems.Bpm.CalculatedAttributeExpressions](Systems.Bpm.CalculatedAttributeExpressions.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Caption](Systems.Bpm.CalculatedAttributes.md#caption) | [MultilanguageString (512)](../data-types.md#multilanguagestring) | The multi-language caption, used to display the attribute. `Required` 
| [DisplayText](Systems.Bpm.CalculatedAttributes.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Hint](Systems.Bpm.CalculatedAttributes.md#hint) | [MultilanguageString (max)](../data-types.md#multilanguagestring) __nullable__ | The hint, which is displayed alongside the attribute. `Filter(multi eq;like)` `Introduced in version 21.1.3.53` 
| [Id](Systems.Bpm.CalculatedAttributes.md#id) | guid |  
| [IsActive](Systems.Bpm.CalculatedAttributes.md#isactive) | boolean | True if the attribute is activated and added to the repository. `Required` `Default(false)` `Filter(eq)` 
| [Name](Systems.Bpm.CalculatedAttributes.md#name) | string (128) | The unique name of the attribute within the repository. `Required` `Filter(eq;like)` 
| [Notes](Systems.Bpm.CalculatedAttributes.md#notes) | string (max) __nullable__ | Notes for this CalculatedAttribute. 
| [ObjectVersion](Systems.Bpm.CalculatedAttributes.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [RepositoryName](Systems.Bpm.CalculatedAttributes.md#repositoryname) | string (128) | The repository, for which the attribute is defined. `Required` `Filter(multi eq)` `ORD` 
| [StartingExpressionNo](Systems.Bpm.CalculatedAttributes.md#startingexpressionno) | int32 | The expression, from which the calculation starts. The result of the expression gives the value of the calculated attribute. `Required` `Default(10)` 

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Expressions | [CalculatedAttributeExpressions](Systems.Bpm.CalculatedAttributeExpressions.md) | List of `CalculatedAttribute<br />Expression`(Systems.Bpm.CalculatedAttribute<br />Expressions.md) child objects, based on the `Systems.Bpm.CalculatedAttribute<br />Expression.CalculatedAttribute`(Systems.Bpm.CalculatedAttribute<br />Expressions.md#calculatedattribute) back reference 


## Attribute Details

### Caption

The multi-language caption, used to display the attribute. `Required`

_Type_: **[MultilanguageString (512)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### Hint

The hint, which is displayed alongside the attribute. `Filter(multi eq;like)` `Introduced in version 21.1.3.53`

_Type_: **[MultilanguageString (max)](../data-types.md#multilanguagestring) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, Like, EqualsIn**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### IsActive

True if the attribute is activated and added to the repository. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### Name

The unique name of the attribute within the repository. `Required` `Filter(eq;like)`

_Type_: **string (128)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **128**  
_Show in UI_: **ShownByDefault**  

### Notes

Notes for this CalculatedAttribute.

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### RepositoryName

The repository, for which the attribute is defined. `Required` `Filter(multi eq)` `ORD`

_Type_: **string (128)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **True**  
_Maximum Length_: **128**  
_Show in UI_: **ShownByDefault**  

### StartingExpressionNo

The expression, from which the calculation starts. The result of the expression gives the value of the calculated attribute. `Required` `Default(10)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **10**  
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

[!list limit=1000 erp.entity=Systems.Bpm.CalculatedAttributes erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Systems.Bpm.CalculatedAttributes erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Bpm_CalculatedAttributes?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Bpm_CalculatedAttributes?$top=10>

