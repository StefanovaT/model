---
uid: Crm.Pos.FiscalReceiptTemplates
---
# Crm.Pos.FiscalReceiptTemplates Entity

**Namespace:** [Crm.Pos](Crm.Pos.md)  

Templates for customizing the printouts of fiscal receipts. Entity: Pos_Fiscal_Receipt_Templates (Introduced in version 24.1.1.50)

## Default Visualization
Default Display Text Format:  
_{TemplateName}_  
Default Search Members:  
_TemplateName_  
Name Data Member:  
_TemplateName_  
Category:  _Settings_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Crm.Pos.FiscalReceiptTemplates](Crm.Pos.FiscalReceiptTemplates.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [CustomFooter](Crm.Pos.FiscalReceiptTemplates.md#customfooter) | string (256) __nullable__ | User-defined footer printed at the end of the document (interpolated string). 
| [CustomHeader](Crm.Pos.FiscalReceiptTemplates.md#customheader) | string (256) __nullable__ | User-defined header printed at the beginning of the document (interpolated string). 
| [CustomRowFooter](Crm.Pos.FiscalReceiptTemplates.md#customrowfooter) | string (256) __nullable__ | User-defined footer printed after each row (interpolated string). 
| [CustomRowHeader](Crm.Pos.FiscalReceiptTemplates.md#customrowheader) | string (256) __nullable__ | User-defined header printed before each row (interpolated string). 
| [DisplayText](Crm.Pos.FiscalReceiptTemplates.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Crm.Pos.FiscalReceiptTemplates.md#id) | guid |  
| [ObjectVersion](Crm.Pos.FiscalReceiptTemplates.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [PrintSystemHeader](Crm.Pos.FiscalReceiptTemplates.md#printsystemheader) | boolean | Denotes whether to print the system-defined header for the document. `Required` `Default(true)` `Filter(eq)` 
| [PrintSystemRowHeader](Crm.Pos.FiscalReceiptTemplates.md#printsystemrowheader) | boolean | Denotes whether to print the system-defined header for each row. `Required` `Default(true)` `Filter(eq)` 
| [TemplateKind](Crm.Pos.FiscalReceiptTemplates.md#templatekind) | [TemplateKind](Crm.Pos.FiscalReceiptTemplates.md#templatekind) | Specifies the entity type, for which the template can be used. Template strings can refer to the attributes of the specified entity type. `Required` `Default("S")` `Filter(multi eq)` `Introduced in version 24.1.5.7` 
| [TemplateName](Crm.Pos.FiscalReceiptTemplates.md#templatename) | string (64) | The unique name of the printing template. `Required` `Filter(eq;like)` `ORD` 


## Attribute Details

### CustomFooter

User-defined footer printed at the end of the document (interpolated string).

_Type_: **string (256) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **256**  
_Show in UI_: **ShownByDefault**  

### CustomHeader

User-defined header printed at the beginning of the document (interpolated string).

_Type_: **string (256) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **256**  
_Show in UI_: **ShownByDefault**  

### CustomRowFooter

User-defined footer printed after each row (interpolated string).

_Type_: **string (256) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **256**  
_Show in UI_: **ShownByDefault**  

### CustomRowHeader

User-defined header printed before each row (interpolated string).

_Type_: **string (256) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **256**  
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
_Show in UI_: **CannotBeShown**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### PrintSystemHeader

Denotes whether to print the system-defined header for the document. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### PrintSystemRowHeader

Denotes whether to print the system-defined header for each row. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### TemplateKind

Specifies the entity type, for which the template can be used. Template strings can refer to the attributes of the specified entity type. `Required` `Default("S")` `Filter(multi eq)` `Introduced in version 24.1.5.7`

_Type_: **[TemplateKind](Crm.Pos.FiscalReceiptTemplates.md#templatekind)**  
_Category_: **System**  
Allowed values for the `TemplateKind`(Crm.Pos.FiscalReceiptTemplates.md#templatekind) data attribute  
_Allowed Values (Crm.Pos.FiscalReceiptTemplatesRepository.TemplateKind Enum Members)_  

| Value | Description |
| ---- | --- |
| SalesOrders | Sales Orders entity type. Stored as 'S'. <br /> _Database Value:_ 'S' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'SalesOrders' |
| Invoices | Invoices entity type. Stored as 'I'. <br /> _Database Value:_ 'I' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Invoices' |
| Payments | Payments entity type. Stored as 'P'. <br /> _Database Value:_ 'P' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'Payments' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **SalesOrders**  
_Show in UI_: **ShownByDefault**  

### TemplateName

The unique name of the printing template. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (64)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **64**  
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

[!list limit=1000 erp.entity=Crm.Pos.FiscalReceiptTemplates erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Pos.FiscalReceiptTemplates erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Pos_FiscalReceiptTemplates?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Pos_FiscalReceiptTemplates?$top=10>

