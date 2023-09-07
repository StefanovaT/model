---
uid: Projects.Agile.Cases
---
# Projects.Agile.Cases Entity

**Namespace:** [Projects.Agile](Projects.Agile.md)  

Case in a project. Used to track work progress. Entity: Apm_Cases (Introduced in version 24.1.1.86)

## Default Visualization
Default Display Text Format:  
_{Title}_  
Default Search Members:  
__  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Projects.Agile.Cases](Projects.Agile.Cases.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Description](Projects.Agile.Cases.md#description) | [MultilanguageString (max)](../data-types.md#multilanguagestring) __nullable__ | Description of the required work. `Filter(like)` 
| [DisplayText](Projects.Agile.Cases.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [DueDate](Projects.Agile.Cases.md#duedate) | date __nullable__ | Specified when the case has specific due date. 
| [DueTime](Projects.Agile.Cases.md#duetime) | time __nullable__ | Specified when the case has specific due time. 
| [EstimatedTimeHours](Projects.Agile.Cases.md#estimatedtimehours) | decimal (8, 2) __nullable__ | Estimation of the required work effort in hours. 
| [Id](Projects.Agile.Cases.md#id) | guid |  
| [ObjectVersion](Projects.Agile.Cases.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [Priority](Projects.Agile.Cases.md#priority) | byte | Priority of the case, on a scale from 1 (highest) to 7 (lowest). `Required` `Filter(eq)` 
| [SystemState](Projects.Agile.Cases.md#systemstate) | [SystemState](Projects.Agile.Cases.md#systemstate) | The base state of the case. `Required` `Default("1")` `Filter(eq)` 
| [Title](Projects.Agile.Cases.md#title) | [MultilanguageString (128)](../data-types.md#multilanguagestring) __nullable__ | Case short title. `Filter(like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [AssignedToUser](Projects.Agile.Cases.md#assignedtouser) | [Users](Systems.Security.Users.md) (nullable) | The internal user to which the case is assigned. `Filter(multi eq)` |
| [CaseCategory](Projects.Agile.Cases.md#casecategory) | [CaseCategories](Projects.Agile.CaseCategories.md) | The category of the case. This also determines the workflow for the case. `Required` `Filter(multi eq)` |
| [Parent](Projects.Agile.Cases.md#parent) | [Cases](Projects.Agile.Cases.md) (nullable) | Specified when this is a sub-case to another case. `Filter(multi eq)` |
| [Project](Projects.Agile.Cases.md#project) | [Projects](Projects.Agile.Projects.md) | The project to which the case is assigned. `Required` `Filter(multi eq)` |
| [ProjectArea](Projects.Agile.Cases.md#projectarea) | [ProjectAreas](Projects.Agile.ProjectAreas.md) (nullable) | The are to which the case is assigned. `Filter(multi eq)` |
| [ProjectMilestone](Projects.Agile.Cases.md#projectmilestone) | [ProjectMilestones](Projects.Agile.ProjectMilestones.md) (nullable) | Determines the milestone for which the case must be resolved. `Filter(multi eq)` |
| [SocialGroup](Projects.Agile.Cases.md#socialgroup) | [Groups](Communities.Social.Groups.md) (nullable) | Specified, when the case is assigned to a group of users. `Filter(multi eq)` |


## Attribute Details

### Description

Description of the required work. `Filter(like)`

_Type_: **[MultilanguageString (max)](../data-types.md#multilanguagestring) __nullable__**  
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

### DueDate

Specified when the case has specific due date.

_Type_: **date __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### DueTime

Specified when the case has specific due time.

_Type_: **time __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### EstimatedTimeHours

Estimation of the required work effort in hours.

_Type_: **decimal (8, 2) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

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

### Priority

Priority of the case, on a scale from 1 (highest) to 7 (lowest). `Required` `Filter(eq)`

_Type_: **byte**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### SystemState

The base state of the case. `Required` `Default("1")` `Filter(eq)`

_Type_: **[SystemState](Projects.Agile.Cases.md#systemstate)**  
_Category_: **System**  
Allowed values for the `SystemState`(Projects.Agile.Cases.md#systemstate) data attribute  
_Allowed Values (Projects.Agile.CasesRepository.SystemState Enum Members)_  

| Value | Description |
| ---- | --- |
| QUEUED | QUEUED value. Stored as '0'. <br /> _Database Value:_ '0' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'QUEUED' |
| ACTIVE | ACTIVE value. Stored as '1'. <br /> _Database Value:_ '1' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'ACTIVE' |
| WAITING | WAITING value. Stored as '2'. <br /> _Database Value:_ '2' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'WAITING' |
| RESOLVED | RESOLVED value. Stored as '3'. <br /> _Database Value:_ '3' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'RESOLVED' |
| CLOSED | CLOSED value. Stored as '4'. <br /> _Database Value:_ '4' <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'CLOSED' |

_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **ACTIVE**  
_Show in UI_: **ShownByDefault**  

### Title

Case short title. `Filter(like)`

_Type_: **[MultilanguageString (128)](../data-types.md#multilanguagestring) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### AssignedToUser

The internal user to which the case is assigned. `Filter(multi eq)`

_Type_: **[Users](Systems.Security.Users.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### CaseCategory

The category of the case. This also determines the workflow for the case. `Required` `Filter(multi eq)`

_Type_: **[CaseCategories](Projects.Agile.CaseCategories.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Parent

Specified when this is a sub-case to another case. `Filter(multi eq)`

_Type_: **[Cases](Projects.Agile.Cases.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Project

The project to which the case is assigned. `Required` `Filter(multi eq)`

_Type_: **[Projects](Projects.Agile.Projects.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ProjectArea

The are to which the case is assigned. `Filter(multi eq)`

_Type_: **[ProjectAreas](Projects.Agile.ProjectAreas.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ProjectMilestone

Determines the milestone for which the case must be resolved. `Filter(multi eq)`

_Type_: **[ProjectMilestones](Projects.Agile.ProjectMilestones.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### SocialGroup

Specified, when the case is assigned to a group of users. `Filter(multi eq)`

_Type_: **[Groups](Communities.Social.Groups.md) (nullable)**  
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

[!list limit=1000 erp.entity=Projects.Agile.Cases erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Projects.Agile.Cases erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Projects_Agile_Cases?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Projects_Agile_Cases?$top=10>

