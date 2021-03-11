# Table Sec_Trusted_Application_Authorizations

Authorization of a trusted application to access the data on behalf of a context user. Entity: Sec_Trusted_Application_Authorizations (Introduced in version 20.1)

## Owner Tables Hierarchy

* [Sec_Trusted_Applications](Sec_Trusted_Applications.md)

## Summary

| Name | Type | Description |
| - | - | --- |
|[Trusted_Application_Authorization_Id](#trusted_application_authorization_id)|`uniqueidentifier` `PK`||
|[Trusted_Application_Id](#trusted_application_id)|`uniqueidentifier` |The application, which is authorized.|
|[Granting_User_Id](#granting_user_id)|`uniqueidentifier` |The user, who authorized the application.|
|[Context_User_Id](#context_user_id)|`uniqueidentifier` |The user, whose permissions are granted to the application.|
|[Grant_Time_Utc](#grant_time_utc)|`datetime` |The time (in UTC) when the authorization was granted.|
|[Valid_From_Utc](#valid_from_utc)|`datetime` |The start of the validitiy of the authorization. NULL means that there is no restriction.|
|[Valid_Until_Utc](#valid_until_utc)|`datetime` |The time (in UTC) when the grant expires. NULL means that there is no time restriction.|
|[Is_Revoked](#is_revoked)|`bit` |Specifies whether the grant is explicitly revoked.|
|[Notes](#notes)|`nvarchar(2147483647)` ||
|[Row_Version](#row_version)|`timestamp` ||

## Columns

### Trusted_Application_Authorization_Id


Trusted_Application_Authorization_Id

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
|Derived From|[Sec_Trusted_Application_Authorizations](Sec_Trusted_Application_Authorizations.md).[Trusted_Application_Authorization_Id](Sec_Trusted_Application_Authorizations.md#trusted_application_authorization_id)|
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

### Trusted_Application_Id


Trusted_Application_Id


The application, which is authorized.


The application, which is authorized.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|yes|
|Referenced Table|[Sec_Trusted_Applications](Sec_Trusted_Applications.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sec_Trusted_Application_Authorizations](Sec_Trusted_Application_Authorizations.md).[Trusted_Application_Id](Sec_Trusted_Application_Authorizations.md#trusted_application_id)|
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

### Granting_User_Id


Granting_User_Id


The user, who authorized the application.


The user, who authorized the application.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Sec_Users](Sec_Users.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sec_Trusted_Application_Authorizations](Sec_Trusted_Application_Authorizations.md).[Granting_User_Id](Sec_Trusted_Application_Authorizations.md#granting_user_id)|
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

### Context_User_Id


Context_User_Id


The user, whose permissions are granted to the application.


The user, whose permissions are granted to the application.

| Property | Value |
| - | - |
|Type|uniqueidentifier|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Referenced Table|[Sec_Users](Sec_Users.md)|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|None|
|Derived From|[Sec_Trusted_Application_Authorizations](Sec_Trusted_Application_Authorizations.md).[Context_User_Id](Sec_Trusted_Application_Authorizations.md#context_user_id)|
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

### Grant_Time_Utc


Grant_Time_Utc


The time (in UTC) when the authorization was granted.


The time (in UTC) when the authorization was granted.

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
|Default Value|CurrentDateTimeUtc|
|Derived From|[Sec_Trusted_Application_Authorizations](Sec_Trusted_Application_Authorizations.md).[Grant_Time_Utc](Sec_Trusted_Application_Authorizations.md#grant_time_utc)|
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

### Valid_From_Utc


Valid_From_Utc


The start of the validitiy of the authorization. NULL means that there is no restriction.


The start of the validitiy of the authorization. NULL means that there is no restriction.

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
|Derived From|[Sec_Trusted_Application_Authorizations](Sec_Trusted_Application_Authorizations.md).[Valid_From_Utc](Sec_Trusted_Application_Authorizations.md#valid_from_utc)|
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

### Valid_Until_Utc


Valid_Until_Utc


The time (in UTC) when the grant expires. NULL means that there is no time restriction.


The time (in UTC) when the grant expires. NULL means that there is no time restriction.

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
|Derived From|[Sec_Trusted_Application_Authorizations](Sec_Trusted_Application_Authorizations.md).[Valid_Until_Utc](Sec_Trusted_Application_Authorizations.md#valid_until_utc)|
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

### Is_Revoked


Is_Revoked


Specifies whether the grant is explicitly revoked.


Specifies whether the grant is explicitly revoked.

| Property | Value |
| - | - |
|Type|bit|
|`NULL`|no|
|Primary Key|no|
|Ownership Reference|no|
|Readonly|no|
|Sortable|no|
|Attributes|None|
|Default Value|False|
|Derived From|[Sec_Trusted_Application_Authorizations](Sec_Trusted_Application_Authorizations.md).[Is_Revoked](Sec_Trusted_Application_Authorizations.md#is_revoked)|
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
|Derived From|[Sec_Trusted_Application_Authorizations](Sec_Trusted_Application_Authorizations.md).[Notes](Sec_Trusted_Application_Authorizations.md#notes)|
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
|Derived From|[Sec_Trusted_Application_Authorizations](Sec_Trusted_Application_Authorizations.md).[Row_Version](Sec_Trusted_Application_Authorizations.md#row_version)|
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

