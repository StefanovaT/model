# Table Fleet_Vehicle_Location_History_Records

Stores information about vehicle locations. Entity: Fleet_Vehicle_Location_History_Records

## Summary

| Name | Type | Description |
| - | - | --- |
|[Vehicle_Location_History_Record_Id](#vehicle_location_history_record_id)|`uniqueidentifier` `PK`||
|[Vehicle_Id](#vehicle_id)|`uniqueidentifier` |The vehicle, whose location is being stored.|
|[Time](#time)|`datetime` |The time, for which the location is stored.|
|[Latitude](#latitude)|`decimal(10, 7)` |Latitude of the vehicle at the specified time. Latitude is the vertical angle from equator to the pole of the point. Positive values denote points north of the equator. The value is in the range [-90, 90].|
|[Longitude](#longitude)|`decimal(10, 7)` |Longitude of the vehicle at the specified time. Longitude is angle from the prime meridian (in England) in east-west direction. Positive values denote east and negative - west. The value is in the range [-180, 180].|
|[Current_Speed_KmH](#current_speed_kmh)|`int` |The current speed of the vehicle in km/h. NULL means the speed is unknown.|

## Columns

### Vehicle_Location_History_Record_Id


Vehicle_Location_History_Record_Id

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
|Derived From|[Fleet_Vehicle_Location_History_Records](Fleet_Vehicle_Location_History_Records.md).[Vehicle_Location_History_Record_Id](Fleet_Vehicle_Location_History_Records.md#vehicle_location_history_record_id)|
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


The vehicle, whose location is being stored.


The vehicle, whose location is being stored.

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
|Derived From|[Fleet_Vehicle_Location_History_Records](Fleet_Vehicle_Location_History_Records.md).[Vehicle_Id](Fleet_Vehicle_Location_History_Records.md#vehicle_id)|
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

### Time


Time


The time, for which the location is stored.


The time, for which the location is stored.

| Property | Value |
| - | - |
|Type|datetime|
|DateTime Format|DateTime|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Fleet_Vehicle_Location_History_Records](Fleet_Vehicle_Location_History_Records.md).[Time](Fleet_Vehicle_Location_History_Records.md#time)|
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

### Latitude


Latitude


Latitude of the vehicle at the specified time. Latitude is the vertical angle from equator to the pole of the point. Positive values denote points north of the equator. The value is in the range [-90, 90].


Latitude of the vehicle at the specified time. Latitude is the vertical angle from equator to the pole of the point. Positive values denote points north of the equator. The value is in the range [-90, 90].

| Property | Value |
| - | - |
|Type|decimal(10, 7)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Fleet_Vehicle_Location_History_Records](Fleet_Vehicle_Location_History_Records.md).[Latitude](Fleet_Vehicle_Location_History_Records.md#latitude)|
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

### Longitude


Longitude


Longitude of the vehicle at the specified time. Longitude is angle from the prime meridian (in England) in east-west direction. Positive values denote east and negative - west. The value is in the range [-180, 180].


Longitude of the vehicle at the specified time. Longitude is angle from the prime meridian (in England) in east-west direction. Positive values denote east and negative - west. The value is in the range [-180, 180].

| Property | Value |
| - | - |
|Type|decimal(10, 7)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Fleet_Vehicle_Location_History_Records](Fleet_Vehicle_Location_History_Records.md).[Longitude](Fleet_Vehicle_Location_History_Records.md#longitude)|
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

### Current_Speed_KmH


Current_Speed_KmH


The current speed of the vehicle in km/h. NULL means the speed is unknown.


The current speed of the vehicle in km/h. NULL means the speed is unknown.

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
|Derived From|[Fleet_Vehicle_Location_History_Records](Fleet_Vehicle_Location_History_Records.md).[Current_Speed_KmH](Fleet_Vehicle_Location_History_Records.md#current_speed_kmh)|
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

