---
uid: Logistics.Procurement.PurchaseOrderLines
---
# Logistics.Procurement.PurchaseOrderLines Entity

**Namespace:** [Logistics.Procurement](Logistics.Procurement.md)  

Contains detail lines of purchase orders. Entity: Scm_Purchase_Order_Lines

## Default Visualization
Default Display Text Format:  
_{LineNo}. {PurchaseOrder.DocumentNo} {PurchaseOrder.DocumentType.TypeName:T}_  
Default Search Members:  
_PurchaseOrder.DocumentNo_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Logistics.Procurement.PurchaseOrders](Logistics.Procurement.PurchaseOrders.md)  
Aggregate Root:  
[Logistics.Procurement.PurchaseOrders](Logistics.Procurement.PurchaseOrders.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ConfirmedPricePerUnit](Logistics.Procurement.PurchaseOrderLines.md#confirmedpriceperunit) | [Amount (14, 5)](../data-types.md#amount) __nullable__ | The unit price that is confirmed by the supplier. null if there was no order confirmation. `Currency: PurchaseOrder.DocumentCurrency` 
| [ConfirmedQuantity](Logistics.Procurement.PurchaseOrderLines.md#confirmedquantity) | [Quantity (18, 3)](../data-types.md#quantity) __nullable__ | The quantity that is confirmed by the supplier. null if there was no order confirmation. `Unit: QuantityUnit` `Filter(ge;le)` 
| [ConfirmedQuantityBase](Logistics.Procurement.PurchaseOrderLines.md#confirmedquantitybase) | [Quantity (18, 3)](../data-types.md#quantity) __nullable__ | The theoretical equivalence of Confirmed Quantity in base measurement unit according to the current measurement dimensions of the product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `ReadOnly` 
| [ConfirmedStandard<br />QuantityBase](Logistics.Procurement.PurchaseOrderLines.md#confirmedstandardquantitybase) | [Quantity (18, 3)](../data-types.md#quantity) __nullable__ | The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. null means to convert the value from Confirmed Quantity using the measurement ratios. `Unit: Product.BaseMeasurementCategory.BaseUnit` `ReadOnly` `Introduced in version 18.2` 
| [CurrentBalanceBase](Logistics.Procurement.PurchaseOrderLines.md#currentbalancebase) | [Quantity](../data-types.md#quantity) | The current balance of the product in the selected store and enterprise company. If lot, serial number or product variant are specified the quantity is calculated accordingly. 
| [DisplayText](Logistics.Procurement.PurchaseOrderLines.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Logistics.Procurement.PurchaseOrderLines.md#id) | guid |  
| [LineNo](Logistics.Procurement.PurchaseOrderLines.md#lineno) | int32 | Line number, unique within the PurchaseOrder. Usually is increasing number like 10, 20, 30, ... when initially entering the PurchaseOrder (in order to allow insertions with adjustment documents). `Required` 
| [Notes](Logistics.Procurement.PurchaseOrderLines.md#notes) | string (254) __nullable__ | Notes for this PurchaseOrderLine. 
| [ObjectVersion](Logistics.Procurement.PurchaseOrderLines.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [ParentLineNo](Logistics.Procurement.PurchaseOrderLines.md#parentlineno) | int32 __nullable__ | The number of the line within the parent document, which the current line executes. null when the current line does not execute line. `Filter(eq)` `Introduced in version 18.2` 
| [PlannedDeliveryDate](Logistics.Procurement.PurchaseOrderLines.md#planneddeliverydate) | datetime | The planned delivery date for this line. `Required` `Filter(ge;le)` 
| [PricePerUnit](Logistics.Procurement.PurchaseOrderLines.md#priceperunit) | [Amount (14, 5)](../data-types.md#amount) __nullable__ | The expected unit price of the ordered products, in the document currency. `Currency: PurchaseOrder.DocumentCurrency` 
| [ProductDescription](Logistics.Procurement.PurchaseOrderLines.md#productdescription) | [MultilanguageString (254)](../data-types.md#multilanguagestring) | The name of the ordered product, initially copied from the name in the product definition. The field can be edited by the user. `Required` `Filter(like)` 
| [Quantity](Logistics.Procurement.PurchaseOrderLines.md#quantity) | [Quantity (18, 3)](../data-types.md#quantity) | The quantity ordered. `Unit: QuantityUnit` `Required` `Default(0)` `Filter(ge;le)` 
| [QuantityBase](Logistics.Procurement.PurchaseOrderLines.md#quantitybase) | [Quantity (18, 3)](../data-types.md#quantity) | The equivalence of Quantity, in the base measurement category of the product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `Default(0)` `ReadOnly` 
| [StandardQuantityBase](Logistics.Procurement.PurchaseOrderLines.md#standardquantitybase) | [Quantity (18, 3)](../data-types.md#quantity) | The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` `Introduced in version 18.2` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Document](Logistics.Procurement.PurchaseOrderLines.md#document) | [PurchaseOrders](Logistics.Procurement.PurchaseOrders.md) | The <see cref="PurchaseOrder"/> to which this PurchaseOrderLine belongs. `Required` `Filter(multi eq)` |
| [Lot](Logistics.Procurement.PurchaseOrderLines.md#lot) | [Lots](Logistics.Inventory.Lots.md) (nullable) | When not null, indicates that a specific lot is required to be delivered. `Filter(multi eq)` |
| [ParentDocument](Logistics.Procurement.PurchaseOrderLines.md#parentdocument) | [Documents](General.Documents.Documents.md) (nullable) | The document, which the current line executes. null when the current line does not execute another line. `Filter(multi eq)` `Introduced in version 18.2` |
| [Product](Logistics.Procurement.PurchaseOrderLines.md#product) | [Products](General.Products.Products.md) | The ordered product. `Required` `Filter(multi eq)` |
| [ProductCode](Logistics.Procurement.PurchaseOrderLines.md#productcode) | [ProductCodes](General.Products.ProductCodes.md) (nullable) | When not null, specifies that the product was selected using the specified product code record. `Filter(multi eq)` |
| [ProductVariant](Logistics.Procurement.PurchaseOrderLines.md#productvariant) | [ProductVariants](General.Products.ProductVariants.md) (nullable) | If specified determines which product variant of the current product in this line is used. `Filter(multi eq)` |
| [PurchaseOrder](Logistics.Procurement.PurchaseOrderLines.md#purchaseorder) | [PurchaseOrders](Logistics.Procurement.PurchaseOrders.md) | The <see cref="PurchaseOrder"/> to which this PurchaseOrderLine belongs. `Required` `Filter(multi eq)` `Owner` |
| [PurchaseProductPrice](Logistics.Procurement.PurchaseOrderLines.md#purchaseproductprice) | [PurchaseProductPrices](Logistics.Procurement.PurchaseProductPrices.md) (nullable) | When not null, specifies that the purchase unit price is loaded automatically from the specified purchase price record. `Filter(multi eq)` |
| [QuantityUnit](Logistics.Procurement.PurchaseOrderLines.md#quantityunit) | [MeasurementUnits](General.Products.MeasurementUnits.md) | The measurement unit of Quantity. `Required` `Filter(multi eq)` |
| [RequisitionLine](Logistics.Procurement.PurchaseOrderLines.md#requisitionline) | [RequisitionLines](Logistics.Procurement.RequisitionLines.md) (nullable) | When not null, specifies that the current line is based on the specified requisition line. `Filter(multi eq)` |


## Attribute Details

### ConfirmedPricePerUnit

The unit price that is confirmed by the supplier. null if there was no order confirmation. `Currency: PurchaseOrder.DocumentCurrency`

_Type_: **[Amount (14, 5)](../data-types.md#amount) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### ConfirmedQuantity

The quantity that is confirmed by the supplier. null if there was no order confirmation. `Unit: QuantityUnit` `Filter(ge;le)`

_Type_: **[Quantity (18, 3)](../data-types.md#quantity) __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### ConfirmedQuantityBase

The theoretical equivalence of Confirmed Quantity in base measurement unit according to the current measurement dimensions of the product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `ReadOnly`

_Type_: **[Quantity (18, 3)](../data-types.md#quantity) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.ConfirmedQuantity == null), null, IIF( ( ( obj.QuantityUnit == null) OrElse ( obj.Product == null)), obj.ConfirmedQuantityBase, obj.ConfirmedQuantity.ConvertTo( obj.Product.BaseUnit, obj.Product)))`
### ConfirmedStandardQuantityBase

The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. null means to convert the value from Confirmed Quantity using the measurement ratios. `Unit: Product.BaseMeasurementCategory.BaseUnit` `ReadOnly` `Introduced in version 18.2`

_Type_: **[Quantity (18, 3)](../data-types.md#quantity) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.ConfirmedQuantity == null), null, IIF( ( ( obj.QuantityUnit == null) OrElse ( obj.Product == null)), obj.ConfirmedStandardQuantityBase, obj.ConfirmedQuantity.ConvertTo( obj.Product.BaseUnit, obj.Product)))`
### CurrentBalanceBase

The current balance of the product in the selected store and enterprise company. If lot, serial number or product variant are specified the quantity is calculated accordingly.

_Type_: **[Quantity](../data-types.md#quantity)**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

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

### LineNo

Line number, unique within the PurchaseOrder. Usually is increasing number like 10, 20, 30, ... when initially entering the PurchaseOrder (in order to allow insertions with adjustment documents). `Required`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`( obj.PurchaseOrder.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.PurchaseOrder.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### Notes

Notes for this PurchaseOrderLine.

_Type_: **string (254) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
_Show in UI_: **HiddenByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### ParentLineNo

The number of the line within the parent document, which the current line executes. null when the current line does not execute line. `Filter(eq)` `Introduced in version 18.2`

_Type_: **int32 __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### PlannedDeliveryDate

The planned delivery date for this line. `Required` `Filter(ge;le)`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

_Back-End Default Expression:_  
`obj.PurchaseOrder.PlannedDeliveryDate`

_Front-End Recalc Expressions:_  
`obj.PurchaseOrder.PlannedDeliveryDate`
### PricePerUnit

The expected unit price of the ordered products, in the document currency. `Currency: PurchaseOrder.DocumentCurrency`

_Type_: **[Amount (14, 5)](../data-types.md#amount) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

_Front-End Recalc Expressions:_  
`obj.GetPurchasePriceForProductPriceUnit( obj.PurchaseProductPrice, obj.QuantityUnit)`
### ProductDescription

The name of the ordered product, initially copied from the name in the product definition. The field can be edited by the user. `Required` `Filter(like)`

_Type_: **[MultilanguageString (254)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

_Back-End Default Expression:_  
`obj.Product.Name`

_Front-End Recalc Expressions:_  
`obj.Product.Name`
### Quantity

The quantity ordered. `Unit: QuantityUnit` `Required` `Default(0)` `Filter(ge;le)`

_Type_: **[Quantity (18, 3)](../data-types.md#quantity)**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  
_Show in UI_: **ShownByDefault**  

### QuantityBase

The equivalence of Quantity, in the base measurement category of the product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `Default(0)` `ReadOnly`

_Type_: **[Quantity (18, 3)](../data-types.md#quantity)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  
_Show in UI_: **HiddenByDefault**  

_Back-End Default Expression:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.QuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.QuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`
### StandardQuantityBase

The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` `Introduced in version 18.2`

_Type_: **[Quantity (18, 3)](../data-types.md#quantity)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

_Back-End Default Expression:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.StandardQuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.StandardQuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`

## Reference Details

### Document

The <see cref="PurchaseOrder"/> to which this PurchaseOrderLine belongs. `Required` `Filter(multi eq)`

_Type_: **[PurchaseOrders](Logistics.Procurement.PurchaseOrders.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Lot

When not null, indicates that a specific lot is required to be delivered. `Filter(multi eq)`

_Type_: **[Lots](Logistics.Inventory.Lots.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### ParentDocument

The document, which the current line executes. null when the current line does not execute another line. `Filter(multi eq)` `Introduced in version 18.2`

_Type_: **[Documents](General.Documents.Documents.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### Product

The ordered product. `Required` `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

_Front-End Recalc Expressions:_  
`obj.ProductCode.Product`
### ProductCode

When not null, specifies that the product was selected using the specified product code record. `Filter(multi eq)`

_Type_: **[ProductCodes](General.Products.ProductCodes.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

_Front-End Recalc Expressions:_  
`IIF( ( ( obj.ProductCode != null) AndAlso ( obj.Product != obj.ProductCode.Product)), null, obj.ProductCode)`
### ProductVariant

If specified determines which product variant of the current product in this line is used. `Filter(multi eq)`

_Type_: **[ProductVariants](General.Products.ProductVariants.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### PurchaseOrder

The <see cref="PurchaseOrder"/> to which this PurchaseOrderLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[PurchaseOrders](Logistics.Procurement.PurchaseOrders.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Show in UI_: **ShownByDefault**  

### PurchaseProductPrice

When not null, specifies that the purchase unit price is loaded automatically from the specified purchase price record. `Filter(multi eq)`

_Type_: **[PurchaseProductPrices](Logistics.Procurement.PurchaseProductPrices.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

_Front-End Recalc Expressions:_  
`obj.DeterminePurchaseProductPrice( Convert( obj.Document.DocumentDate, Nullable`1), obj.PurchaseOrder.Supplier, obj.Product, obj.Quantity, obj.Document.EnterpriseCompany, obj.PurchaseOrder.PurchasePriceList)`
### QuantityUnit

The measurement unit of Quantity. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.Products.MeasurementUnits.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

_Front-End Recalc Expressions:_  
`obj.ProductCode.CodingSystem.DefaultMeasurementUnit.IfNullThen( obj.Product.PurchaseMeasurementUnit).IfNullThen( obj.Product.MeasurementUnit).IfNullThen( obj.QuantityUnit)`
### RequisitionLine

When not null, specifies that the current line is based on the specified requisition line. `Filter(multi eq)`

_Type_: **[RequisitionLines](Logistics.Procurement.RequisitionLines.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  


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

[!list limit=1000 erp.entity=Logistics.Procurement.PurchaseOrderLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Logistics.Procurement.PurchaseOrderLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Logistics_Procurement_PurchaseOrderLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Logistics_Procurement_PurchaseOrderLines?$top=10>

