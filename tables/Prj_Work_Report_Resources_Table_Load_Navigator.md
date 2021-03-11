# Query Prj_Work_Report_Resources_Table_Load_Navigator


## Summary

| Name | Type | Description |
| - | - | --- |
|[Work_Report_Resource_Id](#work_report_resource_id)|`uniqueidentifier` `PK`||
|[Work_Report_Id](#work_report_id)|`uniqueidentifier` ||
|[Project_Task_Id](#project_task_id)|`uniqueidentifier` |The project task for which the work is reported.|
|[Resource_Id](#resource_id)|`uniqueidentifier` |The resource, for which usage is reported.|
|[Resource_Instance_Id](#resource_instance_id)|`uniqueidentifier` |The concrete resource instance used. NULL when no concrete resource was used or there is no data whether concrete resource was used.|
|[Total_Resource_Usage_Hours](#total_resource_usage_hours)|`decimal(18, 2)` |The total number of resource-hours, which are actually consumed. Equals to the duration of the task, multiplied by the average resource usage.|
|[Actual_Start_Time](#actual_start_time)|`datetime` |Optionally, specifies the actual date and time when the resource usage began.|
|[Actual_End_Time](#actual_end_time)|`datetime` |Optionally, specifies the actual date and time when the resource usage ended.|
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Work_Report_Resource_Id


Work_Report_Resource_Id

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
|Derived From|[Prj_Work_Report_Resources](Prj_Work_Report_Resources.md).[Work_Report_Resource_Id](Prj_Work_Report_Resources.md#work_report_resource_id)|
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
|Order|0|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Work_Report_Id


Work_Report_Id

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Prj_Work_Reports](Prj_Work_Reports.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Prj_Work_Report_Resources](Prj_Work_Report_Resources.md).[Work_Report_Id](Prj_Work_Report_Resources.md#work_report_id)|
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
|Order|1|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Project_Task_Id


Project_Task_Id


The project task for which the work is reported.


The project task for which the work is reported.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Prj_Project_Tasks](Prj_Project_Tasks.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Prj_Work_Report_Resources](Prj_Work_Report_Resources.md).[Project_Task_Id](Prj_Work_Report_Resources.md#project_task_id)|
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
|Order|2|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Resource_Id


Resource_Id


The resource, for which usage is reported.


The resource, for which usage is reported.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Resources](Gen_Resources.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Prj_Work_Report_Resources](Prj_Work_Report_Resources.md).[Resource_Id](Prj_Work_Report_Resources.md#resource_id)|
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
|Order|3|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|

### Resource_Instance_Id


Resource_Instance_Id


The concrete resource instance used. NULL when no concrete resource was used or there is no data whether concrete resource was used.


The concrete resource instance used. NULL when no concrete resource was used or there is no data whether concrete resource was used.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Gen_Resource_Instances](Gen_Resource_Instances.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Prj_Work_Report_Resources](Prj_Work_Report_Resources.md).[Resource_Instance_Id](Prj_Work_Report_Resources.md#resource_instance_id)|
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
|Order|4|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|yes|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|
|Like|None|no|no|

### Total_Resource_Usage_Hours


Total_Resource_Usage_Hours


The total number of resource-hours, which are actually consumed. Equals to the duration of the task, multiplied by the average resource usage.


The total number of resource-hours, which are actually consumed. Equals to the duration of the task, multiplied by the average resource usage.

| Property | Value |
| - | - |
|Type|decimal(18, 2)|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|0|
|Derived From|[Prj_Work_Report_Resources](Prj_Work_Report_Resources.md).[Total_Resource_Usage_Hours](Prj_Work_Report_Resources.md#total_resource_usage_hours)|
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
|Order|5|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|no|no|
|Like|None|no|no|

### Actual_Start_Time


Actual_Start_Time


Optionally, specifies the actual date and time when the resource usage began.


Optionally, specifies the actual date and time when the resource usage began.

| Property | Value |
| - | - |
|Type|datetime|
|DateTime Format|DateTime|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Prj_Work_Report_Resources](Prj_Work_Report_Resources.md).[Actual_Start_Time](Prj_Work_Report_Resources.md#actual_start_time)|
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
|Order|6|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|
|Like|None|no|no|

### Actual_End_Time


Actual_End_Time


Optionally, specifies the actual date and time when the resource usage ended.


Optionally, specifies the actual date and time when the resource usage ended.

| Property | Value |
| - | - |
|Type|datetime|
|DateTime Format|DateTime|
|`NULL`|yes|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Prj_Work_Report_Resources](Prj_Work_Report_Resources.md).[Actual_End_Time](Prj_Work_Report_Resources.md#actual_end_time)|
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
|Order|7|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

#### Supported Filters

| Filter Type | Default |Include Nulls | Hidden by Default |
| - | - | - | - |
|Equals|NULL|yes|no|
|Like|None|no|no|

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
|Derived From|[Prj_Work_Report_Resources](Prj_Work_Report_Resources.md).[Row_Version](Prj_Work_Report_Resources.md#row_version)|
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
|Order|8|
|Summary Type|None|
|UI Memo Editor|no|
|UI Width|Medium|
|Supports EQUALS_IN|no|

