---
uid: Finance.Accounting.VoucherCorrespondances
---
# Finance.Accounting.VoucherCorrespondances Entity

**Namespace:** [Finance.Accounting](Finance.Accounting.md)  

Obsolete. Not used. Entity: Acc_Voucher_Correspondances (Obsoleted in version 22.1.6.60)

> [!NOTE]  
> **OBSOLETE! Do not use!**   


## Default Visualization
Default Display Text Format:  
_{Voucher.EntityName}_  
Default Search Members:  
_Voucher.EntityName_  
Name Data Member:  
_Voucher.EntityName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Finance.Accounting.AccountingVouchers](Finance.Accounting.AccountingVouchers.md)  
Aggregate Root:  
[Finance.Accounting.AccountingVouchers](Finance.Accounting.AccountingVouchers.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AmountBase](Finance.Accounting.VoucherCorrespondances.md#amountbase) | decimal (18, 2) | Obsolete. Not used. `Required` `Default(0)` 
| [CreditAmount](Finance.Accounting.VoucherCorrespondances.md#creditamount) | decimal (18, 2) | Obsolete. Not used. `Required` `Default(0)` 
| [CreditVoucherLineId](Finance.Accounting.VoucherCorrespondances.md#creditvoucherlineid) | guid | Obsolete. Not used. (The voucher line which contains the credited account). `Required` `Filter(multi eq)` 
| [DebitAmount](Finance.Accounting.VoucherCorrespondances.md#debitamount) | decimal (18, 2) | Obsolete. Not used. `Required` `Default(0)` 
| [DebitVoucherLineId](Finance.Accounting.VoucherCorrespondances.md#debitvoucherlineid) | guid | Obsolete. Not used. (The voucher line which contains the debited account). `Required` `Filter(multi eq)` 
| [DisplayText](Finance.Accounting.VoucherCorrespondances.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Finance.Accounting.VoucherCorrespondances.md#id) | guid |  
| [ObjectVersion](Finance.Accounting.VoucherCorrespondances.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Voucher](Finance.Accounting.VoucherCorrespondances.md#voucher) | [AccountingVouchers](Finance.Accounting.AccountingVouchers.md) | The <see cref="AccountingVoucher"/> to which this VoucherCorrespondance belongs. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### AmountBase

Obsolete. Not used. `Required` `Default(0)`

_Type_: **decimal (18, 2)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### CreditAmount

Obsolete. Not used. `Required` `Default(0)`

_Type_: **decimal (18, 2)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### CreditVoucherLineId

Obsolete. Not used. (The voucher line which contains the credited account). `Required` `Filter(multi eq)`

_Type_: **guid**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### DebitAmount

Obsolete. Not used. `Required` `Default(0)`

_Type_: **decimal (18, 2)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### DebitVoucherLineId

Obsolete. Not used. (The voucher line which contains the debited account). `Required` `Filter(multi eq)`

_Type_: **guid**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
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
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  


## Reference Details

### Voucher

The <see cref="AccountingVoucher"/> to which this VoucherCorrespondance belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[AccountingVouchers](Finance.Accounting.AccountingVouchers.md)**  
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

[!list limit=1000 erp.entity=Finance.Accounting.VoucherCorrespondances erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Accounting.VoucherCorrespondances erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Accounting_VoucherCorrespondances?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Accounting_VoucherCorrespondances?$top=10>

