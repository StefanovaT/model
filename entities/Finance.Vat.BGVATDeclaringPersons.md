---
uid: Finance.Vat.BGVATDeclaringPersons
---
# Finance.Vat.BGVATDeclaringPersons Entity

**Namespace:** [Finance.Vat](Finance.Vat.md)  

National data: Contains the persons, which are authorized to issue and sign VAT declarations. Entity: Nat_BG_VAT_Declaring_Persons

## Default Visualization
Default Display Text Format:  
_{EnterpriseCompany.Company.PartyName:T}_  
Default Search Members:  
_EnterpriseCompany.Company.PartyName_  
Name Data Member:  
_EnterpriseCompany.Company.PartyName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[General.EnterpriseCompanies](General.EnterpriseCompanies.md)  
Aggregate Root:  
[General.EnterpriseCompanies](General.EnterpriseCompanies.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DeclarerType](Finance.Vat.BGVATDeclaringPersons.md#declarertype) | [DeclarerType](Finance.Vat.BGVATDeclaringPersons.md#declarertype) | Type of the declaring person. A=Attorney, R=Representative. `Required` `Filter(eq)` 
| [DeclaringPersonAddress](Finance.Vat.BGVATDeclaringPersons.md#declaringpersonaddress) | string (150) | Address for correspondence of the declaring person. `Required` 
| [DeclaringPersonCity](Finance.Vat.BGVATDeclaringPersons.md#declaringpersoncity) | string (50) | City from the address for correspondence of the declaring person. `Required` 
| [DeclaringPersonPosition](Finance.Vat.BGVATDeclaringPersons.md#declaringpersonposition) | string (50) __nullable__ | Position of the declaring person in the enterprise company. 
| [DeclaringPersonPostcode](Finance.Vat.BGVATDeclaringPersons.md#declaringpersonpostcode) | string (4) | Postcode from the address for correspondence of the declaring person. `Required` 
| [DisplayText](Finance.Vat.BGVATDeclaringPersons.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Finance.Vat.BGVATDeclaringPersons.md#id) | guid |  
| [IsDefault](Finance.Vat.BGVATDeclaringPersons.md#isdefault) | boolean | True if this is the default person, which issues VAT declarations for this Enterprise Company. `Required` `Default(true)` 
| [ObjectVersion](Finance.Vat.BGVATDeclaringPersons.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [EnterpriseCompany](Finance.Vat.BGVATDeclaringPersons.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) | The enterprise company for which the person is presenting the declaration. `Required` `Filter(multi eq)` `Owner` |
| [Person](Finance.Vat.BGVATDeclaringPersons.md#person) | [Persons](General.Contacts.Persons.md) | The person that is presenting the declaration. `Required` `Filter(multi eq)` |


## Attribute Details

### DeclarerType

Type of the declaring person. A=Attorney, R=Representative. `Required` `Filter(eq)`

_Type_: **[DeclarerType](Finance.Vat.BGVATDeclaringPersons.md#declarertype)**  
_Category_: **System**  
Allowed values for the `DeclarerType`(Finance.Vat.BGVATDeclaringPersons.md#declarertype) data attribute  
_Allowed Values (Finance.Vat.BGVATDeclaringPersonsRepository.DeclarerType Enum Members)_  

| Value | Description |
| ---- | --- |
| Attorney | Attorney value. Stored as 'A'. <br /> _Database Value:_ 'A' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Attorney' |
| Representative | Representative value. Stored as 'R'. <br /> _Database Value:_ 'R' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Representative' |

_Supported Filters_: **Equals**  
_Supports Order By_: **False**  

### DeclaringPersonAddress

Address for correspondence of the declaring person. `Required`

_Type_: **string (150)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **150**  

_Front-End Recalc Expressions:_  
`obj.Person.GetValidAddress( ).Name`
### DeclaringPersonCity

City from the address for correspondence of the declaring person. `Required`

_Type_: **string (50)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **50**  

### DeclaringPersonPosition

Position of the declaring person in the enterprise company.

_Type_: **string (50) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **50**  

### DeclaringPersonPostcode

Postcode from the address for correspondence of the declaring person. `Required`

_Type_: **string (4)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **4**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IsDefault

True if this is the default person, which issues VAT declarations for this Enterprise Company. `Required` `Default(true)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **True**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  


## Reference Details

### EnterpriseCompany

The enterprise company for which the person is presenting the declaration. `Required` `Filter(multi eq)` `Owner`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### Person

The person that is presenting the declaration. `Required` `Filter(multi eq)`

_Type_: **[Persons](General.Contacts.Persons.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  


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

[!list limit=1000 erp.entity=Finance.Vat.BGVATDeclaringPersons erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Vat.BGVATDeclaringPersons erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Vat_BGVATDeclaringPersons?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Vat_BGVATDeclaringPersons?$top=10>

