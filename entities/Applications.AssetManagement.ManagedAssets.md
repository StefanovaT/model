---
uid: Applications.AssetManagement.ManagedAssets
---
# Applications.AssetManagement.ManagedAssets Entity

**Namespace:** [Applications.AssetManagement](Applications.AssetManagement.md)  

Contains the managed assets. The management of assets include maintenance planning and execution, location assignments tracking, etc. Entity: Eam_Managed_Assets (Introduced in version 19.1)

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Code; Name_  
Code Data Member:  
_Code_  
Name Data Member:  
_Name_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  
Layout category attribute:  _ManagedAssetTypeId_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Applications.AssetManagement.ManagedAssets](Applications.AssetManagement.ManagedAssets.md)  
  * [Applications.AssetManagement.ManagedAssetLocations](Applications.AssetManagement.ManagedAssetLocations.md)  
  * [Applications.AssetManagement.ManagedAssetMaintenanceSchedules](Applications.AssetManagement.ManagedAssetMaintenanceSchedules.md)  
  * [Applications.AssetManagement.ManagedAssetParameterValues](Applications.AssetManagement.ManagedAssetParameterValues.md)  
  * [Applications.AssetManagement.ManagedAssetScheduledMaintenances](Applications.AssetManagement.ManagedAssetScheduledMaintenances.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Code](Applications.AssetManagement.ManagedAssets.md#code) | string (16) | Unique code of the managed asset. The code is unique among all managed assets in the same enterprise company. `Required` `Filter(eq;like)` 
| [DisplayText](Applications.AssetManagement.ManagedAssets.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Applications.AssetManagement.ManagedAssets.md#id) | guid |  
| [Name](Applications.AssetManagement.ManagedAssets.md#name) | [MultilanguageString (254)](../data-types.md#multilanguagestring) | Name of the managed asset (multi-language). `Required` `Filter(eq;like)` 
| [Notes](Applications.AssetManagement.ManagedAssets.md#notes) | string (max) __nullable__ | Notes for this ManagedAsset. 
| [ObjectVersion](Applications.AssetManagement.ManagedAssets.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [RegistrationNumber](Applications.AssetManagement.ManagedAssets.md#registrationnumber) | string (32) __nullable__ | Registration number of the asset with the national registration authorities. null means the registation number is unknown or N/A. `Filter(eq;like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [EnterpriseCompany](Applications.AssetManagement.ManagedAssets.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) | The enterprise company to which the managed asset belongs. `Required` `Filter(multi eq)` |
| [ManagedAssetGroup](Applications.AssetManagement.ManagedAssets.md#managedassetgroup) | [ManagedAssetGroups](Applications.AssetManagement.ManagedAssetGroups.md) | The organizational group of the asset. Used for organizational purposes only. `Required` `Filter(multi eq)` |
| [ManagedAssetType](Applications.AssetManagement.ManagedAssets.md#managedassettype) | [ManagedAssetTypes](Applications.AssetManagement.ManagedAssetTypes.md) | The type of the asset. Determines the tracked parameters for the asset, the applicable maintenance types, etc. `Required` `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Locations | [ManagedAssetLocations](Applications.AssetManagement.ManagedAssetLocations.md) | List of `ManagedAssetLocation`(Applications.AssetManagement.ManagedAssetLocations.md) child objects, based on the `Applications.AssetManagement.ManagedAssetLocation.ManagedAsset`(Applications.AssetManagement.ManagedAssetLocations.md#managedasset) back reference 
| MaintenanceSchedules | [ManagedAssetMaintenanceSchedules](Applications.AssetManagement.ManagedAssetMaintenanceSchedules.md) | List of `ManagedAssetMaintenance<br />Schedule`(Applications.AssetManagement.ManagedAssetMaintenance<br />Schedules.md) child objects, based on the `Applications.AssetManagement.ManagedAssetMaintenance<br />Schedule.ManagedAsset`(Applications.AssetManagement.ManagedAssetMaintenance<br />Schedules.md#managedasset) back reference 
| ParameterValues | [ManagedAssetParameterValues](Applications.AssetManagement.ManagedAssetParameterValues.md) | List of `ManagedAssetParameter<br />Value`(Applications.AssetManagement.ManagedAssetParameter<br />Values.md) child objects, based on the `Applications.AssetManagement.ManagedAssetParameterValue.ManagedAsset`(Applications.AssetManagement.ManagedAssetParameter<br />Values.md#managedasset) back reference 
| ScheduledMaintenances | [ManagedAssetScheduledMaintenances](Applications.AssetManagement.ManagedAssetScheduledMaintenances.md) | List of `ManagedAssetScheduled<br />Maintenance`(Applications.AssetManagement.ManagedAssetScheduled<br />Maintenances.md) child objects, based on the `Applications.AssetManagement.ManagedAssetScheduled<br />Maintenance.ManagedAsset`(Applications.AssetManagement.ManagedAssetScheduled<br />Maintenances.md#managedasset) back reference 


## Attribute Details

### Code

Unique code of the managed asset. The code is unique among all managed assets in the same enterprise company. `Required` `Filter(eq;like)`

_Type_: **string (16)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **16**  
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

### Name

Name of the managed asset (multi-language). `Required` `Filter(eq;like)`

_Type_: **[MultilanguageString (254)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Notes

Notes for this ManagedAsset.

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

### RegistrationNumber

Registration number of the asset with the national registration authorities. null means the registation number is unknown or N/A. `Filter(eq;like)`

_Type_: **string (32) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **32**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### EnterpriseCompany

The enterprise company to which the managed asset belongs. `Required` `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ManagedAssetGroup

The organizational group of the asset. Used for organizational purposes only. `Required` `Filter(multi eq)`

_Type_: **[ManagedAssetGroups](Applications.AssetManagement.ManagedAssetGroups.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ManagedAssetType

The type of the asset. Determines the tracked parameters for the asset, the applicable maintenance types, etc. `Required` `Filter(multi eq)`

_Type_: **[ManagedAssetTypes](Applications.AssetManagement.ManagedAssetTypes.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
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

[!list limit=1000 erp.entity=Applications.AssetManagement.ManagedAssets erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.AssetManagement.ManagedAssets erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_AssetManagement_ManagedAssets?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_AssetManagement_ManagedAssets?$top=10>

