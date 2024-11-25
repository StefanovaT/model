---
uid: Finance.Accounting.FinancialStatementNodeCorrespondances
---
# Finance.Accounting.FinancialStatementNodeCorrespondances Entity

**Namespace:** [Finance.Accounting](Finance.Accounting.md)  

Contains the actual correspondance filters, which specify how each financial statement node is calculated. Entity: Acc_Financial_Statement_Node_Correspondances

## Default Visualization
Default Display Text Format:  
_{FinancialStatementNode.Name:T}_  
Default Search Members:  
_FinancialStatementNode.Name_  
Name Data Member:  
_FinancialStatementNode.Name_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Finance.Accounting.FinancialStatementNodes](Finance.Accounting.FinancialStatementNodes.md)  
Aggregate Root:  
[Finance.Accounting.FinancialStatements](Finance.Accounting.FinancialStatements.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Finance.Accounting.FinancialStatementNodeCorrespondances.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Finance.Accounting.FinancialStatementNodeCorrespondances.md#id) | guid |  
| [Multiplier](Finance.Accounting.FinancialStatementNodeCorrespondances.md#multiplier) | decimal (18, 0) | Factor by which the correspondence balance will be multiplied. `Required` `Default(1)` 
| [ObjectVersion](Finance.Accounting.FinancialStatementNodeCorrespondances.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [AccountGroup](Finance.Accounting.FinancialStatementNodeCorrespondances.md#accountgroup) | [AccountGroups](Finance.Accounting.AccountGroups.md) | Main account group determining the correspondances for which the balances are summed. `Required` `Filter(multi eq)` |
| [CorrespondantAccountGroup](Finance.Accounting.FinancialStatementNodeCorrespondances.md#correspondantaccountgroup) | [AccountGroups](Finance.Accounting.AccountGroups.md) (nullable) | Correspondant account group determining the correspondances for which the balances are summed. If null means that the balances of all correspondances for the main account group are summed. `Filter(multi eq)` |
| [FinancialStatementNode](Finance.Accounting.FinancialStatementNodeCorrespondances.md#financialstatementnode) | [FinancialStatementNodes](Finance.Accounting.FinancialStatementNodes.md) | The <see cref="Financial<br />StatementNode"/> to which this FinancialStatement<br />NodeCorrespondance belongs. `Required` `Filter(multi eq)` `Owner` |


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

### Multiplier

Factor by which the correspondence balance will be multiplied. `Required` `Default(1)`

_Type_: **decimal (18, 0)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **1**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  


## Reference Details

### AccountGroup

Main account group determining the correspondances for which the balances are summed. `Required` `Filter(multi eq)`

_Type_: **[AccountGroups](Finance.Accounting.AccountGroups.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### CorrespondantAccountGroup

Correspondant account group determining the correspondances for which the balances are summed. If null means that the balances of all correspondances for the main account group are summed. `Filter(multi eq)`

_Type_: **[AccountGroups](Finance.Accounting.AccountGroups.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### FinancialStatementNode

The <see cref="FinancialStatementNode"/> to which this FinancialStatementNodeCorrespondance belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[FinancialStatementNodes](Finance.Accounting.FinancialStatementNodes.md)**  
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

[!list limit=1000 erp.entity=Finance.Accounting.FinancialStatementNodeCorrespondances erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Accounting.FinancialStatementNodeCorrespondances erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Accounting_FinancialStatementNodeCorrespondances?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Accounting_FinancialStatementNodeCorrespondances?$top=10>

