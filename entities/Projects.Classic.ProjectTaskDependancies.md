---
uid: Projects.Classic.ProjectTaskDependancies
---
# Projects.Classic.ProjectTaskDependancies Entity

**Namespace:** [Projects.Classic](Projects.Classic.md)  

Represents dependancy between project tasks. Entity: Prj_Project_Task_Dependancies

## Default Visualization
Default Display Text Format:  
_{ProjectTask.TaskName}_  
Default Search Members:  
_ProjectTask.TaskName_  
Name Data Member:  
_ProjectTask.TaskName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Projects.Classic.ProjectTasks](Projects.Classic.ProjectTasks.md)  
Aggregate Root:  
[Projects.Classic.ProjectTasks](Projects.Classic.ProjectTasks.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DependancyType](Projects.Classic.ProjectTaskDependancies.md#dependancytype) | [DependancyType](Projects.Classic.ProjectTaskDependancies.md#dependancytype) | FS=Finish-to-Start;SS=Start-to-Start;FF=Finish-to-Finish;SF=Start-to-Finish;SY=Sync (all types in the same time). `Required` `Default("FS")` 
| [DisplayText](Projects.Classic.ProjectTaskDependancies.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Projects.Classic.ProjectTaskDependancies.md#id) | guid |  
| [ObjectVersion](Projects.Classic.ProjectTaskDependancies.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [DependsOnTask](Projects.Classic.ProjectTaskDependancies.md#dependsontask) | [ProjectTasks](Projects.Classic.ProjectTasks.md) | The task on which Project_Task depends. `Required` `Filter(multi eq)` |
| [ProjectTask](Projects.Classic.ProjectTaskDependancies.md#projecttask) | [ProjectTasks](Projects.Classic.ProjectTasks.md) | The task which depends on another task. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### DependancyType

FS=Finish-to-Start;SS=Start-to-Start;FF=Finish-to-Finish;SF=Start-to-Finish;SY=Sync (all types in the same time). `Required` `Default("FS")`

_Type_: **[DependancyType](Projects.Classic.ProjectTaskDependancies.md#dependancytype)**  
_Category_: **System**  
Allowed values for the `DependancyType`(Projects.Classic.ProjectTaskDependancies.md#dependancytype) data attribute  
_Allowed Values (Projects.Classic.ProjectTaskDependanciesRepository.DependancyType Enum Members)_  

| Value | Description |
| ---- | --- |
| FinishToStart | FinishToStart value. Stored as 'FS'. <br /> _Database Value:_ 'FS' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'FinishToStart' |
| StartToStart | StartToStart value. Stored as 'SS'. <br /> _Database Value:_ 'SS' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'StartToStart' |
| FinishToFinish | FinishToFinish value. Stored as 'FF'. <br /> _Database Value:_ 'FF' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'FinishToFinish' |
| StartToFinish | StartToFinish value. Stored as 'SF'. <br /> _Database Value:_ 'SF' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'StartToFinish' |
| SyncAllTypesInTheSameTime | SyncAllTypesInTheSameTime value. Stored as 'SY'. <br /> _Database Value:_ 'SY' <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'SyncAllTypesInTheSameTime' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **FinishToStart**  
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


## Reference Details

### DependsOnTask

The task on which Project_Task depends. `Required` `Filter(multi eq)`

_Type_: **[ProjectTasks](Projects.Classic.ProjectTasks.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ProjectTask

The task which depends on another task. `Required` `Filter(multi eq)` `Owner`

_Type_: **[ProjectTasks](Projects.Classic.ProjectTasks.md)**  
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

[!list limit=1000 erp.entity=Projects.Classic.ProjectTaskDependancies erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Projects.Classic.ProjectTaskDependancies erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Projects_Classic_ProjectTaskDependancies?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Projects_Classic_ProjectTaskDependancies?$top=10>

