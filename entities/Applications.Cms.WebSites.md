---
uid: Applications.Cms.WebSites
---
# Applications.Cms.WebSites Entity

**Namespace:** [Applications.Cms](Applications.Cms.md)  

Contains the public web sites. Entity: Cms_Web_Sites (Obsoleted in version 22.1.6.73)

> [!NOTE]  
> **OBSOLETE! Do not use!**   


## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  
Name Data Member:  
_Name_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Applications.Cms.WebSites](Applications.Cms.WebSites.md)  
  * [Applications.Cms.NewsWebModules](Applications.Cms.NewsWebModules.md)  
  * [Applications.Cms.ProductCatalogWebModules](Applications.Cms.ProductCatalogWebModules.md)  
  * [Applications.Cms.StaticWebModules](Applications.Cms.StaticWebModules.md)  
  * [Applications.Cms.WebModules](Applications.Cms.WebModules.md)  
  * [Applications.Cms.WebSiteLanguages](Applications.Cms.WebSiteLanguages.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [BaseUrl](Applications.Cms.WebSites.md#baseurl) | string (256) __nullable__ | The base url (address) of the web site. `Filter(like)` 
| [DisplayText](Applications.Cms.WebSites.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Applications.Cms.WebSites.md#id) | guid |  
| [IsPublished](Applications.Cms.WebSites.md#ispublished) | boolean | Specifies whether the site is published for public Internet access. `Required` `Default(false)` `Filter(eq)` 
| [Name](Applications.Cms.WebSites.md#name) | string (256) | Multilanguage web site name. `Required` `Filter(like)` 
| [ObjectVersion](Applications.Cms.WebSites.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [EnterpriseCompany](Applications.Cms.WebSites.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) | The enterprise company to which this web site belongs. `Required` `Filter(multi eq)` |
| [<s>PublicUserList</s>](Applications.Cms.WebSites.md#publicuserlist) | [PublicUserLists](Systems.External.PublicUserLists.md) (nullable) | **OBSOLETE! Do not use!** The list of users used to authorize the users on the site. `Obsolete` `Filter(multi eq)` `Obsoleted in version 25.1.1.47` `Obsolete` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Languages | [WebSiteLanguages](Applications.Cms.WebSiteLanguages.md) | List of `WebSiteLanguage`(Applications.Cms.WebSiteLanguages.md) child objects, based on the `Applications.Cms.WebSiteLanguage.WebSite`(Applications.Cms.WebSiteLanguages.md#website) back reference 
| WebModules | [WebModules](Applications.Cms.WebModules.md) | List of WebModule child objects, based on the Applications.Cms.WebModule.WebSite back reference 


## Attribute Details

### BaseUrl

The base url (address) of the web site. `Filter(like)`

_Type_: **string (256) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **256**  
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

### IsPublished

Specifies whether the site is published for public Internet access. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### Name

Multilanguage web site name. `Required` `Filter(like)`

_Type_: **string (256)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **256**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  


## Reference Details

### EnterpriseCompany

The enterprise company to which this web site belongs. `Required` `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### PublicUserList

**OBSOLETE! Do not use!** The list of users used to authorize the users on the site. `Obsolete` `Filter(multi eq)` `Obsoleted in version 25.1.1.47` `Obsolete`

_Type_: **[PublicUserLists](Systems.External.PublicUserLists.md) (nullable)**  
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

[!list limit=1000 erp.entity=Applications.Cms.WebSites erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Cms.WebSites erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Cms_WebSites?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Cms_WebSites?$top=10>

