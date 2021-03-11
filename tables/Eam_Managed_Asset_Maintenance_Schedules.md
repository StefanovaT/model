# Table Eam_Managed_Asset_Maintenance_Schedules

Contains the maintenance schedules for the managed assets. Entity: Eam_Managed_Asset_Maintenance_Schedules (Introduced in version 19.1)

## Owner Tables Hierarchy

* [Eam_Managed_Assets](Eam_Managed_Assets.md)

## Summary

| Name | Type | Description |
| - | - | --- |
|[Managed_Asset_Maintenance_Schedule_Id](#managed_asset_maintenance_schedule_id)|`uniqueidentifier` `PK`||
|[Managed_Asset_Id](#managed_asset_id)|`uniqueidentifier` |The managed asset for which the maintenance schedule applies.|
|[Maintenance_Type_Id](#maintenance_type_id)|`uniqueidentifier` |What type of maintenance is scheduled.|
|[Schedule_Months](#schedule_months)|`int` |Number of months between planned maintenances. NULL means that the schedule is not planned based on months.|
|[Schedule_Days](#schedule_days)|`int` |Number of days between planned maintenances. NULL means that the schedule is not planned based on days.|
|[Parameter_Change_Delta](#parameter_change_delta)|`int` |The value of the tracked parameter change between planned maintenances. The tracked parameter is determined based on the Maintenance Type. NULL means, that the maintenances are not planned, based on parameter change.|
|[Notes](#notes)|`nvarchar(2147483647)` ||
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Managed_Asset_Maintenance_Schedule_Id


Managed_Asset_Maintenance_Schedule_Id

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|yes|
|Order in Primary Key|1|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|NewGuid|
|Derived From|[Eam_Managed_Asset_Maintenance_Schedules](Eam_Managed_Asset_Maintenance_Schedules.md).[Managed_Asset_Maintenance_Schedule_Id](Eam_Managed_Asset_Maintenance_Schedules.md#managed_asset_maintenance_schedule_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|no|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Managed_Asset_Id


Managed_Asset_Id


The managed asset for which the maintenance schedule applies.


The managed asset for which the maintenance schedule applies.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|yes|
|Referenced Table|[Eam_Managed_Assets](Eam_Managed_Assets.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Eam_Managed_Asset_Maintenance_Schedules](Eam_Managed_Asset_Maintenance_Schedules.md).[Managed_Asset_Id](Eam_Managed_Asset_Maintenance_Schedules.md#managed_asset_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|no|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Maintenance_Type_Id


Maintenance_Type_Id


What type of maintenance is scheduled.


What type of maintenance is scheduled.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Eam_Maintenance_Types](Eam_Maintenance_Types.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Eam_Managed_Asset_Maintenance_Schedules](Eam_Managed_Asset_Maintenance_Schedules.md).[Maintenance_Type_Id](Eam_Managed_Asset_Maintenance_Schedules.md#maintenance_type_id)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Schedule_Months


Schedule_Months


Number of months between planned maintenances. NULL means that the schedule is not planned based on months.


Number of months between planned maintenances. NULL means that the schedule is not planned based on months.

| Property | Value |
| - | - |
|Type|int|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Eam_Managed_Asset_Maintenance_Schedules](Eam_Managed_Asset_Maintenance_Schedules.md).[Schedule_Months](Eam_Managed_Asset_Maintenance_Schedules.md#schedule_months)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

### Schedule_Days


Schedule_Days


Number of days between planned maintenances. NULL means that the schedule is not planned based on days.


Number of days between planned maintenances. NULL means that the schedule is not planned based on days.

| Property | Value |
| - | - |
|Type|int|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Eam_Managed_Asset_Maintenance_Schedules](Eam_Managed_Asset_Maintenance_Schedules.md).[Schedule_Days](Eam_Managed_Asset_Maintenance_Schedules.md#schedule_days)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

### Parameter_Change_Delta


Parameter_Change_Delta


The value of the tracked parameter change between planned maintenances. The tracked parameter is determined based on the Maintenance Type. NULL means, that the maintenances are not planned, based on parameter change.


The value of the tracked parameter change between planned maintenances. The tracked parameter is determined based on the Maintenance Type. NULL means, that the maintenances are not planned, based on parameter change.

| Property | Value |
| - | - |
|Type|int|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Eam_Managed_Asset_Maintenance_Schedules](Eam_Managed_Asset_Maintenance_Schedules.md).[Parameter_Change_Delta](Eam_Managed_Asset_Maintenance_Schedules.md#parameter_change_delta)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|
|GreaterThanOrLessThan|None|yes|no|

### Notes


Notes

| Property | Value |
| - | - |
|Type|nvarchar(2147483647)|
|Is Mulitlanguage|no|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Eam_Managed_Asset_Maintenance_Schedules](Eam_Managed_Asset_Maintenance_Schedules.md).[Notes](Eam_Managed_Asset_Maintenance_Schedules.md#notes)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|yes|
|Max Length|2147483647|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

### Row_Version


Row_Version

| Property | Value |
| - | - |
|Type|timestamp|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Eam_Managed_Asset_Maintenance_Schedules](Eam_Managed_Asset_Maintenance_Schedules.md).[Row_Version](Eam_Managed_Asset_Maintenance_Schedules.md#row_version)|
|Format||
|Ignore for Insert Order|no|
|Auto Complete|no|
|Data Filter|no|
|Enter Stop|yes|
|Is Entity Name|no|
|Password|no|
|Is Picture|no|
|Is RTF|no|
|Is User Login|no|
|Visible|no|
|Max Length|-1|
|Order|2147483647|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

