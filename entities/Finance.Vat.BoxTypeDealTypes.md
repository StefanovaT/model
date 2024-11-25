---
uid: Finance.Vat.BoxTypeDealTypes
---
# Finance.Vat.BoxTypeDealTypes Entity

**Namespace:** [Finance.Vat](Finance.Vat.md)  

Determines the Amount Category which will be accumulated in the Box Type according to the specified the Deal Type. Entity: VAT_Box_Type_Deal_Types (Introduced in version 22.1.5.98)

## Default Visualization
Default Display Text Format:  
_{Id}: {BoxTypeId}_  
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
* [Finance.Vat.BoxTypeDealTypes](Finance.Vat.BoxTypeDealTypes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AmountCategory](Finance.Vat.BoxTypeDealTypes.md#amountcategory) | [AmountCategory](Finance.Vat.BoxTypeDealTypes.md#amountcategory) | Specifies the amount type from the Vat Entry which will be accumulated. `Required` `Filter(multi eq)` 
| [DisplayText](Finance.Vat.BoxTypeDealTypes.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Finance.Vat.BoxTypeDealTypes.md#id) | guid |  
| [Notes](Finance.Vat.BoxTypeDealTypes.md#notes) | string (max) __nullable__ | Notes for this BoxTypeDealType. 
| [ObjectVersion](Finance.Vat.BoxTypeDealTypes.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [BoxType](Finance.Vat.BoxTypeDealTypes.md#boxtype) | [BoxTypes](Finance.Vat.BoxTypes.md) | The type of box in a VAT declaration. `Required` `Filter(multi eq)` |
| [DealType](Finance.Vat.BoxTypeDealTypes.md#dealtype) | [DealTypes](Finance.Vat.DealTypes.md) | Deal Type for the box. `Required` `Filter(multi eq)` |


## Attribute Details

### AmountCategory

Specifies the amount type from the Vat Entry which will be accumulated. `Required` `Filter(multi eq)`

_Type_: **[AmountCategory](Finance.Vat.BoxTypeDealTypes.md#amountcategory)**  
_Category_: **System**  
Allowed values for the `AmountCategory`(Finance.Vat.BoxTypeDealTypes.md#amountcategory) data attribute  
_Allowed Values (Finance.Vat.BoxTypeDealTypesRepository.AmountCategory Enum Members)_  

| Value | Description |
| ---- | --- |
| VAT | The amount of the tax for the operation in base currency.. Stored as 'V'. <br /> _Database Value:_ 'V' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'VAT' |
| BASE | Amount of the operation without the tax in base currency.. Stored as 'B'. <br /> _Database Value:_ 'B' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'BASE' |
| TOTAL | Amount of the operation with the tax in base currency.. Stored as 'T'. <br /> _Database Value:_ 'T' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'TOTAL' |

_Supported Filters_: **Equals, EqualsIn**  
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

### Notes

Notes for this BoxTypeDealType.

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

### BoxType

The type of box in a VAT declaration. `Required` `Filter(multi eq)`

_Type_: **[BoxTypes](Finance.Vat.BoxTypes.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### DealType

Deal Type for the box. `Required` `Filter(multi eq)`

_Type_: **[DealTypes](Finance.Vat.DealTypes.md)**  
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

[!list limit=1000 erp.entity=Finance.Vat.BoxTypeDealTypes erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Vat.BoxTypeDealTypes erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Vat_BoxTypeDealTypes?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Vat_BoxTypeDealTypes?$top=10>

