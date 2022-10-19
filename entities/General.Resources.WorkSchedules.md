---
uid: General.Resources.WorkSchedules
---
# General.Resources.WorkSchedules Entity

**Namespace:** [General.Resources](General.Resources.md)  

Represents the different working schedules, used by the employees and resources. Entity: Gen_Work_Schedules

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  
Name Data Member:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [General.Resources.WorkSchedules](General.Resources.WorkSchedules.md)  
  * [General.Resources.WorkScheduleWorkingTime](General.Resources.WorkScheduleWorkingTime.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](General.Resources.WorkSchedules.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](General.Resources.WorkSchedules.md#id) | guid |  
| [Name](General.Resources.WorkSchedules.md#name) | string (64) | The name of this WorkSchedule. `Required` `Filter(like)` 
| [NumberOfDays](General.Resources.WorkSchedules.md#numberofdays) | int16 __nullable__ | Number of days in a recurring period. Valid only when Recurrence_Type=D. 
| [ObjectVersion](General.Resources.WorkSchedules.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [RecurrenceType](General.Resources.WorkSchedules.md#recurrencetype) | [RecurrenceType](General.Resources.WorkSchedules.md#recurrencetype) | D=recurring each X days; W=recurring each week; M=recurring each month. `Required` `Filter(multi eq)` 

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| WorkingTime | [WorkScheduleWorkingTime](General.Resources.WorkScheduleWorkingTime.md) | List of `WorkScheduleWorkingTime`(General.Resources.WorkScheduleWorkingTime.md) child objects, based on the `General.Resources.WorkScheduleWorkingTime.WorkSchedule`(General.Resources.WorkScheduleWorkingTime.md#workschedule) back reference 


## Attribute Details

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

### Name

The name of this WorkSchedule. `Required` `Filter(like)`

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### NumberOfDays

Number of days in a recurring period. Valid only when Recurrence_Type=D.

_Type_: **int16 __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### RecurrenceType

D=recurring each X days; W=recurring each week; M=recurring each month. `Required` `Filter(multi eq)`

_Type_: **[RecurrenceType](General.Resources.WorkSchedules.md#recurrencetype)**  
_Category_: **System**  
Allowed values for the `RecurrenceType`(General.Resources.WorkSchedules.md#recurrencetype) data attribute  
_Allowed Values (General.Resources.WorkSchedulesRepository.RecurrenceType Enum Members)_  

| Value | Description |
| ---- | --- |
| RecurringEachXDays | RecurringEachXDays value. Stored as 'D'. <br /> _Database Value:_ 'D' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'RecurringEachXDays' |
| RecurringEachMonth | RecurringEachMonth value. Stored as 'M'. <br /> _Database Value:_ 'M' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'RecurringEachMonth' |
| RecurringEachWeek | RecurringEachWeek value. Stored as 'W'. <br /> _Database Value:_ 'W' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'RecurringEachWeek' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  


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

Creates a notification a sends a real time event to the user.  
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

[!list limit=1000 erp.entity=General.Resources.WorkSchedules erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Resources.WorkSchedules erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Resources_WorkSchedules?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Resources_WorkSchedules?$top=10>

