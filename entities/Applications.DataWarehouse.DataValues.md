---
uid: Applications.DataWarehouse.DataValues
---
# Applications.DataWarehouse.DataValues Entity

**Namespace:** [Applications.DataWarehouse](Applications.DataWarehouse.md)  

The actual values in the general data warehouse. Entity: Dw_Data_Values (Introduced in version 18.2)

## Default Visualization
Default Display Text Format:  
_{DataMeasure}: {ActualValue}_  
Default Search Members:  
__  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Applications.DataWarehouse.DataValues](Applications.DataWarehouse.DataValues.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ActualValue](Applications.DataWarehouse.DataValues.md#actualvalue) | decimal (17, 5) | Accumulates actual value for the measure. `Required` `Default(0)` `Filter(eq)` 
| [Date](Applications.DataWarehouse.DataValues.md#date) | date | The date for which the measure is recorded. All records with dates within each period are summed. `Required` `Filter(eq;ge;le)` 
| [DisplayText](Applications.DataWarehouse.DataValues.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Applications.DataWarehouse.DataValues.md#id) | guid |  
| [ObjectVersion](Applications.DataWarehouse.DataValues.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [TargetValue](Applications.DataWarehouse.DataValues.md#targetvalue) | decimal (17, 5) | Accumulates target value for the measure. `Required` `Default(0)` `Filter(eq)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [DataMeasure](Applications.DataWarehouse.DataValues.md#datameasure) | [DataMeasures](Applications.DataWarehouse.DataMeasures.md) | The measure for which the data is recorded. `Required` `Filter(multi eq)` |
| [EnterpriseCompany](Applications.DataWarehouse.DataValues.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) | The Enterprise Company for which the data is recorded. `Required` `Filter(multi eq)` |


## Attribute Details

### ActualValue

Accumulates actual value for the measure. `Required` `Default(0)` `Filter(eq)`

_Type_: **decimal (17, 5)**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### Date

The date for which the measure is recorded. All records with dates within each period are summed. `Required` `Filter(eq;ge;le)`

_Type_: **date**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

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

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### TargetValue

Accumulates target value for the measure. `Required` `Default(0)` `Filter(eq)`

_Type_: **decimal (17, 5)**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### DataMeasure

The measure for which the data is recorded. `Required` `Filter(multi eq)`

_Type_: **[DataMeasures](Applications.DataWarehouse.DataMeasures.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### EnterpriseCompany

The Enterprise Company for which the data is recorded. `Required` `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md)**  
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

[!list limit=1000 erp.entity=Applications.DataWarehouse.DataValues erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.DataWarehouse.DataValues erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_DataWarehouse_DataValues?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_DataWarehouse_DataValues?$top=10>

