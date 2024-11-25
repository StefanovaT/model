---
uid: Finance.Excise.ExciseDutyRates
---
# Finance.Excise.ExciseDutyRates Entity

**Namespace:** [Finance.Excise](Finance.Excise.md)  

Duty rates are specified by the taxation and customs authorities. They are the basis for the calculation of the excise amount (based on the calculation algorithm, specified in the Product Category). Entity: Exc_Excise_Duty_Rates (Introduced in version 21.1.3.87)

## Default Visualization
Default Display Text Format:  
_{Id}: {ExciseProductId}_  
Default Search Members:  
__  
Category:  _Settings_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Finance.Excise.ExciseDutyRates](Finance.Excise.ExciseDutyRates.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Finance.Excise.ExciseDutyRates.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [ExciseDutyRateField](Finance.Excise.ExciseDutyRates.md#excisedutyratefield) | decimal (10, 6) | The rate which should be applied for the specified product and purpose. `Required` `Default(0)` `Filter(eq;ge;le)` 
| [Id](Finance.Excise.ExciseDutyRates.md#id) | guid |  
| [Notes](Finance.Excise.ExciseDutyRates.md#notes) | string (max) __nullable__ | Notes for this ExciseDutyRate. 
| [ObjectVersion](Finance.Excise.ExciseDutyRates.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ExciseMeasurementUnit](Finance.Excise.ExciseDutyRates.md#excisemeasurementunit) | [MeasurementUnits](General.Products.MeasurementUnits.md) | The measurement unit which should be used in the excise calculation. This is only for verification purposes. `Required` `Filter(multi eq)` |
| [ExciseProduct](Finance.Excise.ExciseDutyRates.md#exciseproduct) | [ExciseProducts](Finance.Excise.ExciseProducts.md) | The excise product for which the rate is applied. `Required` `Filter(multi eq)` |
| [ExcisePurposeCode](Finance.Excise.ExciseDutyRates.md#excisepurposecode) | [ExcisePurposeCodes](Finance.Excise.ExcisePurposeCodes.md) | The purpose for which the rate is applied. `Required` `Filter(multi eq)` |


## Attribute Details

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### ExciseDutyRateField

The rate which should be applied for the specified product and purpose. `Required` `Default(0)` `Filter(eq;ge;le)`

_Type_: **decimal (10, 6)**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### Notes

Notes for this ExciseDutyRate.

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


## Reference Details

### ExciseMeasurementUnit

The measurement unit which should be used in the excise calculation. This is only for verification purposes. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.Products.MeasurementUnits.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ExciseProduct

The excise product for which the rate is applied. `Required` `Filter(multi eq)`

_Type_: **[ExciseProducts](Finance.Excise.ExciseProducts.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ExcisePurposeCode

The purpose for which the rate is applied. `Required` `Filter(multi eq)`

_Type_: **[ExcisePurposeCodes](Finance.Excise.ExcisePurposeCodes.md)**  
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

[!list limit=1000 erp.entity=Finance.Excise.ExciseDutyRates erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Excise.ExciseDutyRates erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Excise_ExciseDutyRates?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Excise_ExciseDutyRates?$top=10>

