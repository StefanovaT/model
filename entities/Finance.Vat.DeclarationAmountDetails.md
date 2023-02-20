---
uid: Finance.Vat.DeclarationAmountDetails
---
# Finance.Vat.DeclarationAmountDetails View

**Namespace:** [Finance.Vat](Finance.Vat.md)  

Base data for calculation of Vat Box amounts. Entity: VAT_Declaration_Box_Deal_Type_Amounts (Introduced in version 23.1.2.31)

## Default Visualization
Default Display Text Format:  
_{BoxId}: {DeclarationId}_  
Default Search Members:  
__  
Category:  _Views_  
Show in UI:  _ShownByDefault_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Finance.Vat.DeclarationAmountDetails](Finance.Vat.DeclarationAmountDetails.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Amount](Finance.Vat.DeclarationAmountDetails.md#amount) | decimal (15, 2) | The amount of the operation according to the category. `Required` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Box](Finance.Vat.DeclarationAmountDetails.md#box) | [BoxTypes](Finance.Vat.BoxTypes.md) | The type of box in a VAT declaration. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from VAT_Box_Types_Table.Box_Type_Id` |
| [Declaration](Finance.Vat.DeclarationAmountDetails.md#declaration) | [Declarations](Finance.Vat.Declarations.md) | The VAT declaration. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from VAT_Declarations_Table.Declaration_Id` |
| [VATEntry](Finance.Vat.DeclarationAmountDetails.md#vatentry) | [Entries](Finance.Vat.Entries.md) | Unique identification number of this VAT entry. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from VAT_Entries_Table.Entry_Id` |


## Attribute Details

### Amount

The amount of the operation according to the category. `Required`

_Type_: **decimal (15, 2)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### Box

The type of box in a VAT declaration. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from VAT_Box_Types_Table.Box_Type_Id`

_Type_: **[BoxTypes](Finance.Vat.BoxTypes.md)**  
_Category_: **System**  
_Inherited From_: **VAT_Box_Types_Table.Box_Type_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **ShownByDefault**  

### Declaration

The VAT declaration. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from VAT_Declarations_Table.Declaration_Id`

_Type_: **[Declarations](Finance.Vat.Declarations.md)**  
_Category_: **System**  
_Inherited From_: **VAT_Declarations_Table.Declaration_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **ShownByDefault**  

### VATEntry

Unique identification number of this VAT entry. `Required` `Default(New Guid)` `Filter(multi eq)` `Inherited from VAT_Entries_Table.Entry_Id`

_Type_: **[Entries](Finance.Vat.Entries.md)**  
_Category_: **System**  
_Inherited From_: **VAT_Entries_Table.Entry_Id**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **ShownByDefault**  


## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Vat_DeclarationAmountDetails?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Vat_DeclarationAmountDetails?$top=10>

