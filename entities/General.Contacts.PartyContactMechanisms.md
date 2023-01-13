---
uid: General.Contacts.PartyContactMechanisms
---
# General.Contacts.PartyContactMechanisms Entity

**Namespace:** [General.Contacts](General.Contacts.md)  

Specifies the contact mechanisms, which are attached to the parties. Currently each contact mechanism is attached to strictly one party. Entity: Cm_Party_Contact_Mechanisms

## Default Visualization
Default Display Text Format:  
_{ContactMechanism}_  
Default Search Members:  
_Party.PartyName_  
Name Data Member:  
_Party.PartyName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[General.Contacts.Parties](General.Contacts.Parties.md)  
Aggregate Root:  
[General.Contacts.Parties](General.Contacts.Parties.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](General.Contacts.PartyContactMechanisms.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [FromDate](General.Contacts.PartyContactMechanisms.md#fromdate) | datetime __nullable__ | The first date when the contact mechanism was valid. null means unknown date. `Default(Today)` `Filter(eq;ge;le)` 
| [Id](General.Contacts.PartyContactMechanisms.md#id) | guid |  
| [IsActive](General.Contacts.PartyContactMechanisms.md#isactive) | boolean | True if the contact mechanism is currently active and can be used to contact the party. `Required` `Default(true)` `Filter(eq)` 
| [IsDefault](General.Contacts.PartyContactMechanisms.md#isdefault) | boolean | True - when this is the default contact mechanism for this party; false - otherwise. `Required` `Default(false)` `Filter(eq)` 
| [LineOrd](General.Contacts.PartyContactMechanisms.md#lineord) | int32 | Consecutive number of the contact information. The number is unique within the party. `Required` 
| [NonSolicitation](General.Contacts.PartyContactMechanisms.md#nonsolicitation) | boolean | If true then Don't use the mechanism for solicitation purposes. `Required` `Default(false)` `Filter(eq)` 
| [Notes](General.Contacts.PartyContactMechanisms.md#notes) | string (254) __nullable__ | Notes for this PartyContactMechanism. 
| [ObjectVersion](General.Contacts.PartyContactMechanisms.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [ThruDate](General.Contacts.PartyContactMechanisms.md#thrudate) | datetime __nullable__ | The last date on which the contact mechanism was valid for the party. null if the contact mechanism is still valid. `Filter(eq;ge;le)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ContactMechanism](General.Contacts.PartyContactMechanisms.md#contactmechanism) | [ContactMechanisms](General.Contacts.ContactMechanisms.md) | The contact mechanism of the party. `Required` `Filter(multi eq)` `FilterableReference` |
| [ContactMechanismPurpose](General.Contacts.PartyContactMechanisms.md#contactmechanismpurpose) | [ContactMechanismPurposes](General.Contacts.ContactMechanismPurposes.md) (nullable) | The purpose of this contact mechanism. Unique within the party. Can be used to seek for specific contact mechanisms. `Filter(multi eq)` `Introduced in version 18.2` |
| [Party](General.Contacts.PartyContactMechanisms.md#party) | [Parties](General.Contacts.Parties.md) | The party, having the contact mechanism. `Required` `Filter(multi eq)` `Owner` |
| [PersonalDataProcess](General.Contacts.PartyContactMechanisms.md#personaldataprocess) | [PersonalDataProcesses](Applications.PersonalData.PersonalDataProcesses.md) (nullable) | The personal data process, which is used to process the current data. Null when the data is not personal or when the process is unknown. `Filter(multi eq)` `Introduced in version 18.2` |


## Attribute Details

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### FromDate

The first date when the contact mechanism was valid. null means unknown date. `Default(Today)` `Filter(eq;ge;le)`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDate**  
_Show in UI_: **ShownByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### IsActive

True if the contact mechanism is currently active and can be used to contact the party. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### IsDefault

True - when this is the default contact mechanism for this party; false - otherwise. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### LineOrd

Consecutive number of the contact information. The number is unique within the party. `Required`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`( obj.Party.ContactMechanisms.Select( c => c.LineOrd).DefaultIfEmpty( 0).Max( ) + 1)`

_Front-End Recalc Expressions:_  
`( obj.Party.ContactMechanisms.Select( c => c.LineOrd).DefaultIfEmpty( 0).Max( ) + 1)`
### NonSolicitation

If true then Don't use the mechanism for solicitation purposes. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### Notes

Notes for this PartyContactMechanism.

_Type_: **string (254) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### ThruDate

The last date on which the contact mechanism was valid for the party. null if the contact mechanism is still valid. `Filter(eq;ge;le)`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### ContactMechanism

The contact mechanism of the party. `Required` `Filter(multi eq)` `FilterableReference`

_Type_: **[ContactMechanisms](General.Contacts.ContactMechanisms.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Show in UI_: **CannotBeShown**  

### ContactMechanismPurpose

The purpose of this contact mechanism. Unique within the party. Can be used to seek for specific contact mechanisms. `Filter(multi eq)` `Introduced in version 18.2`

_Type_: **[ContactMechanismPurposes](General.Contacts.ContactMechanismPurposes.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Party

The party, having the contact mechanism. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Parties](General.Contacts.Parties.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Show in UI_: **ShownByDefault**  

### PersonalDataProcess

The personal data process, which is used to process the current data. Null when the data is not personal or when the process is unknown. `Filter(multi eq)` `Introduced in version 18.2`

_Type_: **[PersonalDataProcesses](Applications.PersonalData.PersonalDataProcesses.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  


## API Methods

Methods that can be invoked in public APIs.

### GetAllowedCustomPropertyValues

Gets the allowed values for the specified custom property for this entity object.              If supported the result is ordered by property value. Some property value sources do not support ordering - in that case the result is not ordered.  
_Return Type_: **Collection Of [CustomPropertyValue](../data-types.md#general.custompropertyvalue)**  
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

Creates a notification and sends a real time event to the user.  
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
    The subject.  
    _Type_: string  


### CreateCopy

Duplicates the object and its child objects belonging to the same aggregate.              The duplicated objects are not saved to the data source but remain in the same transaction as the original object.  
_Return Type_: **EntityObject**  
_Declaring Type_: **EntityObject**  
_Domain API Request_: **POST**  


## Business Rules

[!list limit=1000 erp.entity=General.Contacts.PartyContactMechanisms erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Contacts.PartyContactMechanisms erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Contacts_PartyContactMechanisms?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Contacts_PartyContactMechanisms?$top=10>

