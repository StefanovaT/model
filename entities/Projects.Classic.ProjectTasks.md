---
uid: Projects.Classic.ProjectTasks
---
# Projects.Classic.ProjectTasks Entity

**Namespace:** [Projects.Classic](Projects.Classic.md)  

Represents one task of a project. Entity: Prj_Project_Tasks

## Default Visualization
Default Display Text Format:  
_{TaskName}_  
Default Search Members:  
_TaskName_  
Name Data Member:  
_TaskName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Projects.Classic.ProjectTasks](Projects.Classic.ProjectTasks.md)  
  * [Projects.Classic.ProjectTaskDependancies](Projects.Classic.ProjectTaskDependancies.md)  
  * [Projects.Classic.ProjectTaskMaterials](Projects.Classic.ProjectTaskMaterials.md)  
  * [Projects.Classic.ProjectTaskParticipants](Projects.Classic.ProjectTaskParticipants.md)  
  * [Projects.Classic.ProjectTaskResources](Projects.Classic.ProjectTaskResources.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [BudgetLaborAmount](Projects.Classic.ProjectTasks.md#budgetlaboramount) | [Amount (12, 2)](../data-types.md#amount) __nullable__ | Budgeted amount for the labor for the task in the currency of the project. The material is calculated separately. null means that budgeting for the item is not calculated. `Currency: Project.BudgetingCurrency` 
| [DisplayText](Projects.Classic.ProjectTasks.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [FinishDateTime](Projects.Classic.ProjectTasks.md#finishdatetime) | datetime | The date and time when the task is planned to finish. `Required` `Default(Now)` `Filter(eq;ge;le)` 
| [Id](Projects.Classic.ProjectTasks.md#id) | guid |  
| [Notes](Projects.Classic.ProjectTasks.md#notes) | string (max) __nullable__ | Notes for this ProjectTask. 
| [ObjectVersion](Projects.Classic.ProjectTasks.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [PlannedDurationHours](Projects.Classic.ProjectTasks.md#planneddurationhours) | decimal (8, 2) | Planned duration of the task in hours. The hours are allocated in the time interval between Start Date Time and Finish Date Time. `Required` `Default(0)` 
| [ProjectTaskNo](Projects.Classic.ProjectTasks.md#projecttaskno) | int32 | Consecutive task number, unique within the project. `Required` 
| [StartDateTime](Projects.Classic.ProjectTasks.md#startdatetime) | datetime | The date and time when the task is planned to start. `Required` `Default(Now)` `Filter(eq;ge;le)` 
| [TaskName](Projects.Classic.ProjectTasks.md#taskname) | string (254) | The short name of the task. It is best practice to contain the target of the task. `Required` `Filter(multi eq;like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Activity](Projects.Classic.ProjectTasks.md#activity) | [Activities](General.Activities.Activities.md) (nullable) | The Id of the Cm_Activity created for this task. null means that activity is still not created. `Filter(multi eq)` |
| [Project](Projects.Classic.ProjectTasks.md#project) | [Projects](Projects.Classic.Projects.md) | The project, to which this task belongs. `Required` `Filter(multi eq)` |
| [ProjectWorkElement](Projects.Classic.ProjectTasks.md#projectworkelement) | [ProjectWorkElements](Projects.Classic.ProjectWorkElements.md) | The work element under which the task is filed. `Required` `Filter(multi eq)` |
| [Resource](Projects.Classic.ProjectTasks.md#resource) | [Resources](Projects.Classic.Resources.md) (nullable) | The resource, which is required for the task. null means - do not plan any resource. `Filter(multi eq)` |
| [ResponsibleParty](Projects.Classic.ProjectTasks.md#responsibleparty) | [Parties](General.Contacts.Parties.md) (nullable) | The responsible party. Usually a person and usually one of the project participants. null means that responsible is not yet determined. `Filter(multi eq)` |
| [TaskType](Projects.Classic.ProjectTasks.md#tasktype) | [TaskTypes](Projects.Classic.TaskTypes.md) | The type of the task. Determines the work type of the tasks, default billing rules, etc. `Required` `Filter(multi eq)` |
| [WorkType](Projects.Classic.ProjectTasks.md#worktype) | [TypeWorkTypes](Projects.Classic.TypeWorkTypes.md) (nullable) | Type of work to be done. null means that type of work is undetermined yet. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Dependancies | [ProjectTaskDependancies](Projects.Classic.ProjectTaskDependancies.md) | List of `ProjectTaskDependancy`(Projects.Classic.ProjectTaskDependancies.md) child objects, based on the `Projects.Classic.ProjectTaskDependancy.ProjectTask`(Projects.Classic.ProjectTaskDependancies.md#projecttask) back reference 
| Materials | [ProjectTaskMaterials](Projects.Classic.ProjectTaskMaterials.md) | List of `ProjectTaskMaterial`(Projects.Classic.ProjectTaskMaterials.md) child objects, based on the `Projects.Classic.ProjectTaskMaterial.ProjectTask`(Projects.Classic.ProjectTaskMaterials.md#projecttask) back reference 
| Participants | [ProjectTaskParticipants](Projects.Classic.ProjectTaskParticipants.md) | List of `ProjectTaskParticipant`(Projects.Classic.ProjectTaskParticipants.md) child objects, based on the `Projects.Classic.ProjectTaskParticipant.ProjectTask`(Projects.Classic.ProjectTaskParticipants.md#projecttask) back reference 
| Resources | [ProjectTaskResources](Projects.Classic.ProjectTaskResources.md) | List of `ProjectTaskResource`(Projects.Classic.ProjectTaskResources.md) child objects, based on the `Projects.Classic.ProjectTaskResource.ProjectTask`(Projects.Classic.ProjectTaskResources.md#projecttask) back reference 


## Attribute Details

### BudgetLaborAmount

Budgeted amount for the labor for the task in the currency of the project. The material is calculated separately. null means that budgeting for the item is not calculated. `Currency: Project.BudgetingCurrency`

_Type_: **[Amount (12, 2)](../data-types.md#amount) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **CannotBeShown**  

_Front-End Recalc Expressions:_  
`IIF( ( ( obj.PlannedDurationHours != 0) AndAlso ( obj.WorkType != null)), obj.CalculateBudgetLaborAmount( ), new Amount( 0, obj.Project.BudgetingCurrency))`
### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### FinishDateTime

The date and time when the task is planned to finish. `Required` `Default(Now)` `Filter(eq;ge;le)`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDateTime**  
_Show in UI_: **ShownByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### Notes

Notes for this ProjectTask.

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

### PlannedDurationHours

Planned duration of the task in hours. The hours are allocated in the time interval between Start Date Time and Finish Date Time. `Required` `Default(0)`

_Type_: **decimal (8, 2)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### ProjectTaskNo

Consecutive task number, unique within the project. `Required`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### StartDateTime

The date and time when the task is planned to start. `Required` `Default(Now)` `Filter(eq;ge;le)`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDateTime**  
_Show in UI_: **ShownByDefault**  

### TaskName

The short name of the task. It is best practice to contain the target of the task. `Required` `Filter(multi eq;like)`

_Type_: **string (254)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like, EqualsIn**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### Activity

The Id of the Cm_Activity created for this task. null means that activity is still not created. `Filter(multi eq)`

_Type_: **[Activities](General.Activities.Activities.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **CannotBeShown**  

### Project

The project, to which this task belongs. `Required` `Filter(multi eq)`

_Type_: **[Projects](Projects.Classic.Projects.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ProjectWorkElement

The work element under which the task is filed. `Required` `Filter(multi eq)`

_Type_: **[ProjectWorkElements](Projects.Classic.ProjectWorkElements.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Resource

The resource, which is required for the task. null means - do not plan any resource. `Filter(multi eq)`

_Type_: **[Resources](Projects.Classic.Resources.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **CannotBeShown**  

### ResponsibleParty

The responsible party. Usually a person and usually one of the project participants. null means that responsible is not yet determined. `Filter(multi eq)`

_Type_: **[Parties](General.Contacts.Parties.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### TaskType

The type of the task. Determines the work type of the tasks, default billing rules, etc. `Required` `Filter(multi eq)`

_Type_: **[TaskTypes](Projects.Classic.TaskTypes.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### WorkType

Type of work to be done. null means that type of work is undetermined yet. `Filter(multi eq)`

_Type_: **[TypeWorkTypes](Projects.Classic.TypeWorkTypes.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **CannotBeShown**  


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

[!list limit=1000 erp.entity=Projects.Classic.ProjectTasks erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Projects.Classic.ProjectTasks erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Projects_Classic_ProjectTasks?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Projects_Classic_ProjectTasks?$top=10>

