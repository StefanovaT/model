---
uid: General.Products.ProductTypes
---
# General.Products.ProductTypes Entity

**Namespace:** [General.Products](General.Products.md)  

Categorization of the products by their nature. Entity: Gen_Product_Types

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Code; Name_  
Code Data Member:  
_Code_  
Name Data Member:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [General.Products.ProductTypes](General.Products.ProductTypes.md)  
  * [General.Products.ProductTypePurchaseInvoiceLineProperties](General.Products.ProductTypePurchaseInvoiceLineProperties.md)  
  * [Crm.Pos.ProductTypeTaxGroups](Crm.Pos.ProductTypeTaxGroups.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Code](General.Products.ProductTypes.md#code) | string (16) | The unique code of the ProductType. `Required` `Filter(eq)` 
| [DisplayText](General.Products.ProductTypes.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](General.Products.ProductTypes.md#id) | guid |  
| [IsDefault](General.Products.ProductTypes.md#isdefault) | boolean | When checked specifies that this type is set by default for new products unless another type is specified in the product groups. `Required` `Default(false)` `Filter(eq)` 
| [IsFixedAsset](General.Products.ProductTypes.md#isfixedasset) | boolean | True when assets are acquired or retired when products from this type are purchased or sold. `Required` `Default(false)` `Filter(eq)` 
| [IsServiceActivityService](General.Products.ProductTypes.md#isserviceactivityservice) | boolean | True when the product corresponds to service used in service documents (like service activities). `Required` `Default(false)` `Filter(eq)` 
| [IsServiced](General.Products.ProductTypes.md#isserviced) | boolean | True when the products of this type create service agreements and can be serviced. `Required` `Default(false)` `Filter(eq)` 
| [IsShipped](General.Products.ProductTypes.md#isshipped) | boolean | True when the products from this type are being shipped after sales. `Required` `Default(false)` `Filter(eq)` 
| [IsStocked](General.Products.ProductTypes.md#isstocked) | boolean | True=The products of this type are stocked in a warehouse; false=otherwise (services). `Required` `Default(true)` `Filter(eq)` 
| [LotAutoCreation](General.Products.ProductTypes.md#lotautocreation) | boolean | If checked specifies that lots are automatically created by the receiving orders with which the products are received. `Required` `Default(false)` 
| [Name](General.Products.ProductTypes.md#name) | [MultilanguageString (254)](../data-types.md#multilanguagestring) | The name of this ProductType. `Required` `Filter(eq;like)` `ORD` 
| [ObjectVersion](General.Products.ProductTypes.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| PurchaseInvoice<br />LineProperties | [ProductTypePurchaseInvoiceLineProperties](General.Products.ProductTypePurchaseInvoiceLineProperties.md) | List of `ProductTypePurchase<br />InvoiceLineProperty`(General.Products.ProductTypePurchase<br />InvoiceLineProperties.md) child objects, based on the `General.Products.ProductTypePurchase<br />InvoiceLineProperty.ProductType`(General.Products.ProductTypePurchase<br />InvoiceLineProperties.md#producttype) back reference 
| TaxGroups | [ProductTypeTaxGroups](Crm.Pos.ProductTypeTaxGroups.md) | List of `ProductTypeTaxGroup`(Crm.Pos.ProductTypeTaxGroups.md) child objects, based on the `Crm.Pos.ProductTypeTaxGroup.ProductType`(Crm.Pos.ProductTypeTaxGroups.md#producttype) back reference 


## Attribute Details

### Code

The unique code of the ProductType. `Required` `Filter(eq)`

_Type_: **string (16)**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Maximum Length_: **16**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IsDefault

When checked specifies that this type is set by default for new products unless another type is specified in the product groups. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### IsFixedAsset

True when assets are acquired or retired when products from this type are purchased or sold. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### IsServiceActivityService

True when the product corresponds to service used in service documents (like service activities). `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### IsServiced

True when the products of this type create service agreements and can be serviced. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### IsShipped

True when the products from this type are being shipped after sales. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### IsStocked

True=The products of this type are stocked in a warehouse; false=otherwise (services). `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  

### LotAutoCreation

If checked specifies that lots are automatically created by the receiving orders with which the products are received. `Required` `Default(false)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Name

The name of this ProductType. `Required` `Filter(eq;like)` `ORD`

_Type_: **[MultilanguageString (254)](../data-types.md#multilanguagestring)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  


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

Creates a notification a sends a real time event to the user.  
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

[!list limit=1000 erp.entity=General.Products.ProductTypes erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Products.ProductTypes erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Products_ProductTypes?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Products_ProductTypes?$top=10>

