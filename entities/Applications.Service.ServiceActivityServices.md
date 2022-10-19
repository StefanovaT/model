---
uid: Applications.Service.ServiceActivityServices
---
# Applications.Service.ServiceActivityServices Entity

**Namespace:** [Applications.Service](Applications.Service.md)  

Contains the services, which were actually performed during the service activity (repair). Entity: Srv_Service_Activity_Services

## Default Visualization
Default Display Text Format:  
_{LineNo}. {ServiceActivity.DocumentNo} {Service}_  
Default Search Members:  
_ServiceActivity.DocumentNo_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Applications.Service.ServiceActivities](Applications.Service.ServiceActivities.md)  
Aggregate Root:  
[Applications.Service.ServiceActivities](Applications.Service.ServiceActivities.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [CoveredByGuarantee](Applications.Service.ServiceActivityServices.md#coveredbyguarantee) | boolean | True when the performed service is covered by the guarantee. `Required` `Default(false)` 
| [DisplayText](Applications.Service.ServiceActivityServices.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Applications.Service.ServiceActivityServices.md#id) | guid |  
| [LineNo](Applications.Service.ServiceActivityServices.md#lineno) | int32 | Consecutive line number, unique within the document. Usually is increasing in steps of 10, like in 10, 20, 30, etc. `Required` 
| [Notes](Applications.Service.ServiceActivityServices.md#notes) | string (254) __nullable__ | Short notes for the service. 
| [ObjectVersion](Applications.Service.ServiceActivityServices.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [Quantity](Applications.Service.ServiceActivityServices.md#quantity) | [Quantity (9, 2)](../data-types.md#quantity) | The quantity of the service in the measurement unit of the service. `Unit: Service.MeasurementUnit` `Required` `Default(1)` 
| [ServiceName](Applications.Service.ServiceActivityServices.md#servicename) | string (254) | Description of the conducted service. The description may vary (contain additional information) from the standart name of the service. `Required` `Filter(like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Document](Applications.Service.ServiceActivityServices.md#document) | [ServiceActivities](Applications.Service.ServiceActivities.md) | The <see cref="ServiceActivity"/> to which this ServiceActivityService belongs. `Required` `Filter(multi eq)` |
| [PerformedByPerson](Applications.Service.ServiceActivityServices.md#performedbyperson) | [Persons](General.Contacts.Persons.md) (nullable) | The id of the person from the enterprise company that actually performed the work. `Filter(multi eq)` |
| [Service](Applications.Service.ServiceActivityServices.md#service) | [Services](Applications.Service.Services.md) | The type of service that is conducted. `Required` `Filter(multi eq)` |
| [ServiceActivity](Applications.Service.ServiceActivityServices.md#serviceactivity) | [ServiceActivities](Applications.Service.ServiceActivities.md) | The <see cref="ServiceActivity"/> to which this ServiceActivityService belongs. `Required` `Filter(multi eq)` `Owner` |
| [ServiceObject](Applications.Service.ServiceActivityServices.md#serviceobject) | [ServiceObjects](Applications.Service.ServiceObjects.md) (nullable) | The service object that was serviced. null means that it is unknown or N/A. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| ServiceActivity<br />AgreedServices | [ServiceActivityAgreedServices](Applications.Service.ServiceActivityAgreedServices.md) | List of `ServiceActivity<br />AgreedService`(Applications.Service.ServiceActivity<br />AgreedServices.md) child objects, based on the `Applications.Service.ServiceActivity<br />AgreedService.ServiceActivityService`(Applications.Service.ServiceActivity<br />AgreedServices.md#serviceactivityservice) back reference 


## Attribute Details

### CoveredByGuarantee

True when the performed service is covered by the guarantee. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

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

### LineNo

Consecutive line number, unique within the document. Usually is increasing in steps of 10, like in 10, 20, 30, etc. `Required`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.ServiceActivity.Services.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.ServiceActivity.Services.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### Notes

Short notes for the service.

_Type_: **string (254) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### Quantity

The quantity of the service in the measurement unit of the service. `Unit: Service.MeasurementUnit` `Required` `Default(1)`

_Type_: **[Quantity (9, 2)](../data-types.md#quantity)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

### ServiceName

Description of the conducted service. The description may vary (contain additional information) from the standart name of the service. `Required` `Filter(like)`

_Type_: **string (254)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

_Front-End Recalc Expressions:_  
`obj.Service.Name`

## Reference Details

### Document

The <see cref="ServiceActivity"/> to which this ServiceActivityService belongs. `Required` `Filter(multi eq)`

_Type_: **[ServiceActivities](Applications.Service.ServiceActivities.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  

### PerformedByPerson

The id of the person from the enterprise company that actually performed the work. `Filter(multi eq)`

_Type_: **[Persons](General.Contacts.Persons.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  

### Service

The type of service that is conducted. `Required` `Filter(multi eq)`

_Type_: **[Services](Applications.Service.Services.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  

### ServiceActivity

The <see cref="ServiceActivity"/> to which this ServiceActivityService belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[ServiceActivities](Applications.Service.ServiceActivities.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### ServiceObject

The service object that was serviced. null means that it is unknown or N/A. `Filter(multi eq)`

_Type_: **[ServiceObjects](Applications.Service.ServiceObjects.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.ServiceActivity.DefaultServiceObject`

_Front-End Recalc Expressions:_  
`obj.ServiceActivity.DefaultServiceObject`

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

[!list limit=1000 erp.entity=Applications.Service.ServiceActivityServices erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Service.ServiceActivityServices erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Service_ServiceActivityServices?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Service_ServiceActivityServices?$top=10>

