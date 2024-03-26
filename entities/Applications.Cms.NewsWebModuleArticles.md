---
uid: Applications.Cms.NewsWebModuleArticles
---
# Applications.Cms.NewsWebModuleArticles Entity

**Namespace:** [Applications.Cms](Applications.Cms.md)  

Represents an article in a news web module. Entity: Cms_News_Web_Module_Articles (Obsoleted in version 22.1.6.73)

> [!NOTE]  
> **OBSOLETE! Do not use!**   


## Default Visualization
Default Display Text Format:  
_{LanguageCode}_  
Default Search Members:  
_LanguageCode_  
Code Data Member:  
_LanguageCode_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Applications.Cms.NewsWebModuleArticles](Applications.Cms.NewsWebModuleArticles.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ArticleTextHtml](Applications.Cms.NewsWebModuleArticles.md#articletexthtml) | string (max) __nullable__ | The actual article text, stored as Html. Only the &lt;BODY&gt; of the Html is stored. The language of the text is specified in Language Code. 
| [DisplayText](Applications.Cms.NewsWebModuleArticles.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Applications.Cms.NewsWebModuleArticles.md#id) | guid |  
| [IsPublished](Applications.Cms.NewsWebModuleArticles.md#ispublished) | boolean | Specifies whether the article is published for display on web. `Required` `Default(false)` 
| [LanguageCode](Applications.Cms.NewsWebModuleArticles.md#languagecode) | string (8) | The language code of the article text. `Required` 
| [ObjectVersion](Applications.Cms.NewsWebModuleArticles.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [PublishDate](Applications.Cms.NewsWebModuleArticles.md#publishdate) | datetime | The date and time when the news article should appear to be published. `Required` `Default(Now)` `Filter(ge;le)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [<s>AuthorPublicUser</s>](Applications.Cms.NewsWebModuleArticles.md#authorpublicuser) | [PublicUsers](Systems.External.PublicUsers.md) | **OBSOLETE! Do not use!** The author of the news article. `Obsolete` `Required` `Filter(multi eq)` `Obsoleted in version 24.1.4.50` `Obsolete` |
| [<s>NewsWebModule</s>](Applications.Cms.NewsWebModuleArticles.md#newswebmodule) | [NewsWebModules](Applications.Cms.NewsWebModules.md) | **OBSOLETE! Do not use!** The News Web Module, to which the current article is added. `Obsolete` `Required` `Filter(multi eq)` `Obsoleted in version 24.1.4.50` `Obsolete` |


## Attribute Details

### ArticleTextHtml

The actual article text, stored as Html. Only the &lt;BODY&gt; of the Html is stored. The language of the text is specified in Language Code.

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
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
_Show in UI_: **ShownByDefault**  

### IsPublished

Specifies whether the article is published for display on web. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### LanguageCode

The language code of the article text. `Required`

_Type_: **string (8)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **8**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### PublishDate

The date and time when the news article should appear to be published. `Required` `Default(Now)` `Filter(ge;le)`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDateTime**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### AuthorPublicUser

**OBSOLETE! Do not use!** The author of the news article. `Obsolete` `Required` `Filter(multi eq)` `Obsoleted in version 24.1.4.50` `Obsolete`

_Type_: **[PublicUsers](Systems.External.PublicUsers.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### NewsWebModule

**OBSOLETE! Do not use!** The News Web Module, to which the current article is added. `Obsolete` `Required` `Filter(multi eq)` `Obsoleted in version 24.1.4.50` `Obsolete`

_Type_: **[NewsWebModules](Applications.Cms.NewsWebModules.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
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

[!list limit=1000 erp.entity=Applications.Cms.NewsWebModuleArticles erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Cms.NewsWebModuleArticles erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Cms_NewsWebModuleArticles?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Cms_NewsWebModuleArticles?$top=10>

