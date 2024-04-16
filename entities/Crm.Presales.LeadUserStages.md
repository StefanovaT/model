---
uid: Crm.Presales.LeadUserStages
---
# Crm.Presales.LeadUserStages Entity

**Namespace:** [Crm.Presales](Crm.Presales.md)  

User-defined stages of the lead processing workflow. Entity: Crm_Lead_User_Stages (Introduced in version 21.1.3.85)

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Code; Name_  
Code Data Member:  
_Code_  
Name Data Member:  
_Name_  
Category:  _Settings_  
Show in UI:  _ShownByDefault_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Crm.Presales.LeadUserStages](Crm.Presales.LeadUserStages.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Code](Crm.Presales.LeadUserStages.md#code) | string (32) | The unique code of the LeadUserStage. `Required` `Filter(eq;like)` `ORD` 
| [Description](Crm.Presales.LeadUserStages.md#description) | string (max) __nullable__ | Description of the user stage. Displayed to the end-user upon stage selection. 
| [DisplayText](Crm.Presales.LeadUserStages.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Crm.Presales.LeadUserStages.md#id) | guid |  
| [IsActive](Crm.Presales.LeadUserStages.md#isactive) | boolean | Indicates whether the current Lead's User Stage is active. `Required` `Default(true)` `Filter(eq)` `Introduced in version 24.1.4.62` 
| [Name](Crm.Presales.LeadUserStages.md#name) | [MultilanguageString (254)](../data-types.md#multilanguagestring) | Multi-language name of the user stage. `Required` `Filter(like)` 
| [Notes](Crm.Presales.LeadUserStages.md#notes) | string (max) __nullable__ | Notes for this LeadUserStage. 
| [ObjectVersion](Crm.Presales.LeadUserStages.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [SystemStage](Crm.Presales.LeadUserStages.md#systemstage) | [SystemStage](Crm.Presales.LeadUserStages.md#systemstage) | The system stage, on which the user stage is based. System stages are New, Qualifying, Marketing Qualified Lead, Sales Qualified Lead, Closed. (NEW, QUA, MQL, SQL, CLO). `Required` `Filter(multi eq)` 


## Attribute Details

### Code

The unique code of the LeadUserStage. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (32)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **32**  
_Show in UI_: **ShownByDefault**  

### Description

Description of the user stage. Displayed to the end-user upon stage selection.

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
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

### IsActive

Indicates whether the current Lead's User Stage is active. `Required` `Default(true)` `Filter(eq)` `Introduced in version 24.1.4.62`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### Name

Multi-language name of the user stage. `Required` `Filter(like)`

_Type_: **[MultilanguageString (254)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Notes

Notes for this LeadUserStage.

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

### SystemStage

The system stage, on which the user stage is based. System stages are New, Qualifying, Marketing Qualified Lead, Sales Qualified Lead, Closed. (NEW, QUA, MQL, SQL, CLO). `Required` `Filter(multi eq)`

_Type_: **[SystemStage](Crm.Presales.LeadUserStages.md#systemstage)**  
_Category_: **System**  
Allowed values for the `SystemStage`(Crm.Presales.Leads.md#systemstage) data attribute  
_Allowed Values (Crm.Presales.LeadsRepository.SystemStage Enum Members)_  

| Value | Description |
| ---- | --- |
| New | New value. Stored as 'NEW'. <br /> _Database Value:_ 'NEW' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'New' |
| Qualifying | Qualifying value. Stored as 'QUA'. <br /> _Database Value:_ 'QUA' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Qualifying' |
| MarketingQualifiedLead | MarketingQualifiedLead value. Stored as 'MQL'. <br /> _Database Value:_ 'MQL' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'MarketingQualifiedLead' |
| SalesQualifiedLead | SalesQualifiedLead value. Stored as 'SQL'. <br /> _Database Value:_ 'SQL' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'SalesQualifiedLead' |
| Closed | Closed value. Stored as 'CLO'. <br /> _Database Value:_ 'CLO' <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'Closed' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
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

[!list limit=1000 erp.entity=Crm.Presales.LeadUserStages erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Presales.LeadUserStages erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Presales_LeadUserStages?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Presales_LeadUserStages?$top=10>

