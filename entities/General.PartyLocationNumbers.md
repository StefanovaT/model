---
uid: General.PartyLocationNumbers
---
# General.PartyLocationNumbers Entity

**Namespace:** [General](General.md)  

Location numbers for a party. Depending on the partner with which we are doing an exchange, our location number might be different. Entity: Gen_Party_Location_Numbers (Introduced in version 19.1)

## Default Visualization
Default Display Text Format:  
_{Party.PartyName:T}_  
Default Search Members:  
_LocationNumber; Party.PartyName_  
Code Data Member:  
_LocationNumber_  
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
| [DisplayText](General.PartyLocationNumbers.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](General.PartyLocationNumbers.md#id) | guid |  
| [LocationCodingSystem](General.PartyLocationNumbers.md#locationcodingsystem) | [LocationCodingSystem](General.PartyLocationNumbers.md#locationcodingsystem) | The coding system for which we are defining the location number. `Required` `Default("GLN")` `Filter(multi eq)` 
| [LocationNumber](General.PartyLocationNumbers.md#locationnumber) | string (16) | The location number of Party. `Required` `Filter(multi eq;like)` `ORD` 
| [ObjectVersion](General.PartyLocationNumbers.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [PartnerLocationNumber](General.PartyLocationNumbers.md#partnerlocationnumber) | string (16) __nullable__ | The location number of the partner party for which we define the main Party location number. The location number of the main Party might be different depending on the location number of the partner party. null means that the location number is not dependent on the partner location number. `Filter(multi eq)` 
| [Significance](General.PartyLocationNumbers.md#significance) | int32 | Order of significance of the location number within the main Party. If there are multiple location numbers, only the most significant is used. 0 is the least significant and higher numbers indicate higher significance. `Required` `Default(0)` `Filter(multi eq;ge;le)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [PartnerParty](General.PartyLocationNumbers.md#partnerparty) | [Parties](General.Contacts.Parties.md) (nullable) | The party with which we are doing exchange. Depending on the Partner Party, the main Party might have different location number. null means that the location number is not dependent on the Partner Party. `Filter(multi eq)` |
| [Party](General.PartyLocationNumbers.md#party) | [Parties](General.Contacts.Parties.md) | The party for which we are defining the location number. `Required` `Filter(multi eq)` `Owner` |


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

### LocationCodingSystem

The coding system for which we are defining the location number. `Required` `Default("GLN")` `Filter(multi eq)`

_Type_: **[LocationCodingSystem](General.PartyLocationNumbers.md#locationcodingsystem)**  
_Category_: **System**  
Allowed values for the `LocationCodingSystem`(General.PartyLocationNumbers.md#locationcodingsystem) data attribute  
_Allowed Values (General.PartyLocationNumbersRepository.LocationCodingSystem Enum Members)_  

| Value | Description |
| ---- | --- |
| GLN | GS1 Global Location Number (GLN). Stored as 'GLN'. <br /> _Database Value:_ 'GLN' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'GLN' |
| Internal | Internal coding system. Stored as 'INT'. <br /> _Database Value:_ 'INT' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Internal' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **GLN**  
_Show in UI_: **ShownByDefault**  

### LocationNumber

The location number of Party. `Required` `Filter(multi eq;like)` `ORD`

_Type_: **string (16)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like, EqualsIn**  
_Supports Order By_: **True**  
_Maximum Length_: **16**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### PartnerLocationNumber

The location number of the partner party for which we define the main Party location number. The location number of the main Party might be different depending on the location number of the partner party. null means that the location number is not dependent on the partner location number. `Filter(multi eq)`

_Type_: **string (16) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Maximum Length_: **16**  
_Show in UI_: **ShownByDefault**  

### Significance

Order of significance of the location number within the main Party. If there are multiple location numbers, only the most significant is used. 0 is the least significant and higher numbers indicate higher significance. `Required` `Default(0)` `Filter(multi eq;ge;le)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### PartnerParty

The party with which we are doing exchange. Depending on the Partner Party, the main Party might have different location number. null means that the location number is not dependent on the Partner Party. `Filter(multi eq)`

_Type_: **[Parties](General.Contacts.Parties.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Party

The party for which we are defining the location number. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Parties](General.Contacts.Parties.md)**  
_Indexed_: **True**  
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

[!list limit=1000 erp.entity=General.PartyLocationNumbers erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.PartyLocationNumbers erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_PartyLocationNumbers?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_PartyLocationNumbers?$top=10>

