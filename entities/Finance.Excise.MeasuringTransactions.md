---
uid: Finance.Excise.MeasuringTransactions
---
# Finance.Excise.MeasuringTransactions Entity

**Namespace:** [Finance.Excise](Finance.Excise.md)  

Transaction of product input or output, measured with specialized measuring device for excise purposes. Entity: Exc_Measuring_Transactions (Introduced in version 21.1.1.9)

## Default Visualization
Default Display Text Format:  
_{TransactionNumber}: {MeasuringDeviceCode}_  
Default Search Members:  
_MeasuringDeviceCode_  
Code Data Member:  
_MeasuringDeviceCode_  
Category:  _Views_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Finance.Excise.MeasuringTransactions](Finance.Excise.MeasuringTransactions.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AlcoholDegree](Finance.Excise.MeasuringTransactions.md#alcoholdegree) | decimal (5, 2) __nullable__ | For alcoholic products, contains the percentage of pure alcohol. null when the transaction is not for alcoholic products. `Filter(multi eq;ge;le)` 
| [AlcoholDensity](Finance.Excise.MeasuringTransactions.md#alcoholdensity) | int32 __nullable__ | For alcoholic products, contains the average density for the whole transaction. The measurement unit is dependent on the applicable legislation. null for non-alcoholic products. `Filter(multi eq;ge;le)` 
| [AlcoholTemperature](Finance.Excise.MeasuringTransactions.md#alcoholtemperature) | int32 __nullable__ | For alcoholic products, contains the temperature of the fluid, when Alcohol Degree was calculated. The measurement unit is dependent on the national regulation (usually Celsius). null for non-alcoholic products. `Filter(multi eq;ge;le)` 
| [Direction](Finance.Excise.MeasuringTransactions.md#direction) | [Direction](Finance.Excise.MeasuringTransactions.md#direction) | The direction of the transaction - IN/OUT. `Required` 
| [DisplayText](Finance.Excise.MeasuringTransactions.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [EndTimeUtc](Finance.Excise.MeasuringTransactions.md#endtimeutc) | datetime | Ending time of the transaction (in UTC time). `Required` `Filter(eq;ge;le)` 
| [Id](Finance.Excise.MeasuringTransactions.md#id) | guid |  
| [MeasuringDeviceCode](Finance.Excise.MeasuringTransactions.md#measuringdevicecode) | string (32) | The code of the measuring device, used to measure the transaction. `Required` `Filter(multi eq;like)` `ORD` 
| [Notes](Finance.Excise.MeasuringTransactions.md#notes) | string (max) __nullable__ | Notes for this MeasuringTransaction. 
| [ObjectVersion](Finance.Excise.MeasuringTransactions.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [Quantity](Finance.Excise.MeasuringTransactions.md#quantity) | [Quantity (12, 3)](../data-types.md#quantity) | The quantity of the product, measured with this transaction. `Unit: QuantityUnit` `Required` `Filter(eq;ge;le)` 
| [StartTimeUtc](Finance.Excise.MeasuringTransactions.md#starttimeutc) | datetime | Starting time of the transaction (in UTC time). `Required` `Filter(eq;ge;le)` 
| [TotalCounterEnd](Finance.Excise.MeasuringTransactions.md#totalcounterend) | decimal (12, 3) __nullable__ | Total counter value at the end of the transaction. `Introduced in version 23.1.1.42` 
| [TotalCounterStart](Finance.Excise.MeasuringTransactions.md#totalcounterstart) | decimal (12, 3) __nullable__ | Total counter value at the start of the transaction. `Introduced in version 23.1.1.42` 
| [TransactionNumber](Finance.Excise.MeasuringTransactions.md#transactionnumber) | string (32) | Transaction number, unique for the measuring device. `Required` `Filter(multi eq;like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Product](Finance.Excise.MeasuringTransactions.md#product) | [Products](General.Products.Products.md) | The product, which was being measured. `Required` `Filter(multi eq)` |
| [QuantityUnit](Finance.Excise.MeasuringTransactions.md#quantityunit) | [MeasurementUnits](General.Products.MeasurementUnits.md) | The measurement unit of Quantity. `Required` `Filter(multi eq)` |
| [TaxWarehouse](Finance.Excise.MeasuringTransactions.md#taxwarehouse) | [TaxWarehouses](Finance.Excise.TaxWarehouses.md) | The tax warehouse, where the transaction occurred. `Required` `Filter(multi eq)` |


## Attribute Details

### AlcoholDegree

For alcoholic products, contains the percentage of pure alcohol. null when the transaction is not for alcoholic products. `Filter(multi eq;ge;le)`

_Type_: **decimal (5, 2) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### AlcoholDensity

For alcoholic products, contains the average density for the whole transaction. The measurement unit is dependent on the applicable legislation. null for non-alcoholic products. `Filter(multi eq;ge;le)`

_Type_: **int32 __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### AlcoholTemperature

For alcoholic products, contains the temperature of the fluid, when Alcohol Degree was calculated. The measurement unit is dependent on the national regulation (usually Celsius). null for non-alcoholic products. `Filter(multi eq;ge;le)`

_Type_: **int32 __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Direction

The direction of the transaction - IN/OUT. `Required`

_Type_: **[Direction](Finance.Excise.MeasuringTransactions.md#direction)**  
_Category_: **System**  
Allowed values for the `Direction`(Finance.Excise.MeasuringTransactions.md#direction) data attribute  
_Allowed Values (Finance.Excise.MeasuringTransactionsRepository.Direction Enum Members)_  

| Value | Description |
| ---- | --- |
| IN | IN value. Stored as 'I'. <br /> _Database Value:_ 'I' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'IN' |
| OUT | OUT value. Stored as 'O'. <br /> _Database Value:_ 'O' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'OUT' |

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

### EndTimeUtc

Ending time of the transaction (in UTC time). `Required` `Filter(eq;ge;le)`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### MeasuringDeviceCode

The code of the measuring device, used to measure the transaction. `Required` `Filter(multi eq;like)` `ORD`

_Type_: **string (32)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like, EqualsIn**  
_Supports Order By_: **True**  
_Maximum Length_: **32**  
_Show in UI_: **ShownByDefault**  

### Notes

Notes for this MeasuringTransaction.

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

### Quantity

The quantity of the product, measured with this transaction. `Unit: QuantityUnit` `Required` `Filter(eq;ge;le)`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### StartTimeUtc

Starting time of the transaction (in UTC time). `Required` `Filter(eq;ge;le)`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### TotalCounterEnd

Total counter value at the end of the transaction. `Introduced in version 23.1.1.42`

_Type_: **decimal (12, 3) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### TotalCounterStart

Total counter value at the start of the transaction. `Introduced in version 23.1.1.42`

_Type_: **decimal (12, 3) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### TransactionNumber

Transaction number, unique for the measuring device. `Required` `Filter(multi eq;like)`

_Type_: **string (32)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like, EqualsIn**  
_Supports Order By_: **False**  
_Maximum Length_: **32**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### Product

The product, which was being measured. `Required` `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### QuantityUnit

The measurement unit of Quantity. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.Products.MeasurementUnits.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### TaxWarehouse

The tax warehouse, where the transaction occurred. `Required` `Filter(multi eq)`

_Type_: **[TaxWarehouses](Finance.Excise.TaxWarehouses.md)**  
_Indexed_: **True**  
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

[!list limit=1000 erp.entity=Finance.Excise.MeasuringTransactions erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Excise.MeasuringTransactions erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Excise_MeasuringTransactions?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Excise_MeasuringTransactions?$top=10>

