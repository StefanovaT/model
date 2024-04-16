---
uid: General.Contacts.Parties
---
# General.Contacts.Parties Entity

**Namespace:** [General.Contacts](General.Contacts.md)  

Contains base data for different kind of parties - companies, persons, departments, etc. Entity: Gen_Parties

## Default Visualization
Default Display Text Format:  
_{PartyName:T}_  
Default Search Members:  
_PartyCode; PartyName_  
Code Data Member:  
_PartyCode_  
Name Data Member:  
_PartyName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  
Object category attribute:  _PartyType_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [General.Contacts.Parties](General.Contacts.Parties.md)  
  * [Crm.Distributors](Crm.Distributors.md)  
  * [General.PartyApplicableLegislations](General.PartyApplicableLegislations.md)  
  * [General.PartyLocationNumbers](General.PartyLocationNumbers.md)  
  * [General.Contacts.PartyContactMechanisms](General.Contacts.PartyContactMechanisms.md)  
  * [General.Contacts.PartyBankAccounts](General.Contacts.PartyBankAccounts.md)  
  * [General.Contacts.PartyPictures](General.Contacts.PartyPictures.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](General.Contacts.Parties.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [GLN](General.Contacts.Parties.md#gln) | string (13) __nullable__ | Global Location Number used by EDI systems. `Filter(multi eq)` `ORD` 
| [IsActive](General.Contacts.Parties.md#isactive) | boolean | Specifies whether the current party is active in the system or not. `Required` `Default(true)` `Filter(eq)` 
| [ObjectVersion](General.Contacts.Parties.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [PartyCode](General.Contacts.Parties.md#partycode) | string (16) | The unique code of the party. `Required` `Filter(eq;like)` `ORD` `ReadOnly` 
| [PartyCreationTime](General.Contacts.Parties.md#partycreationtime) | datetime __nullable__ | Date and time when the Party was created. `Filter(ge;le)` `ReadOnly` 
| [PartyCreationUser](General.Contacts.Parties.md#partycreationuser) | string (64) __nullable__ | Login name of the user, who created the Party. `Filter(like)` `ReadOnly` 
| [PartyId](General.Contacts.Parties.md#partyid) | guid | Gets the Id of the party row, related to the domain object 
| [PartyName](General.Contacts.Parties.md#partyname) | [MultilanguageString (254)](../data-types.md#multilanguagestring) | The name of the party. `Required` `Filter(eq;like)` `ReadOnly` 
| [PartyNotes](General.Contacts.Parties.md#partynotes) | string (254) __nullable__ | Notes for this Party. 
| [PartyType](General.Contacts.Parties.md#partytype) | [PartyType](General.Contacts.Parties.md#partytype) | Type of party. Currently supported are P=Person, C=Company, S=Store, L=Company Location, V=Division. `Required` `Default("P")` `Filter(multi eq)` 
| [PartyUniqueNumber](General.Contacts.Parties.md#partyuniquenumber) | string (16) __nullable__ | Unique number of the party (National number for persons, Registration number for companies). `Filter(eq;like)` `ReadOnly` 
| [PartyUpdateTime](General.Contacts.Parties.md#partyupdatetime) | datetime __nullable__ | Date and time when the Party was last updated. `Filter(ge;le)` `ReadOnly` 
| [PartyUpdateUser](General.Contacts.Parties.md#partyupdateuser) | string (64) __nullable__ | Login name of the user, who last updated the Party. `Filter(like)` `ReadOnly` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [AdministrativeRegion](General.Contacts.Parties.md#administrativeregion) | [AdministrativeRegions](General.Geography.AdministrativeRegions.md) (nullable) | The administrative region in which the party is situated. `Filter(multi eq)` |
| [Area](General.Contacts.Parties.md#area) | [Areas](General.Geography.Areas.md) (nullable) | The area in which the party is situated. `Filter(multi eq)` |
| [DefaultProductCodingSystem](General.Contacts.Parties.md#defaultproductcodingsystem) | [CodingSystems](General.Products.CodingSystems.md) (nullable) | When not null, specifies coding system for products, which is required by the party. The coding system is used primarily for document printouts and document import/exports. `Filter(multi eq)` |
| [ParentParty](General.Contacts.Parties.md#parentparty) | [Parties](General.Contacts.Parties.md) (nullable) | Organizational unit (branch from the hierarchy of all parties) to which this party is referred to. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| ApplicableLegislations | [PartyApplicableLegislations](General.PartyApplicableLegislations.md) | List of `PartyApplicable<br />Legislation`(General.PartyApplicable<br />Legislations.md) child objects, based on the `General.PartyApplicableLegislation.Party`(General.PartyApplicable<br />Legislations.md#party) back reference 
| BankAccounts | [PartyBankAccounts](General.Contacts.PartyBankAccounts.md) | List of `PartyBankAccount`(General.Contacts.PartyBankAccounts.md) child objects, based on the `General.Contacts.PartyBankAccount.Party`(General.Contacts.PartyBankAccounts.md#party) back reference 
| ContactMechanisms | [PartyContactMechanisms](General.Contacts.PartyContactMechanisms.md) | List of `PartyContactMechanism`(General.Contacts.PartyContactMechanisms.md) child objects, based on the `General.Contacts.PartyContactMechanism.Party`(General.Contacts.PartyContactMechanisms.md#party) back reference 
| Distributors | [Distributors](Crm.Distributors.md) | List of `Distributor`(Crm.Distributors.md) child objects, based on the `Crm.Distributor.Party`(Crm.Distributors.md#party) back reference 
| LocationNumbers | [PartyLocationNumbers](General.PartyLocationNumbers.md) | List of `PartyLocationNumber`(General.PartyLocationNumbers.md) child objects, based on the `General.PartyLocationNumber.Party`(General.PartyLocationNumbers.md#party) back reference 
| Pictures | [PartyPictures](General.Contacts.PartyPictures.md) | List of `PartyPicture`(General.Contacts.PartyPictures.md) child objects, based on the `General.Contacts.PartyPicture.Party`(General.Contacts.PartyPictures.md#party) back reference 


## Attribute Details

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### GLN

Global Location Number used by EDI systems. `Filter(multi eq)` `ORD`

_Type_: **string (13) __nullable__**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **True**  
_Maximum Length_: **13**  
_Show in UI_: **ShownByDefault**  

### IsActive

Specifies whether the current party is active in the system or not. `Required` `Default(true)` `Filter(eq)`

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

### PartyCode

The unique code of the party. `Required` `Filter(eq;like)` `ORD` `ReadOnly`

_Type_: **string (16)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **16**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`obj.IncMax( o => o.PartyCode, null, "00000")`

### PartyCreationTime

Date and time when the Party was created. `Filter(ge;le)` `ReadOnly`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### PartyCreationUser

Login name of the user, who created the Party. `Filter(like)` `ReadOnly`

_Type_: **string (64) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
_Show in UI_: **HiddenByDefault**  

### PartyId

Gets the Id of the party row, related to the domain object

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### PartyName

The name of the party. `Required` `Filter(eq;like)` `ReadOnly`

_Type_: **[MultilanguageString (254)](../data-types.md#multilanguagestring)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### PartyNotes

Notes for this Party.

_Type_: **string (254) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
_Show in UI_: **ShownByDefault**  

### PartyType

Type of party. Currently supported are P=Person, C=Company, S=Store, L=Company Location, V=Division. `Required` `Default("P")` `Filter(multi eq)`

_Type_: **[PartyType](General.Contacts.Parties.md#partytype)**  
_Category_: **System**  
Allowed values for the PartyType data attribute  
_Allowed Values (General.Contacts.PartiesRepository.PartyType Enum Members)_  

| Value | Description |
| ---- | --- |
| Company | Company value. Stored as 'C'. <br /> _Database Value:_ 'C' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Company' |
| CompanyLocation | CompanyLocation value. Stored as 'L'. <br /> _Database Value:_ 'L' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'CompanyLocation' |
| Person | Person value. Stored as 'P'. <br /> _Database Value:_ 'P' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'Person' |
| Store | Store value. Stored as 'S'. <br /> _Database Value:_ 'S' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'Store' |
| CompanyDivision | CompanyDivision value. Stored as 'V'. <br /> _Database Value:_ 'V' <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'CompanyDivision' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **Person**  
_Show in UI_: **ShownByDefault**  

### PartyUniqueNumber

Unique number of the party (National number for persons, Registration number for companies). `Filter(eq;like)` `ReadOnly`

_Type_: **string (16) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **16**  
_Show in UI_: **ShownByDefault**  

### PartyUpdateTime

Date and time when the Party was last updated. `Filter(ge;le)` `ReadOnly`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### PartyUpdateUser

Login name of the user, who last updated the Party. `Filter(like)` `ReadOnly`

_Type_: **string (64) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
_Show in UI_: **HiddenByDefault**  


## Reference Details

### AdministrativeRegion

The administrative region in which the party is situated. `Filter(multi eq)`

_Type_: **[AdministrativeRegions](General.Geography.AdministrativeRegions.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Area

The area in which the party is situated. `Filter(multi eq)`

_Type_: **[Areas](General.Geography.Areas.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### DefaultProductCodingSystem

When not null, specifies coding system for products, which is required by the party. The coding system is used primarily for document printouts and document import/exports. `Filter(multi eq)`

_Type_: **[CodingSystems](General.Products.CodingSystems.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ParentParty

Organizational unit (branch from the hierarchy of all parties) to which this party is referred to. `Filter(multi eq)`

_Type_: **[Parties](General.Contacts.Parties.md) (nullable)**  
_Indexed_: **True**  
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

[!list limit=1000 erp.entity=General.Contacts.Parties erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Contacts.Parties erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Contacts_Parties?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Contacts_Parties?$top=10>

