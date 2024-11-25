---
uid: Crm.Pos.Terminals
---
# Crm.Pos.Terminals Entity

**Namespace:** [Crm.Pos](Crm.Pos.md)  

Represents a POS workplace for 1 person, with all the attached devices. (Not to be confused with Payment Terminal, which is specific POS device). Entity: Pos_Terminals (Introduced in version 19.1)

## Default Visualization
Default Display Text Format:  
_{PosTerminalName:T}_  
Default Search Members:  
_PosTerminalCode; PosTerminalName_  
Code Data Member:  
_PosTerminalCode_  
Name Data Member:  
_PosTerminalName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _2 - Track object changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Crm.Pos.Terminals](Crm.Pos.Terminals.md)  
  * [Crm.Pos.Devices](Crm.Pos.Devices.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Crm.Pos.Terminals.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Crm.Pos.Terminals.md#id) | guid |  
| [IsActive](Crm.Pos.Terminals.md#isactive) | boolean | Represents whether the POS terminal is active and can be chosen from drop-downs for new records. `Required` `Default(true)` `Filter(multi eq)` 
| [ObjectVersion](Crm.Pos.Terminals.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [PosTerminalCode](Crm.Pos.Terminals.md#posterminalcode) | string (16) | Unique (within the location) code of the POS terminal. `Required` `Filter(eq;like)` 
| [PosTerminalName](Crm.Pos.Terminals.md#posterminalname) | [MultilanguageString (254)](../data-types.md#multilanguagestring) | The multi-language name of the terminal, like "Cash 1", "Self-checkout 5", etc. `Required` `Filter(multi eq;like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [DefaultFiscalPrinter<br />PosDevice](Crm.Pos.Terminals.md#defaultfiscalprinterposdevice) | [Devices](Crm.Pos.Devices.md) (nullable) | The POS Fiscal Device which is set by default in documents when the POS Terminal is selected. `Filter(multi eq)` `Introduced in version 20.1` |
| [PosLocation](Crm.Pos.Terminals.md#poslocation) | [Locations](Crm.Pos.Locations.md) | The POS location, where the terminal is located. `Required` `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Devices | [Devices](Crm.Pos.Devices.md) | List of `Device`(Crm.Pos.Devices.md) child objects, based on the `Crm.Pos.Device.PosTerminal`(Crm.Pos.Devices.md#posterminal) back reference 


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

### IsActive

Represents whether the POS terminal is active and can be chosen from drop-downs for new records. `Required` `Default(true)` `Filter(multi eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
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

### PosTerminalCode

Unique (within the location) code of the POS terminal. `Required` `Filter(eq;like)`

_Type_: **string (16)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **16**  
_Show in UI_: **ShownByDefault**  

### PosTerminalName

The multi-language name of the terminal, like "Cash 1", "Self-checkout 5", etc. `Required` `Filter(multi eq;like)`

_Type_: **[MultilanguageString (254)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like, EqualsIn**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### DefaultFiscalPrinterPosDevice

The POS Fiscal Device which is set by default in documents when the POS Terminal is selected. `Filter(multi eq)` `Introduced in version 20.1`

_Type_: **[Devices](Crm.Pos.Devices.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### PosLocation

The POS location, where the terminal is located. `Required` `Filter(multi eq)`

_Type_: **[Locations](Crm.Pos.Locations.md)**  
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

[!list limit=1000 erp.entity=Crm.Pos.Terminals erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Pos.Terminals erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Pos_Terminals?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Pos_Terminals?$top=10>

