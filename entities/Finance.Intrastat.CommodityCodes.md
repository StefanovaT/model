---
uid: Finance.Intrastat.CommodityCodes
---
# Finance.Intrastat.CommodityCodes Entity

**Namespace:** [Finance.Intrastat](Finance.Intrastat.md)  

Contains the approved commodity codes for each period from The Combined Nomenclature used within the European Union countries. They are used for reporting Intrastat and Excise. Entity: Its_Commodity_Codes

## Default Visualization
Default Display Text Format:  
_{CommodityCodeField}_  
Default Search Members:  
_CommodityCodeField_  
Category:  _Settings_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Finance.Intrastat.CommodityCodes](Finance.Intrastat.CommodityCodes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [CommodityCodeField](Finance.Intrastat.CommodityCodes.md#commoditycodefield) | string (8) | Product code from the Intrastat Combined nomenclature. `Required` `Filter(eq;like)` `ORD` 
| [Description](Finance.Intrastat.CommodityCodes.md#description) | [MultilanguageString (4000)](../data-types.md#multilanguagestring) | Description of the product code from the Intrastat Combined nomenclature. `Required` `Filter(like)` 
| [DisplayText](Finance.Intrastat.CommodityCodes.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Finance.Intrastat.CommodityCodes.md#id) | guid |  
| [ObjectVersion](Finance.Intrastat.CommodityCodes.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [SupplementaryUnit](Finance.Intrastat.CommodityCodes.md#supplementaryunit) | string (16) | If not null, the related product should have additional measurement unit with the same code as specified in this field. The additional unit will be used for the purposes of the Intrastat declarations. `Required` 
| [ValidFrom](Finance.Intrastat.CommodityCodes.md#validfrom) | date __nullable__ | The starting date of validity of this code. `Filter(ge;le)` 
| [ValidTo](Finance.Intrastat.CommodityCodes.md#validto) | date __nullable__ | The ending date of validity of this code. `Filter(ge;le)` 


## Attribute Details

### CommodityCodeField

Product code from the Intrastat Combined nomenclature. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (8)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **8**  
_Show in UI_: **ShownByDefault**  

### Description

Description of the product code from the Intrastat Combined nomenclature. `Required` `Filter(like)`

_Type_: **[MultilanguageString (4000)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **Like**  
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

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### SupplementaryUnit

If not null, the related product should have additional measurement unit with the same code as specified in this field. The additional unit will be used for the purposes of the Intrastat declarations. `Required`

_Type_: **string (16)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **16**  
_Show in UI_: **ShownByDefault**  

### ValidFrom

The starting date of validity of this code. `Filter(ge;le)`

_Type_: **date __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ValidTo

The ending date of validity of this code. `Filter(ge;le)`

_Type_: **date __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
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

[!list limit=1000 erp.entity=Finance.Intrastat.CommodityCodes erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Intrastat.CommodityCodes erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Intrastat_CommodityCodes?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Intrastat_CommodityCodes?$top=10>

