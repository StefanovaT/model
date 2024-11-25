---
uid: Finance.Excise.ExciseStampLots
---
# Finance.Excise.ExciseStampLots Entity

**Namespace:** [Finance.Excise](Finance.Excise.md)  

Sequence of excise stamps with same production batch and type, received with one delivery. Entity: Exc_Excise_Stamp_Lots (Introduced in version 22.1.6.13)

## Default Visualization
Default Display Text Format:  
_{BatchNumber} {StartNumber}_  
Default Search Members:  
_BatchNumber_  
Code Data Member:  
_BatchNumber_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Finance.Excise.ExciseStampLots](Finance.Excise.ExciseStampLots.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [BatchNumber](Finance.Excise.ExciseStampLots.md#batchnumber) | string (30) | Production batch of the Excise Stamps. `Required` `Filter(multi eq;like)` `ORD` 
| [DisplayText](Finance.Excise.ExciseStampLots.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [EndNumber](Finance.Excise.ExciseStampLots.md#endnumber) | string (30) | End number of the lot. `Required` 
| [Id](Finance.Excise.ExciseStampLots.md#id) | guid |  
| [IsActive](Finance.Excise.ExciseStampLots.md#isactive) | boolean | Is Active. `Required` `Default(true)` `Filter(eq)` 
| [ObjectVersion](Finance.Excise.ExciseStampLots.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [Prefix](Finance.Excise.ExciseStampLots.md#prefix) | string (30) __nullable__ | Specifies the prefix that is used in forming the value of the "BatchNumber" field. `Filter(eq;like)` `Introduced in version 24.1.2.1` 
| [PurchaseLotNumber](Finance.Excise.ExciseStampLots.md#purchaselotnumber) | string (30) | Type and number of the document with which the excise stamps were received from the customs administration. `Required` `Filter(eq;like)` 
| [Quantity](Finance.Excise.ExciseStampLots.md#quantity) | int32 | Number of excise stamps in the lot. `Required` `Default(0)` 
| [StartNumber](Finance.Excise.ExciseStampLots.md#startnumber) | string (30) | Start number of the lot. `Required` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ExciseProductType](Finance.Excise.ExciseStampLots.md#exciseproducttype) | [ExciseProductTypes](Finance.Excise.ExciseProductTypes.md) (nullable) | Specifies the Excise Product Type of the Excise Stamps in the lot. `Filter(multi eq)` `Introduced in version 22.1.6.53` |


## Attribute Details

### BatchNumber

Production batch of the Excise Stamps. `Required` `Filter(multi eq;like)` `ORD`

_Type_: **string (30)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like, EqualsIn**  
_Supports Order By_: **True**  
_Maximum Length_: **30**  
_Show in UI_: **ShownByDefault**  

_Front-End Recalc Expressions:_  
`IIF( IsNullOrEmpty( obj.Prefix), Concat( obj.StartNumber, "-", obj.Quantity.ToString( )), Concat( new [] {obj.Prefix, "-", obj.StartNumber, "-", obj.Quantity.ToString( )}))`
### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### EndNumber

End number of the lot. `Required`

_Type_: **string (30)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **30**  
_Show in UI_: **ShownByDefault**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.Quantity > 0), obj.StartNumber, null).AddToNumberInString( Convert( ( obj.Quantity - 1), BigInteger), null)`
### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### IsActive

Is Active. `Required` `Default(true)` `Filter(eq)`

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

### Prefix

Specifies the prefix that is used in forming the value of the "BatchNumber" field. `Filter(eq;like)` `Introduced in version 24.1.2.1`

_Type_: **string (30) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **30**  
_Show in UI_: **ShownByDefault**  

### PurchaseLotNumber

Type and number of the document with which the excise stamps were received from the customs administration. `Required` `Filter(eq;like)`

_Type_: **string (30)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **30**  
_Show in UI_: **ShownByDefault**  

### Quantity

Number of excise stamps in the lot. `Required` `Default(0)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### StartNumber

Start number of the lot. `Required`

_Type_: **string (30)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **30**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### ExciseProductType

Specifies the Excise Product Type of the Excise Stamps in the lot. `Filter(multi eq)` `Introduced in version 22.1.6.53`

_Type_: **[ExciseProductTypes](Finance.Excise.ExciseProductTypes.md) (nullable)**  
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

[!list limit=1000 erp.entity=Finance.Excise.ExciseStampLots erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Excise.ExciseStampLots erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Excise_ExciseStampLots?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Excise_ExciseStampLots?$top=10>

