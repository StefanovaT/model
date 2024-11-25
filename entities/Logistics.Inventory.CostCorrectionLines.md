---
uid: Logistics.Inventory.CostCorrectionLines
---
# Logistics.Inventory.CostCorrectionLines Entity

**Namespace:** [Logistics.Inventory](Logistics.Inventory.md)  

Cost correction detail lines. One line is created for each corrected transaction line. Entity: Inv_Cost_Correction_Lines

## Default Visualization
Default Display Text Format:  
_{Id}. {CostCorrection.DocumentNo} {CostCorrection.DocumentType.TypeName:T}_  
Default Search Members:  
_CostCorrection.DocumentNo_  
Name Data Member:  
_CostCorrection.EntityName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Logistics.Inventory.CostCorrections](Logistics.Inventory.CostCorrections.md)  
Aggregate Root:  
[Logistics.Inventory.CostCorrections](Logistics.Inventory.CostCorrections.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [BaseCostAdjustment](Logistics.Inventory.CostCorrectionLines.md#basecostadjustment) | [Amount (14, 2)](../data-types.md#amount) | The amount of correction (plus or minus) for the Base Cost field of the transaction line. `Currency: TransactionLine.TransactionObj.EnterpriseCompany.BaseCurrency` `Required` `Default(0)` 
| [CostCorrectionAmount](Logistics.Inventory.CostCorrectionLines.md#costcorrectionamount) | [Amount (14, 2)](../data-types.md#amount) | The amount of correction (plus or minus) for the Amount field of the transaction line. `Currency: TransactionLine.TransactionObj.DocumentCurrency` `Required` `Default(0)` 
| [DisplayText](Logistics.Inventory.CostCorrectionLines.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Logistics.Inventory.CostCorrectionLines.md#id) | guid |  
| [ObjectVersion](Logistics.Inventory.CostCorrectionLines.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [ProductCostAdjustment](Logistics.Inventory.CostCorrectionLines.md#productcostadjustment) | [Amount (14, 2)](../data-types.md#amount) | The amount of correction (plus or minus) for the Product Cost field of the transaction line. `Currency: TransactionLine.Product.CostingCurrency` `Required` `Default(0)` 
| [StoreCostAdjustment](Logistics.Inventory.CostCorrectionLines.md#storecostadjustment) | [Amount (14, 2)](../data-types.md#amount) | The amount of correction (plus or minus) for the Store Cost field of the transaction line. `Currency: TransactionLine.TransactionObj.Store.Currency` `Required` `Default(0)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [CostCorrection](Logistics.Inventory.CostCorrectionLines.md#costcorrection) | [CostCorrections](Logistics.Inventory.CostCorrections.md) | The <see cref="CostCorrection"/> to which this CostCorrectionLine belongs. `Required` `Filter(multi eq)` `Owner` |
| [Document](Logistics.Inventory.CostCorrectionLines.md#document) | [CostCorrections](Logistics.Inventory.CostCorrections.md) | The <see cref="CostCorrection"/> to which this CostCorrectionLine belongs. `Required` `Filter(multi eq)` |
| [TransactionLine](Logistics.Inventory.CostCorrectionLines.md#transactionline) | [StoreTransactionLines](Logistics.Inventory.StoreTransactionLines.md) | The transaction line, which is corrected. `Required` `Filter(multi eq)` |


## Attribute Details

### BaseCostAdjustment

The amount of correction (plus or minus) for the Base Cost field of the transaction line. `Currency: TransactionLine.TransactionObj.EnterpriseCompany.BaseCurrency` `Required` `Default(0)`

_Type_: **[Amount (14, 2)](../data-types.md#amount)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  
_Show in UI_: **ShownByDefault**  

### CostCorrectionAmount

The amount of correction (plus or minus) for the Amount field of the transaction line. `Currency: TransactionLine.TransactionObj.DocumentCurrency` `Required` `Default(0)`

_Type_: **[Amount (14, 2)](../data-types.md#amount)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  
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

### ProductCostAdjustment

The amount of correction (plus or minus) for the Product Cost field of the transaction line. `Currency: TransactionLine.Product.CostingCurrency` `Required` `Default(0)`

_Type_: **[Amount (14, 2)](../data-types.md#amount)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  
_Show in UI_: **ShownByDefault**  

### StoreCostAdjustment

The amount of correction (plus or minus) for the Store Cost field of the transaction line. `Currency: TransactionLine.TransactionObj.Store.Currency` `Required` `Default(0)`

_Type_: **[Amount (14, 2)](../data-types.md#amount)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### CostCorrection

The <see cref="CostCorrection"/> to which this CostCorrectionLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[CostCorrections](Logistics.Inventory.CostCorrections.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Show in UI_: **ShownByDefault**  

### Document

The <see cref="CostCorrection"/> to which this CostCorrectionLine belongs. `Required` `Filter(multi eq)`

_Type_: **[CostCorrections](Logistics.Inventory.CostCorrections.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### TransactionLine

The transaction line, which is corrected. `Required` `Filter(multi eq)`

_Type_: **[StoreTransactionLines](Logistics.Inventory.StoreTransactionLines.md)**  
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

[!list limit=1000 erp.entity=Logistics.Inventory.CostCorrectionLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Logistics.Inventory.CostCorrectionLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Logistics_Inventory_CostCorrectionLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Logistics_Inventory_CostCorrectionLines?$top=10>

