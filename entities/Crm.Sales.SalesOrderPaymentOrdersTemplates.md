---
uid: Crm.Sales.SalesOrderPaymentOrdersTemplates
---
# Crm.Sales.SalesOrderPaymentOrdersTemplates Entity

**Namespace:** [Crm.Sales](Crm.Sales.md)  

Contains options for generation of payment orders. Each option set is assigned to specific generation route. Entity: Crm_Sales_Order_Payment_Orders_Templates

## Default Visualization
Default Display Text Format:  
_{Route.ProcedureName}_  
Default Search Members:  
_Route.ProcedureName_  
Name Data Member:  
_Route.ProcedureName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Systems.Documents.Routes](Systems.Documents.Routes.md)  
Aggregate Root:  
[Systems.Documents.DocumentTypes](Systems.Documents.DocumentTypes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [CreateForInvoicedAmounts](Crm.Sales.SalesOrderPaymentOrdersTemplates.md#createforinvoicedamounts) | boolean | True to add to the payment order, the part of the amount of the sales order, which is invoiced. `Required` 
| [CreateForNotInvoiced<br />Amounts](Crm.Sales.SalesOrderPaymentOrdersTemplates.md#createfornotinvoicedamounts) | boolean | True to add to the payment order, the part of the amount of the sales order, which is not included in any invoice. `Required` 
| [DisplayText](Crm.Sales.SalesOrderPaymentOrdersTemplates.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Crm.Sales.SalesOrderPaymentOrdersTemplates.md#id) | guid |  
| [IsAmountWithVAT](Crm.Sales.SalesOrderPaymentOrdersTemplates.md#isamountwithvat) | boolean | True to indicate that the parent document includes VAT and the generated the payment order should be with Is Amount With VAT = 1. This setting DOES NOT affect whether the generated amount should include VAT or not, it simply sets the flag in the generated order. `Required` 
| [ObjectVersion](Crm.Sales.SalesOrderPaymentOrdersTemplates.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [UpdateForInvoices](Crm.Sales.SalesOrderPaymentOrdersTemplates.md#updateforinvoices) | boolean | Update the payment order when invoices are issued for any of the sales orders lines. `Required` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Route](Crm.Sales.SalesOrderPaymentOrdersTemplates.md#route) | [Routes](Systems.Documents.Routes.md) | The route to which the current option set is assigned. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### CreateForInvoicedAmounts

True to add to the payment order, the part of the amount of the sales order, which is invoiced. `Required`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### CreateForNotInvoicedAmounts

True to add to the payment order, the part of the amount of the sales order, which is not included in any invoice. `Required`

_Type_: **boolean**  
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

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### IsAmountWithVAT

True to indicate that the parent document includes VAT and the generated the payment order should be with Is Amount With VAT = 1. This setting DOES NOT affect whether the generated amount should include VAT or not, it simply sets the flag in the generated order. `Required`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### UpdateForInvoices

Update the payment order when invoices are issued for any of the sales orders lines. `Required`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### Route

The route to which the current option set is assigned. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Routes](Systems.Documents.Routes.md)**  
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

[!list limit=1000 erp.entity=Crm.Sales.SalesOrderPaymentOrdersTemplates erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Sales.SalesOrderPaymentOrdersTemplates erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Sales_SalesOrderPaymentOrdersTemplates?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Sales_SalesOrderPaymentOrdersTemplates?$top=10>

