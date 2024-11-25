---
uid: Crm.Distribution.SalesPersonTargetLines
---
# Crm.Distribution.SalesPersonTargetLines Entity

**Namespace:** [Crm.Distribution](Crm.Distribution.md)  

Detail records (lines) of targets for sales persons. Entity: Crm_Sales_Person_Target_Lines

## Default Visualization
Default Display Text Format:  
_{PeriodYear}-{PeriodMonth} {TargetType}_  
Default Search Members:  
_SalesPersonTarget.DocumentNo_  
Name Data Member:  
_SalesPersonTarget.EntityName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Crm.Distribution.SalesPersonTargets](Crm.Distribution.SalesPersonTargets.md)  
Aggregate Root:  
[Crm.Distribution.SalesPersonTargets](Crm.Distribution.SalesPersonTargets.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Crm.Distribution.SalesPersonTargetLines.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Crm.Distribution.SalesPersonTargetLines.md#id) | guid |  
| [ObjectVersion](Crm.Distribution.SalesPersonTargetLines.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [PeriodDate](Crm.Distribution.SalesPersonTargetLines.md#perioddate) | datetime | Calculated date representation of the target period (used for grouping, filtering and other auxiliary purposes). `Required` `Filter(ge;le)` `ReadOnly` 
| [PeriodMonth](Crm.Distribution.SalesPersonTargetLines.md#periodmonth) | byte | Month of the period in which the target must be fulfilled (the period is determined by specifying a month and an year). `Required` `Filter(ge;le)` 
| [PeriodYear](Crm.Distribution.SalesPersonTargetLines.md#periodyear) | int16 | Year of the period in which the target must be fulfilled (the period is determined by specifying a month and an year). `Required` `Filter(ge;le)` 
| [TargetAmount](Crm.Distribution.SalesPersonTargetLines.md#targetamount) | [Amount (18, 2)](../data-types.md#amount) __nullable__ | Target amount to be fulfilled by the specified sales person. Deprecated - use Target_Value. `Currency: TargetAmountCurrency` 
| [TargetType](Crm.Distribution.SalesPersonTargetLines.md#targettype) | [TargetType](Crm.Distribution.SalesPersonTargetLines.md#targettype) | Type of target. Defines the meaning of Target_Value. SALES-sales amount, BONUS-count of bonus progs, PACK-count of promo packs. `Required` `Default("SALES")` `Filter(multi eq)` 
| [TargetValue](Crm.Distribution.SalesPersonTargetLines.md#targetvalue) | decimal (9, 2) | Value of target. Meaning depends on target type. `Required` `Default(0)` 
| [TargetWeight](Crm.Distribution.SalesPersonTargetLines.md#targetweight) | decimal (5, 2) | Relative weight of target, comparatively to other targets. `Required` `Default(1)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [BonusProgram](Crm.Distribution.SalesPersonTargetLines.md#bonusprogram) | [BonusPrograms](Crm.Marketing.BonusPrograms.md) (nullable) | Bonus program Id when the target type is BONUS, null otherwise. `Filter(multi eq)` |
| [Document](Crm.Distribution.SalesPersonTargetLines.md#document) | [SalesPersonTargets](Crm.Distribution.SalesPersonTargets.md) | The <see cref="SalesPersonTarget"/> to which this SalesPersonTargetLine belongs. `Required` `Filter(multi eq)` |
| [ProductGroup](Crm.Distribution.SalesPersonTargetLines.md#productgroup) | [ProductGroups](General.Products.ProductGroups.md) (nullable) | Product group for which the target is defined. `Filter(multi eq)` |
| [PromotionalPackage](Crm.Distribution.SalesPersonTargetLines.md#promotionalpackage) | [PromotionalPackages](Crm.PromotionalPackages.md) (nullable) | Promotional Package Id when the target type is PROMO, null otherwise. `Filter(multi eq)` |
| [SalesPerson](Crm.Distribution.SalesPersonTargetLines.md#salesperson) | [SalesPersons](Crm.SalesPersons.md) | Sales person to whom the target is assigned. `Required` `Filter(multi eq)` |
| [SalesPersonTarget](Crm.Distribution.SalesPersonTargetLines.md#salespersontarget) | [SalesPersonTargets](Crm.Distribution.SalesPersonTargets.md) | The <see cref="SalesPersonTarget"/> to which this SalesPersonTargetLine belongs. `Required` `Filter(multi eq)` `Owner` |
| [TargetAmountCurrency](Crm.Distribution.SalesPersonTargetLines.md#targetamountcurrency) | [Currencies](General.Currencies.Currencies.md) (nullable) | Deprecated - use currency in document header. `Filter(multi eq)` |


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

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### PeriodDate

Calculated date representation of the target period (used for grouping, filtering and other auxiliary purposes). `Required` `Filter(ge;le)` `ReadOnly`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### PeriodMonth

Month of the period in which the target must be fulfilled (the period is determined by specifying a month and an year). `Required` `Filter(ge;le)`

_Type_: **byte**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### PeriodYear

Year of the period in which the target must be fulfilled (the period is determined by specifying a month and an year). `Required` `Filter(ge;le)`

_Type_: **int16**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### TargetAmount

Target amount to be fulfilled by the specified sales person. Deprecated - use Target_Value. `Currency: TargetAmountCurrency`

_Type_: **[Amount (18, 2)](../data-types.md#amount) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **CannotBeShown**  

### TargetType

Type of target. Defines the meaning of Target_Value. SALES-sales amount, BONUS-count of bonus progs, PACK-count of promo packs. `Required` `Default("SALES")` `Filter(multi eq)`

_Type_: **[TargetType](Crm.Distribution.SalesPersonTargetLines.md#targettype)**  
_Category_: **System**  
Allowed values for the `TargetType`(Crm.Distribution.SalesPersonTargetLines.md#targettype) data attribute  
_Allowed Values (Crm.Distribution.SalesPersonTargetLinesRepository.TargetType Enum Members)_  

| Value | Description |
| ---- | --- |
| SalesAmount | SalesAmount value. Stored as 'SALES'. <br /> _Database Value:_ 'SALES' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'SalesAmount' |
| NumberOfApplied<br />BonusPrograms | NumberOfApplied<br />BonusPrograms value. Stored as 'BONUS'. <br /> _Database Value:_ 'BONUS' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'NumberOfApplied<br />BonusPrograms' |
| NumberOfPromotional<br />Packages | NumberOfPromotional<br />Packages value. Stored as 'PROMO'. <br /> _Database Value:_ 'PROMO' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'NumberOfPromotional<br />Packages' |
| LocationsCount | LocationsCount value. Stored as 'LOCNT'. <br /> _Database Value:_ 'LOCNT' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'LocationsCount' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **SalesAmount**  
_Show in UI_: **ShownByDefault**  

### TargetValue

Value of target. Meaning depends on target type. `Required` `Default(0)`

_Type_: **decimal (9, 2)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### TargetWeight

Relative weight of target, comparatively to other targets. `Required` `Default(1)`

_Type_: **decimal (5, 2)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **1**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### BonusProgram

Bonus program Id when the target type is BONUS, null otherwise. `Filter(multi eq)`

_Type_: **[BonusPrograms](Crm.Marketing.BonusPrograms.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Document

The <see cref="SalesPersonTarget"/> to which this SalesPersonTargetLine belongs. `Required` `Filter(multi eq)`

_Type_: **[SalesPersonTargets](Crm.Distribution.SalesPersonTargets.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ProductGroup

Product group for which the target is defined. `Filter(multi eq)`

_Type_: **[ProductGroups](General.Products.ProductGroups.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`obj.SalesPersonTarget.ProductGroup`

_Front-End Recalc Expressions:_  
`obj.SalesPersonTarget.ProductGroup`
### PromotionalPackage

Promotional Package Id when the target type is PROMO, null otherwise. `Filter(multi eq)`

_Type_: **[PromotionalPackages](Crm.PromotionalPackages.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### SalesPerson

Sales person to whom the target is assigned. `Required` `Filter(multi eq)`

_Type_: **[SalesPersons](Crm.SalesPersons.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`obj.SalesPersonTarget.SalesPerson`

_Front-End Recalc Expressions:_  
`obj.SalesPersonTarget.SalesPerson`
### SalesPersonTarget

The <see cref="SalesPersonTarget"/> to which this SalesPersonTargetLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[SalesPersonTargets](Crm.Distribution.SalesPersonTargets.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Show in UI_: **ShownByDefault**  

### TargetAmountCurrency

Deprecated - use currency in document header. `Filter(multi eq)`

_Type_: **[Currencies](General.Currencies.Currencies.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`obj.SalesPersonTarget.TargetCurrency`

_Front-End Recalc Expressions:_  
`obj.SalesPersonTarget.TargetCurrency`

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

[!list limit=1000 erp.entity=Crm.Distribution.SalesPersonTargetLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Distribution.SalesPersonTargetLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Distribution_SalesPersonTargetLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Distribution_SalesPersonTargetLines?$top=10>

