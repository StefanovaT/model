---
uid: Finance.Payments.PaymentTransactionLines
---
# Finance.Payments.PaymentTransactionLines Entity

**Namespace:** [Finance.Payments](Finance.Payments.md)  

Contains the distibution of the payments' amounts among the source payment orders. Entity: Cash_Payment_Transaction_Lines

## Default Visualization
Default Display Text Format:  
_{Id}. {PaymentTransaction.DocumentNo} {PaymentTransaction.DocumentType.TypeName:T}_  
Default Search Members:  
_PaymentTransaction.DocumentNo_  
Name Data Member:  
_PaymentTransaction.EntityName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Finance.Payments.PaymentTransactions](Finance.Payments.PaymentTransactions.md)  
Aggregate Root:  
[Finance.Payments.PaymentTransactions](Finance.Payments.PaymentTransactions.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AllowOverpayment](Finance.Payments.PaymentTransactionLines.md#allowoverpayment) | boolean | True-Allows overpayment for the payment order; false=Does not allow (default). `Required` `Default(false)` 
| [Amount](Finance.Payments.PaymentTransactionLines.md#amount) | [Amount (10, 2)](../data-types.md#amount) | The part of the total payed amount by the transaction, that is distributed to the specified payment order. `Currency: PaymentTransaction.TotalAmountCurrency` `Required` `Default(0)` 
| [CoveredOrderAmount](Finance.Payments.PaymentTransactionLines.md#coveredorderamount) | [Amount (10, 2)](../data-types.md#amount) | The part of the original payment order amount, that is covered by this transaction line. `Currency: PaymentOrder.TotalAmountCurrency` `Required` `Default(0)` 
| [DisplayText](Finance.Payments.PaymentTransactionLines.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Finance.Payments.PaymentTransactionLines.md#id) | guid |  
| [Notes](Finance.Payments.PaymentTransactionLines.md#notes) | string (254) __nullable__ | Notes for this PaymentTransactionLine. 
| [ObjectVersion](Finance.Payments.PaymentTransactionLines.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Document](Finance.Payments.PaymentTransactionLines.md#document) | [PaymentTransactions](Finance.Payments.PaymentTransactions.md) | The <see cref="PaymentTransaction"/<br />> to which this PaymentTransactionLine belongs. `Required` `Filter(multi eq)` |
| [PaymentOrder](Finance.Payments.PaymentTransactionLines.md#paymentorder) | [PaymentOrders](Finance.Payments.PaymentOrders.md) | The payment order, that is covered by this transaction amount distribution (tr.line). `Required` `Filter(multi eq)` |
| [PaymentTransaction](Finance.Payments.PaymentTransactionLines.md#paymenttransaction) | [PaymentTransactions](Finance.Payments.PaymentTransactions.md) | The <see cref="PaymentTransaction"/<br />> to which this PaymentTransactionLine belongs. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### AllowOverpayment

True-Allows overpayment for the payment order; false=Does not allow (default). `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### Amount

The part of the total payed amount by the transaction, that is distributed to the specified payment order. `Currency: PaymentTransaction.TotalAmountCurrency` `Required` `Default(0)`

_Type_: **[Amount (10, 2)](../data-types.md#amount)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  
_Show in UI_: **ShownByDefault**  

_Front-End Recalc Expressions:_  
`obj.CoveredOrderAmount.ConvertTo( obj.PaymentTransaction.TotalAmountCurrency, obj.PaymentTransaction.CurrencyDirectory)`
### CoveredOrderAmount

The part of the original payment order amount, that is covered by this transaction line. `Currency: PaymentOrder.TotalAmountCurrency` `Required` `Default(0)`

_Type_: **[Amount (10, 2)](../data-types.md#amount)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  
_Show in UI_: **ShownByDefault**  

_Front-End Recalc Expressions:_  
`obj.Amount.ConvertTo( obj.PaymentOrder.TotalAmountCurrency, obj.PaymentTransaction.CurrencyDirectory)`
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

### Notes

Notes for this PaymentTransactionLine.

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


## Reference Details

### Document

The <see cref="PaymentTransaction"/> to which this PaymentTransactionLine belongs. `Required` `Filter(multi eq)`

_Type_: **[PaymentTransactions](Finance.Payments.PaymentTransactions.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### PaymentOrder

The payment order, that is covered by this transaction amount distribution (tr.line). `Required` `Filter(multi eq)`

_Type_: **[PaymentOrders](Finance.Payments.PaymentOrders.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### PaymentTransaction

The <see cref="PaymentTransaction"/> to which this PaymentTransactionLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[PaymentTransactions](Finance.Payments.PaymentTransactions.md)**  
_Indexed_: **True**  
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

[!list limit=1000 erp.entity=Finance.Payments.PaymentTransactionLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Payments.PaymentTransactionLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Payments_PaymentTransactionLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Payments_PaymentTransactionLines?$top=10>

