---
uid: Finance.Accounting.AccountRequiredProperties
---
# Finance.Accounting.AccountRequiredProperties Entity

**Namespace:** [Finance.Accounting](Finance.Accounting.md)  

Defines the required properties for new vouchers, for each account. Entity: Acc_Account_Required_Properties

## Default Visualization
Default Display Text Format:  
_{Account.Name:T}_  
Default Search Members:  
_Account.Name_  
Name Data Member:  
_Account.Name_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Finance.Accounting.Accounts](Finance.Accounting.Accounts.md)  
Aggregate Root:  
[Finance.Accounting.Accounts](Finance.Accounting.Accounts.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Finance.Accounting.AccountRequiredProperties.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Finance.Accounting.AccountRequiredProperties.md#id) | guid |  
| [KeyOrder](Finance.Accounting.AccountRequiredProperties.md#keyorder) | int32 | The key order determines in which order the values and descriptions of the properties will form the item (grouping) key and description. `Required` 
| [KeyProperty](Finance.Accounting.AccountRequiredProperties.md#keyproperty) | boolean | Key properties particiate in forming the grouping key, which is the smallest unit of calculation for account balance. Non-key properties simply serve for comment and clarification purposes. `Required` `Default(true)` `Filter(eq)` 
| [ObjectVersion](Finance.Accounting.AccountRequiredProperties.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Account](Finance.Accounting.AccountRequiredProperties.md#account) | [Accounts](Finance.Accounting.Accounts.md) | The <see cref="Account"/> to which this AccountRequiredProperty belongs. `Required` `Filter(multi eq)` `Owner` |
| [Property](Finance.Accounting.AccountRequiredProperties.md#property) | [CustomProperties](Systems.Bpm.CustomProperties.md) | A property of type (Entity_Name = Account Voucher Line) for which the user can specify value when entering accounting vouchers. `Required` `Filter(multi eq)` |


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

### KeyOrder

The key order determines in which order the values and descriptions of the properties will form the item (grouping) key and description. `Required`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`( obj.Account.RequiredProperties.Select( c => c.KeyOrder).DefaultIfEmpty( 0).Max( ) + 1)`

_Front-End Recalc Expressions:_  
`( obj.Account.RequiredProperties.Select( c => c.KeyOrder).DefaultIfEmpty( 0).Max( ) + 1)`
### KeyProperty

Key properties particiate in forming the grouping key, which is the smallest unit of calculation for account balance. Non-key properties simply serve for comment and clarification purposes. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  


## Reference Details

### Account

The <see cref="Account"/> to which this AccountRequiredProperty belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Accounts](Finance.Accounting.Accounts.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Show in UI_: **HiddenByDefault**  

### Property

A property of type (Entity_Name = Account Voucher Line) for which the user can specify value when entering accounting vouchers. `Required` `Filter(multi eq)`

_Type_: **[CustomProperties](Systems.Bpm.CustomProperties.md)**  
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

[!list limit=1000 erp.entity=Finance.Accounting.AccountRequiredProperties erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Accounting.AccountRequiredProperties erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Accounting_AccountRequiredProperties?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Accounting_AccountRequiredProperties?$top=10>

