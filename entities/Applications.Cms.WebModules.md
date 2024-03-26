---
uid: Applications.Cms.WebModules
---
# Applications.Cms.WebModules Entity

**Namespace:** [Applications.Cms](Applications.Cms.md)  

The abstract basic building block of web sites. Each module can render multiple web pages. Entity: Cms_Web_Modules (Obsoleted in version 22.1.6.73)

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

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Applications.Cms.WebSites](Applications.Cms.WebSites.md)  
Aggregate Root:  
[Applications.Cms.WebSites](Applications.Cms.WebSites.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Applications.Cms.WebModules.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Applications.Cms.WebModules.md#id) | guid |  
| [IsPublished](Applications.Cms.WebModules.md#ispublished) | boolean | Specifies whether the module is published and will be showed in the web site. `Required` `Default(false)` `Filter(eq)` 
| [LocalUrl](Applications.Cms.WebModules.md#localurl) | string (128) __nullable__ | The local Module Url. The full Url of a module is formed based on the sites Base Url, the local Urls of all parent modules and the module Local Url. Null means that the web Module is the default web module within the parent path. `Filter(like)` 
| [ModulePicture](Applications.Cms.WebModules.md#modulepicture) | byte[] __nullable__ | Default picture. Used for picture links, small module icons, etc. PNG format is suggested. 
| [ModuleType](Applications.Cms.WebModules.md#moduletype) | [ModuleType](Applications.Cms.WebModules.md#moduletype) | Specifies the content handler. The content handler is responsible for generating the actual web page content. Module Types include Category, Static, News, Product, etc. `Required` `Filter(like)` 
| [Name](Applications.Cms.WebModules.md#name) | string (512) | Multilanguage Module name. This is used as a title when displaying the web Module. `Required` `Filter(like)` 
| [ObjectVersion](Applications.Cms.WebModules.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [<s>Parent</s>](Applications.Cms.WebModules.md#parent) | [WebModules](Applications.Cms.WebModules.md) (nullable) | **OBSOLETE! Do not use!** The parent web Module. It can only be a module with Module Type = Category. Null means that the web Module is root web Module. `Obsolete` `Filter(multi eq)` `Obsoleted in version 24.1.4.50` `Obsolete` |
| [<s>WebSite</s>](Applications.Cms.WebModules.md#website) | [WebSites](Applications.Cms.WebSites.md) | **OBSOLETE! Do not use!** The web site to which the module belongs. `Obsolete` `Required` `Filter(multi eq)` `Obsoleted in version 24.1.4.50` `Obsolete` `Owner` |


## Attribute Details

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

Specifies whether the module is published and will be showed in the web site. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### LocalUrl

The local Module Url. The full Url of a module is formed based on the sites Base Url, the local Urls of all parent modules and the module Local Url. Null means that the web Module is the default web module within the parent path. `Filter(like)`

_Type_: **string (128) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **128**  
_Show in UI_: **ShownByDefault**  

### ModulePicture

Default picture. Used for picture links, small module icons, etc. PNG format is suggested.

_Type_: **byte[] __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ModuleType

Specifies the content handler. The content handler is responsible for generating the actual web page content. Module Types include Category, Static, News, Product, etc. `Required` `Filter(like)`

_Type_: **[ModuleType](Applications.Cms.WebModules.md#moduletype)**  
_Category_: **System**  
Allowed values for the ModuleType data attribute  
_Allowed Values (Applications.Cms.WebModulesRepository.ModuleType Enum Members)_  

| Value | Description |
| ---- | --- |
| CategoryPage | CategoryPage value. Stored as 'CAT'. <br /> _Database Value:_ 'CAT' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'CategoryPage' |
| Static | Static value. Stored as 'STA'. <br /> _Database Value:_ 'STA' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Static' |
| News | News value. Stored as 'NEW'. <br /> _Database Value:_ 'NEW' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'News' |

_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Name

Multilanguage Module name. This is used as a title when displaying the web Module. `Required` `Filter(like)`

_Type_: **string (512)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **512**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  


## Reference Details

### Parent

**OBSOLETE! Do not use!** The parent web Module. It can only be a module with Module Type = Category. Null means that the web Module is root web Module. `Obsolete` `Filter(multi eq)` `Obsoleted in version 24.1.4.50` `Obsolete`

_Type_: **[WebModules](Applications.Cms.WebModules.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### WebSite

**OBSOLETE! Do not use!** The web site to which the module belongs. `Obsolete` `Required` `Filter(multi eq)` `Obsoleted in version 24.1.4.50` `Obsolete` `Owner`

_Type_: **[WebSites](Applications.Cms.WebSites.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Show in UI_: **ShownByDefault**  


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

Creates a notification and sends a real time event to the user.  
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

[!list limit=1000 erp.entity=Applications.Cms.WebModules erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Cms.WebModules erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Cms_WebModules?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Cms_WebModules?$top=10>

