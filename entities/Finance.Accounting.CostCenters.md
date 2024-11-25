---
uid: Finance.Accounting.CostCenters
---
# Finance.Accounting.CostCenters Entity

**Namespace:** [Finance.Accounting](Finance.Accounting.md)  

Defines cost centers and their relation to profit centers. Entity: Acc_Cost_Centers

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
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Finance.Accounting.CostCenters](Finance.Accounting.CostCenters.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Finance.Accounting.CostCenters.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Finance.Accounting.CostCenters.md#id) | guid |  
| [IsActive](Finance.Accounting.CostCenters.md#isactive) | boolean | Indicates whether the current Cost Center is active. `Required` `Default(true)` `Filter(eq)` `Introduced in version 24.1.0.7` 
| [Name](Finance.Accounting.CostCenters.md#name) | string (254) | The name of this CostCenter. `Required` `Filter(like)` 
| [Notes](Finance.Accounting.CostCenters.md#notes) | string (254) __nullable__ | Notes for this CostCenter. 
| [ObjectVersion](Finance.Accounting.CostCenters.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [RelativeWeight](Finance.Accounting.CostCenters.md#relativeweight) | decimal (18, 4) | The weight of this cost center, relative to the other cost centers within the same parent. The weight is used during cost distribution calculations. The sum of weights of all cost centers within a parent does not need to be 100, the ratio of total weight over weight is used. `Required` `Default(1)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Parent](Finance.Accounting.CostCenters.md#parent) | [CostCenters](Finance.Accounting.CostCenters.md) (nullable) | Parent cost center, null if this is root cost center. `Filter(multi eq)` |
| [TransferCostToProfitCenter](Finance.Accounting.CostCenters.md#transfercosttoprofitcenter) | [ProfitCenters](Finance.Accounting.ProfitCenters.md) (nullable) | Points to the profit center to which to transfer the cost. Valid only for leaf cost centers. `Filter(multi eq)` |


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

### IsActive

Indicates whether the current Cost Center is active. `Required` `Default(true)` `Filter(eq)` `Introduced in version 24.1.0.7`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### Name

The name of this CostCenter. `Required` `Filter(like)`

_Type_: **string (254)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
_Show in UI_: **ShownByDefault**  

### Notes

Notes for this CostCenter.

_Type_: **string (254) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### RelativeWeight

The weight of this cost center, relative to the other cost centers within the same parent. The weight is used during cost distribution calculations. The sum of weights of all cost centers within a parent does not need to be 100, the ratio of total weight over weight is used. `Required` `Default(1)`

_Type_: **decimal (18, 4)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **1**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### Parent

Parent cost center, null if this is root cost center. `Filter(multi eq)`

_Type_: **[CostCenters](Finance.Accounting.CostCenters.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### TransferCostToProfitCenter

Points to the profit center to which to transfer the cost. Valid only for leaf cost centers. `Filter(multi eq)`

_Type_: **[ProfitCenters](Finance.Accounting.ProfitCenters.md) (nullable)**  
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

[!list limit=1000 erp.entity=Finance.Accounting.CostCenters erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Accounting.CostCenters erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Accounting_CostCenters?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Accounting_CostCenters?$top=10>

