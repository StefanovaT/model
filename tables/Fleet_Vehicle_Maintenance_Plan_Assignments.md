# Table Fleet_Vehicle_Maintenance_Plan_Assignments

Represents assignment of a maintenance plan to a vehicle. Entity: Fleet_Vehicle_Maintenance_Plan_Assignments

## Summary

| Name | Type | Description |
| - | - | --- |
|[Vehicle_Maintenance_Plan_Assignment_Id](#vehicle_maintenance_plan_assignment_id)|`uniqueidentifier` `PK`||
|[Vehicle_Id](#vehicle_id)|`uniqueidentifier` |The vehicle, to which a periodic maintenance plan is assigned.|
|[Maintenance_Plan_Id](#maintenance_plan_id)|`uniqueidentifier` |The assigned periodic maintenance type.|
|[Starting_Date](#starting_date)|`date` |The date on which the periodic maintenance should start.|
|[Last_Maintenance_Mileage_Km](#last_maintenance_mileage_km)|`int` |The mileage of the vehicle (in Kilometers), when the last maintenance of this type occurred. Should be specified for plans, which require mileage check.|
|[Last_Maintenance_Trip_Count](#last_maintenance_trip_count)|`int` |The trip count of the vehicle, when the last maintenance of this type occurred. Should be specified for plans, which trip count check.|
|[Is_Active](#is_active)|`bit` |Specifies whether the plan is active.|
|[Notes](#notes)|`nvarchar(2147483647)` ||

## Columns

### Vehicle_Maintenance_Plan_Assignment_Id


Vehicle_Maintenance_Plan_Assignment_Id

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
|Derived From|[Fleet_Vehicle_Maintenance_Plan_Assignments](Fleet_Vehicle_Maintenance_Plan_Assignments.md).[Vehicle_Maintenance_Plan_Assignment_Id](Fleet_Vehicle_Maintenance_Plan_Assignments.md#vehicle_maintenance_plan_assignment_id)|
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

### Vehicle_Id


Vehicle_Id


The vehicle, to which a periodic maintenance plan is assigned.


The vehicle, to which a periodic maintenance plan is assigned.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Fleet_Vehicles](Fleet_Vehicles.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Fleet_Vehicle_Maintenance_Plan_Assignments](Fleet_Vehicle_Maintenance_Plan_Assignments.md).[Vehicle_Id](Fleet_Vehicle_Maintenance_Plan_Assignments.md#vehicle_id)|
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

### Maintenance_Plan_Id


Maintenance_Plan_Id


The assigned periodic maintenance type.


The assigned periodic maintenance type.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Fleet_Maintenance_Plans](Fleet_Maintenance_Plans.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Fleet_Vehicle_Maintenance_Plan_Assignments](Fleet_Vehicle_Maintenance_Plan_Assignments.md).[Maintenance_Plan_Id](Fleet_Vehicle_Maintenance_Plan_Assignments.md#maintenance_plan_id)|
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

### Starting_Date


Starting_Date


The date on which the periodic maintenance should start.


The date on which the periodic maintenance should start.

| Property | Value |
| - | - |
|Type|date|
|DateTime Format|Date|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Fleet_Vehicle_Maintenance_Plan_Assignments](Fleet_Vehicle_Maintenance_Plan_Assignments.md).[Starting_Date](Fleet_Vehicle_Maintenance_Plan_Assignments.md#starting_date)|
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

### Last_Maintenance_Mileage_Km


Last_Maintenance_Mileage_Km


The mileage of the vehicle (in Kilometers), when the last maintenance of this type occurred. Should be specified for plans, which require mileage check.


The mileage of the vehicle (in Kilometers), when the last maintenance of this type occurred. Should be specified for plans, which require mileage check.

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
|Derived From|[Fleet_Vehicle_Maintenance_Plan_Assignments](Fleet_Vehicle_Maintenance_Plan_Assignments.md).[Last_Maintenance_Mileage_Km](Fleet_Vehicle_Maintenance_Plan_Assignments.md#last_maintenance_mileage_km)|
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

### Last_Maintenance_Trip_Count


Last_Maintenance_Trip_Count


The trip count of the vehicle, when the last maintenance of this type occurred. Should be specified for plans, which trip count check.


The trip count of the vehicle, when the last maintenance of this type occurred. Should be specified for plans, which trip count check.

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
|Derived From|[Fleet_Vehicle_Maintenance_Plan_Assignments](Fleet_Vehicle_Maintenance_Plan_Assignments.md).[Last_Maintenance_Trip_Count](Fleet_Vehicle_Maintenance_Plan_Assignments.md#last_maintenance_trip_count)|
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

### Is_Active


Is_Active


Specifies whether the plan is active.


Specifies whether the plan is active.

| Property | Value |
| - | - |
|Type|bit|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|True|
|Derived From|[Fleet_Vehicle_Maintenance_Plan_Assignments](Fleet_Vehicle_Maintenance_Plan_Assignments.md).[Is_Active](Fleet_Vehicle_Maintenance_Plan_Assignments.md#is_active)|
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
|Derived From|[Fleet_Vehicle_Maintenance_Plan_Assignments](Fleet_Vehicle_Maintenance_Plan_Assignments.md).[Notes](Fleet_Vehicle_Maintenance_Plan_Assignments.md#notes)|
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

