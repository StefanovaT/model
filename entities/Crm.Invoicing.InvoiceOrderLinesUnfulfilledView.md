---
uid: Crm.Invoicing.InvoiceOrderLinesUnfulfilledView
---
# Crm.Invoicing.InvoiceOrderLinesUnfulfilledView View

**Namespace:** [Crm.Invoicing](Crm.Invoicing.md)  

Returns the uninvoiced (unfulfilled) Invoice Order Lines from Invoice Orders, which are Released. Is_Fulfilled and Is_QuantityFulfilled can be used to filter out lines which appear fulfilled. For best performance, the invoice orders should be finished after fulfilling. Entity: Crm_Invoice_Order_Lines_Unfulfilled_View (Introduced in version 24.1.5.17)

## Default Visualization
Default Display Text Format:  
_{InvoiceOrderLineId}: {LineAmountValue}_  
Default Search Members:  
__  
Category:  _Views_  
Show in UI:  _CannotBeShown_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Crm.Invoicing.InvoiceOrders](Crm.Invoicing.InvoiceOrders.md)  
Aggregate Root:  
[Crm.Invoicing.InvoiceOrders](Crm.Invoicing.InvoiceOrders.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [BusinessReason](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#businessreason) | [InvoicingBusinessReason](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#businessreason) | Business reason for invoicing of this product or service. S=Shipment, P=Payment. `Required` `Default("S")` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Business_Reason` `Introduced in version 24.1.5.19` 
| [IsFulfilled](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#isfulfilled) | int32 | Returns 1/true when both the Quantity and Amount are fulfilled or only negligible (less than 0.001 for qty and 0.01 for amount) sums remain. Please note, that filtering by this field forces full scan and calculation of remaining quantities and amounts for all non-finished invoice orders. For best performance, the invoice orders should be finished after fulfilling. `Required` `Filter(multi eq)` 
| [IsQuantityFulfilled](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#isquantityfulfilled) | int32 | Returns 1/true when the Quantity is fulfilled or only negligible (less than 0.001) sum remains. Please note, that filtering by this field forces full scan and calculation of remaining quantities and amounts for all non-finished invoice orders. For best performance, the invoice orders should be finished after fulfilling. `Required` `Filter(multi eq)` 
| [LineAmount](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#lineamount) | [Amount (14, 2)](../data-types.md#amount) | Amount for the line in the currency of the parent document. Usually equals Quantity * Unit_Price. When Quantity = 0, Unit Price is undefined and this contains the total line amount. `Currency: InvoiceOrder.DocumentCurrency` `Required` `Default(0)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Line_Amount` 
| [LineCustomDiscountPercent](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#linecustomdiscountpercent) | decimal (7, 6) | User-defined discount for the line. `Required` `Default(0)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Line_Custom_Discount_<br />Percent` `Introduced in version 24.1.5.19` 
| [LineNo](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#lineno) | int32 | Line number. `Required` 
| [LineStandardDiscount<br />Percent](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#linestandarddiscountpercent) | decimal (7, 6) | Standard discount for the line. This is automatically computed according to discount conditions. `Required` `Default(0)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Line_Standard_<br />Discount_Percent` `Introduced in version 24.1.5.19` 
| [OrderRemainingLineAmount](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#orderremaininglineamount) | [Amount (38, 2)](../data-types.md#amount) | The uninvoiced (unfulfilled) line amount of the invoice order line. `Currency: InvoiceOrder.DocumentCurrency` `Required` `Filter(eq;ge;le)` 
| [OrderRemaining<br />StandardQuantity](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#orderremainingstandardquantity) | [Quantity (38, 6)](../data-types.md#quantity) | The uninvoiced (unfulfilled) quantity of the invoice order line in base measurement unit. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `Filter(eq;ge;le)` 
| [ProductDescription](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#productdescription) | [MultilanguageString (254)](../data-types.md#multilanguagestring) | The description of Product. Initially copied from the name of the Product or from the generating document. `Required` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Product_Description` `Introduced in version 24.1.5.19` 
| [Quantity](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#quantity) | [Quantity (12, 3)](../data-types.md#quantity) | The quantity of the product to invoice. `Unit: QuantityUnit` `Required` `Default(1)` `Filter(ge;le)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Quantity` 
| [QuantityBase](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#quantitybase) | [Quantity (12, 3)](../data-types.md#quantity) | The equivalent of Quantity in the base measurement unit of the Product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Quantity_Base` 
| [StandardQuantityBase](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#standardquantitybase) | [Quantity (12, 3)](../data-types.md#quantity) | The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Standard_Quantity_Base` 
| [UnitPrice](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#unitprice) | [Amount (14, 5)](../data-types.md#amount) | Unit selling price in the unit of measure, specified in Quantity Unit. `Currency: InvoiceOrder.DocumentCurrency` `Required` `Default(0)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Unit_Price` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [InvoiceOrder](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#invoiceorder) | [InvoiceOrders](Crm.Invoicing.InvoiceOrders.md) | The invoice order to which the invoice order line belongs. `Required` `Filter(multi eq)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Invoice_Order_Id` `Introduced in version 24.1.5.19` `Owner` |
| [InvoiceOrderLine](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#invoiceorderline) | [InvoiceOrderLines](Crm.Invoicing.InvoiceOrderLines.md) | The line containing the ordered quantity and amount. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Invoice_Order_Line_Id` `Introduced in version 24.1.5.19` `FilterableReference` |
| [LineDealType](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#linedealtype) | [DealTypes](Finance.Vat.DealTypes.md) (nullable) | Deal type to be passed to the invoice line. If deal type in the line is different from deal type in the header another VAT entry is created from the invoice. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Line_Deal_Type_Id` `Introduced in version 24.1.5.19` |
| [LineDiscount](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#linediscount) | [LineDiscounts](Crm.LineDiscounts.md) (nullable) | The line discount type used to form the Line_Standard_<br />Discount_Percent. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Line_Discount_Id` `Introduced in version 24.1.5.19` |
| [PaymentTransaction](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#paymenttransaction) | [PaymentTransactions](Finance.Payments.PaymentTransactions.md) (nullable) | The payment transaction, which is to be invoiced by this line, when Business Reason = P. Used to reconcile the invoice with the payments in the case of advance payment. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Payment_Transaction_Id` `Introduced in version 24.1.5.19` |
| [Product](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#product) | [Products](General.Products.Products.md) (nullable) | The product, which is ordered for invoicing. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Product_Id` `Introduced in version 24.1.5.19` |
| [QuantityUnit](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#quantityunit) | [MeasurementUnits](General.Products.MeasurementUnits.md) | The measurement unit of Quantity. `Required` `Filter(multi eq)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Quantity_Unit_Id` `Introduced in version 24.1.5.19` |
| [SalesOrder](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#salesorder) | [SalesOrders](Crm.Sales.SalesOrders.md) (nullable) | When not null specifies the Sales Order that is ordered to be invoiced by this line. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Sales_Order_Id` `Introduced in version 24.1.5.19` |
| [SalesOrderLine](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#salesorderline) | [SalesOrderLines](Crm.Sales.SalesOrderLines.md) (nullable) | When not null specifies the Sales Order line that is ordered to be invoiced by this line. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Sales_Order_Line_Id` `Introduced in version 24.1.5.19` |
| [SerialNumber](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#serialnumber) | [SerialNumbers](Logistics.Inventory.SerialNumbers.md) (nullable) | Which serial number to receive/issue. null means that serial number is unknown or not applicable. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Serial_Number_Id` `Introduced in version 24.1.5.19` |
| [TransactionLine](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#transactionline) | [StoreTransactionLines](Logistics.Inventory.StoreTransactionLines.md) (nullable) | The store transaction line that is to be invoiced by this line, for Business Reason = S. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_<br />Lines_Table.Transaction_Line_Id` `Introduced in version 24.1.5.19` |


## Attribute Details

### BusinessReason

Business reason for invoicing of this product or service. S=Shipment, P=Payment. `Required` `Default("S")` `Inherited from Crm_Invoice_Order_Lines_Table.Business_Reason` `Introduced in version 24.1.5.19`

_Type_: **[InvoicingBusinessReason](Crm.Invoicing.InvoiceOrderLinesUnfulfilledView.md#businessreason)**  
_Category_: **System**  
Generic enum type for InvoicingBusinessReason properties  
_Allowed Values (Crm.Invoicing.InvoicingBusinessReason Enum Members)_  

| Value | Description |
| ---- | --- |
| Payment | Payment value. Stored as 'P'. <br /> _Database Value:_ 'P' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Payment' |
| Shipment | Shipment value. Stored as 'S'. <br /> _Database Value:_ 'S' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Shipment' |

_Inherited From_: **Crm_Invoice_Order_Lines_Table.Business_Reason**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Shipment**  
_Show in UI_: **ShownByDefault**  

### IsFulfilled

Returns 1/true when both the Quantity and Amount are fulfilled or only negligible (less than 0.001 for qty and 0.01 for amount) sums remain. Please note, that filtering by this field forces full scan and calculation of remaining quantities and amounts for all non-finished invoice orders. For best performance, the invoice orders should be finished after fulfilling. `Required` `Filter(multi eq)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### IsQuantityFulfilled

Returns 1/true when the Quantity is fulfilled or only negligible (less than 0.001) sum remains. Please note, that filtering by this field forces full scan and calculation of remaining quantities and amounts for all non-finished invoice orders. For best performance, the invoice orders should be finished after fulfilling. `Required` `Filter(multi eq)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### LineAmount

Amount for the line in the currency of the parent document. Usually equals Quantity * Unit_Price. When Quantity = 0, Unit Price is undefined and this contains the total line amount. `Currency: InvoiceOrder.DocumentCurrency` `Required` `Default(0)` `Inherited from Crm_Invoice_Order_Lines_Table.Line_Amount`

_Type_: **[Amount (14, 2)](../data-types.md#amount)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Line_Amount**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  
_Show in UI_: **ShownByDefault**  

### LineCustomDiscountPercent

User-defined discount for the line. `Required` `Default(0)` `Inherited from Crm_Invoice_Order_Lines_Table.Line_Custom_Discount_Percent` `Introduced in version 24.1.5.19`

_Type_: **decimal (7, 6)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Line_Custom_Discount_Percent**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### LineNo

Line number. `Required`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### LineStandardDiscountPercent

Standard discount for the line. This is automatically computed according to discount conditions. `Required` `Default(0)` `Inherited from Crm_Invoice_Order_Lines_Table.Line_Standard_Discount_Percent` `Introduced in version 24.1.5.19`

_Type_: **decimal (7, 6)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Line_Standard_Discount_Percent**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### OrderRemainingLineAmount

The uninvoiced (unfulfilled) line amount of the invoice order line. `Currency: InvoiceOrder.DocumentCurrency` `Required` `Filter(eq;ge;le)`

_Type_: **[Amount (38, 2)](../data-types.md#amount)**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### OrderRemainingStandardQuantity

The uninvoiced (unfulfilled) quantity of the invoice order line in base measurement unit. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `Filter(eq;ge;le)`

_Type_: **[Quantity (38, 6)](../data-types.md#quantity)**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ProductDescription

The description of Product. Initially copied from the name of the Product or from the generating document. `Required` `Inherited from Crm_Invoice_Order_Lines_Table.Product_Description` `Introduced in version 24.1.5.19`

_Type_: **[MultilanguageString (254)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Product_Description**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Quantity

The quantity of the product to invoice. `Unit: QuantityUnit` `Required` `Default(1)` `Filter(ge;le)` `Inherited from Crm_Invoice_Order_Lines_Table.Quantity`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Quantity**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  
_Show in UI_: **ShownByDefault**  

### QuantityBase

The equivalent of Quantity in the base measurement unit of the Product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `Inherited from Crm_Invoice_Order_Lines_Table.Quantity_Base`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Quantity_Base**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### StandardQuantityBase

The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` `Inherited from Crm_Invoice_Order_Lines_Table.Standard_Quantity_Base`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Standard_Quantity_Base**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### UnitPrice

Unit selling price in the unit of measure, specified in Quantity Unit. `Currency: InvoiceOrder.DocumentCurrency` `Required` `Default(0)` `Inherited from Crm_Invoice_Order_Lines_Table.Unit_Price`

_Type_: **[Amount (14, 5)](../data-types.md#amount)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Unit_Price**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### InvoiceOrder

The invoice order to which the invoice order line belongs. `Required` `Filter(multi eq)` `Inherited from Crm_Invoice_Order_Lines_Table.Invoice_Order_Id` `Introduced in version 24.1.5.19` `Owner`

_Type_: **[InvoiceOrders](Crm.Invoicing.InvoiceOrders.md)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Invoice_Order_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Show in UI_: **ShownByDefault**  

### InvoiceOrderLine

The line containing the ordered quantity and amount. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from Crm_Invoice_Order_Lines_Table.Invoice_Order_Line_Id` `Introduced in version 24.1.5.19` `FilterableReference`

_Type_: **[InvoiceOrderLines](Crm.Invoicing.InvoiceOrderLines.md)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Invoice_Order_Line_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Default Value_: **NewGuid**  
_Show in UI_: **ShownByDefault**  

### LineDealType

Deal type to be passed to the invoice line. If deal type in the line is different from deal type in the header another VAT entry is created from the invoice. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_Lines_Table.Line_Deal_Type_Id` `Introduced in version 24.1.5.19`

_Type_: **[DealTypes](Finance.Vat.DealTypes.md) (nullable)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Line_Deal_Type_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### LineDiscount

The line discount type used to form the Line_Standard_Discount_Percent. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_Lines_Table.Line_Discount_Id` `Introduced in version 24.1.5.19`

_Type_: **[LineDiscounts](Crm.LineDiscounts.md) (nullable)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Line_Discount_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### PaymentTransaction

The payment transaction, which is to be invoiced by this line, when Business Reason = P. Used to reconcile the invoice with the payments in the case of advance payment. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_Lines_Table.Payment_Transaction_Id` `Introduced in version 24.1.5.19`

_Type_: **[PaymentTransactions](Finance.Payments.PaymentTransactions.md) (nullable)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Payment_Transaction_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Product

The product, which is ordered for invoicing. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_Lines_Table.Product_Id` `Introduced in version 24.1.5.19`

_Type_: **[Products](General.Products.Products.md) (nullable)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Product_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### QuantityUnit

The measurement unit of Quantity. `Required` `Filter(multi eq)` `Inherited from Crm_Invoice_Order_Lines_Table.Quantity_Unit_Id` `Introduced in version 24.1.5.19`

_Type_: **[MeasurementUnits](General.Products.MeasurementUnits.md)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Quantity_Unit_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### SalesOrder

When not null specifies the Sales Order that is ordered to be invoiced by this line. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_Lines_Table.Sales_Order_Id` `Introduced in version 24.1.5.19`

_Type_: **[SalesOrders](Crm.Sales.SalesOrders.md) (nullable)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Sales_Order_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### SalesOrderLine

When not null specifies the Sales Order line that is ordered to be invoiced by this line. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_Lines_Table.Sales_Order_Line_Id` `Introduced in version 24.1.5.19`

_Type_: **[SalesOrderLines](Crm.Sales.SalesOrderLines.md) (nullable)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Sales_Order_Line_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### SerialNumber

Which serial number to receive/issue. null means that serial number is unknown or not applicable. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_Lines_Table.Serial_Number_Id` `Introduced in version 24.1.5.19`

_Type_: **[SerialNumbers](Logistics.Inventory.SerialNumbers.md) (nullable)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Serial_Number_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### TransactionLine

The store transaction line that is to be invoiced by this line, for Business Reason = S. `Filter(multi eq)` `Inherited from Crm_Invoice_Order_Lines_Table.Transaction_Line_Id` `Introduced in version 24.1.5.19`

_Type_: **[StoreTransactionLines](Logistics.Inventory.StoreTransactionLines.md) (nullable)**  
_Category_: **System**  
_Inherited From_: **Crm_Invoice_Order_Lines_Table.Transaction_Line_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  


## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Invoicing_InvoiceOrderLinesUnfulfilledView?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Invoicing_InvoiceOrderLinesUnfulfilledView?$top=10>

