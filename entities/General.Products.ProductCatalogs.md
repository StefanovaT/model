---
uid: General.Products.ProductCatalogs
---
# General.Products.ProductCatalogs Entity

**Namespace:** [General.Products](General.Products.md)  

Product catalogs serve to organize the products for display primarily in web pages. Entity: Gen_Product_Catalogs

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Code; Name_  
Code Data Member:  
_Code_  
Name Data Member:  
_Name_  
Category:  _Settings_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [General.Products.ProductCatalogs](General.Products.ProductCatalogs.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [BackgroundColor](General.Products.ProductCatalogs.md#backgroundcolor) | int32 __nullable__ | When not null, specifies the background color to use for visualization of the catalog. The color is in RGBA color format. 
| [BackgroundImage](General.Products.ProductCatalogs.md#backgroundimage) | byte[] __nullable__ | The background image to be used for web visualization of the catalog. null means that background image won't be displayed. 
| [BackgroundPosition<br />Horizontal](General.Products.ProductCatalogs.md#backgroundpositionhorizontal) | [BackgroundPosition<br />Horizontal](General.Products.ProductCatalogs.md#backgroundpositionhorizontal) | Horizontal position of the Background Image. L=Left, C=Center, R=Right. `Required` `Default("L")` 
| [BackgroundPositionVertical](General.Products.ProductCatalogs.md#backgroundpositionvertical) | [BackgroundPositionVertical](General.Products.ProductCatalogs.md#backgroundpositionvertical) | Vertical position of the Background Image. T=Top, C=Center, B=Bottom. `Required` `Default("T")` 
| [BackgroundRepeat](General.Products.ProductCatalogs.md#backgroundrepeat) | [BackgroundRepeat](General.Products.ProductCatalogs.md#backgroundrepeat) | Specifies if and how the background image will be repeated. R=Repeat both vertically and horizontally; X=Repeat only horizontally; Y=Repeat only vertically; N=No repeat. `Required` `Default("R")` 
| [Code](General.Products.ProductCatalogs.md#code) | string (16) | Unique catalog code. `Required` 
| [DisplayText](General.Products.ProductCatalogs.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [FooterHtml](General.Products.ProductCatalogs.md#footerhtml) | string (max) __nullable__ | The footer of the catalog in HTML format. Primarily used for web visualizations of the catalog. null means that there shouldn't be any user-defined footer. 
| [HeaderHtml](General.Products.ProductCatalogs.md#headerhtml) | string (max) __nullable__ | The header of the catalog in HTML format. Primarily used for web visualizations of the catalog. null specifies that there shouldn't be any user-defined header. 
| [Id](General.Products.ProductCatalogs.md#id) | guid |  
| [Logo](General.Products.ProductCatalogs.md#logo) | byte[] __nullable__ | The logo of the product catalog. Used for web and other visualization of the catalog. 
| [Name](General.Products.ProductCatalogs.md#name) | [MultilanguageString (254)](../data-types.md#multilanguagestring) | Product catalog name (multilanguage). `Required` 
| [Notes](General.Products.ProductCatalogs.md#notes) | string (max) __nullable__ | Notes for this ProductCatalog. 
| [ObjectVersion](General.Products.ProductCatalogs.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [RootProductGroup](General.Products.ProductCatalogs.md#rootproductgroup) | [ProductGroups](General.Products.ProductGroups.md) | The root (starting) product group of the catalog. Each catalog starts from a root product group and includes the products in the sub-groups. `Required` `Filter(multi eq)` |
| [WebSite](General.Products.ProductCatalogs.md#website) | [WebSites](Systems.Config.WebSites.md) (nullable) | The ECommerce web site, which will be used to host the product catalog. When null, the product catalog would not be hosted with internal ECommerce site. `Filter(multi eq)` `Introduced in version 19.1` |


## Attribute Details

### BackgroundColor

When not null, specifies the background color to use for visualization of the catalog. The color is in RGBA color format.

_Type_: **int32 __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### BackgroundImage

The background image to be used for web visualization of the catalog. null means that background image won't be displayed.

_Type_: **byte[] __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### BackgroundPositionHorizontal

Horizontal position of the Background Image. L=Left, C=Center, R=Right. `Required` `Default("L")`

_Type_: **[BackgroundPosition<br />Horizontal](General.Products.ProductCatalogs.md#backgroundpositionhorizontal)**  
_Category_: **System**  
Allowed values for the `BackgroundPositionHorizontal`(General.Products.ProductCatalogs.md#backgroundpositionhorizontal) data attribute  
_Allowed Values (General.Products.ProductCatalogsRepository.BackgroundPositionHorizontal Enum Members)_  

| Value | Description |
| ---- | --- |
| Left | Left value. Stored as 'L'. <br /> _Database Value:_ 'L' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Left' |
| Center | Center value. Stored as 'C'. <br /> _Database Value:_ 'C' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Center' |
| Right | Right value. Stored as 'R'. <br /> _Database Value:_ 'R' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'Right' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Left**  
_Show in UI_: **ShownByDefault**  

### BackgroundPositionVertical

Vertical position of the Background Image. T=Top, C=Center, B=Bottom. `Required` `Default("T")`

_Type_: **[BackgroundPositionVertical](General.Products.ProductCatalogs.md#backgroundpositionvertical)**  
_Category_: **System**  
Allowed values for the `BackgroundPositionVertical`(General.Products.ProductCatalogs.md#backgroundpositionvertical) data attribute  
_Allowed Values (General.Products.ProductCatalogsRepository.BackgroundPositionVertical Enum Members)_  

| Value | Description |
| ---- | --- |
| Top | Top value. Stored as 'T'. <br /> _Database Value:_ 'T' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Top' |
| Center | Center value. Stored as 'C'. <br /> _Database Value:_ 'C' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Center' |
| Bottom | Bottom value. Stored as 'B'. <br /> _Database Value:_ 'B' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'Bottom' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Top**  
_Show in UI_: **ShownByDefault**  

### BackgroundRepeat

Specifies if and how the background image will be repeated. R=Repeat both vertically and horizontally; X=Repeat only horizontally; Y=Repeat only vertically; N=No repeat. `Required` `Default("R")`

_Type_: **[BackgroundRepeat](General.Products.ProductCatalogs.md#backgroundrepeat)**  
_Category_: **System**  
Allowed values for the `BackgroundRepeat`(General.Products.ProductCatalogs.md#backgroundrepeat) data attribute  
_Allowed Values (General.Products.ProductCatalogsRepository.BackgroundRepeat Enum Members)_  

| Value | Description |
| ---- | --- |
| RepeatBothVertically<br />AndHorizontally | RepeatBothVertically<br />AndHorizontally value. Stored as 'R'. <br /> _Database Value:_ 'R' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'RepeatBothVertically<br />AndHorizontally' |
| RepeatOnlyHorizontally | RepeatOnlyHorizontally value. Stored as 'X'. <br /> _Database Value:_ 'X' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'RepeatOnlyHorizontally' |
| RepeatOnlyVertically | RepeatOnlyVertically value. Stored as 'Y'. <br /> _Database Value:_ 'Y' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'RepeatOnlyVertically' |
| NoRepeat | NoRepeat value. Stored as 'N'. <br /> _Database Value:_ 'N' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'NoRepeat' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **RepeatBothVerticallyAndHorizontally**  
_Show in UI_: **ShownByDefault**  

### Code

Unique catalog code. `Required`

_Type_: **string (16)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
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

### FooterHtml

The footer of the catalog in HTML format. Primarily used for web visualizations of the catalog. null means that there shouldn't be any user-defined footer.

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
_Show in UI_: **CannotBeShown**  

### HeaderHtml

The header of the catalog in HTML format. Primarily used for web visualizations of the catalog. null specifies that there shouldn't be any user-defined header.

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
_Show in UI_: **CannotBeShown**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### Logo

The logo of the product catalog. Used for web and other visualization of the catalog.

_Type_: **byte[] __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Name

Product catalog name (multilanguage). `Required`

_Type_: **[MultilanguageString (254)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Notes

Notes for this ProductCatalog.

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


## Reference Details

### RootProductGroup

The root (starting) product group of the catalog. Each catalog starts from a root product group and includes the products in the sub-groups. `Required` `Filter(multi eq)`

_Type_: **[ProductGroups](General.Products.ProductGroups.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### WebSite

The ECommerce web site, which will be used to host the product catalog. When null, the product catalog would not be hosted with internal ECommerce site. `Filter(multi eq)` `Introduced in version 19.1`

_Type_: **[WebSites](Systems.Config.WebSites.md) (nullable)**  
_Indexed_: **True**  
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

[!list limit=1000 erp.entity=General.Products.ProductCatalogs erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Products.ProductCatalogs erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Products_ProductCatalogs?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Products_ProductCatalogs?$top=10>

