---
uid: Crm.SalesPersonAssignmentRules
---
# Crm.SalesPersonAssignmentRules Entity

**Namespace:** [Crm](Crm.md)  

Contains rules for automated assignment of sales persons for customers, sales orders, leads, etc. Entity: Crm_Sales_Person_Assignment_Rules (Introduced in version 25.1.0.17)

## Default Visualization
Default Display Text Format:  
_{EnterpriseCompany} : {RuleNo} - {SalesPerson}_  
Default Search Members:  
__  
Category:  _Settings_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Crm.SalesPersonAssignmentRules](Crm.SalesPersonAssignmentRules.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ApplyTo](Crm.SalesPersonAssignmentRules.md#applyto) | [ApplyTo](Crm.SalesPersonAssignmentRules.md#applyto) | Determines whether the rule is applied to customers' definitions (customers and leads) or to documents. `Required` `Default("C")` `Filter(eq)` 
| [DisplayText](Crm.SalesPersonAssignmentRules.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [FromDate](Crm.SalesPersonAssignmentRules.md#fromdate) | datetime __nullable__ | Starting date of rule validity. null means no from date restriction. `Filter(eq;ge;le)` 
| [Id](Crm.SalesPersonAssignmentRules.md#id) | guid |  
| [IsActive](Crm.SalesPersonAssignmentRules.md#isactive) | boolean | Indicates whether the current rule is active. `Required` `Default(true)` `Filter(eq)` 
| [Notes](Crm.SalesPersonAssignmentRules.md#notes) | string (max) __nullable__ | Additional information or comments related to the rule. `Filter(like)` 
| [ObjectVersion](Crm.SalesPersonAssignmentRules.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [Priority](Crm.SalesPersonAssignmentRules.md#priority) | [Priority](Crm.SalesPersonAssignmentRules.md#priority) | Priority when multiple rules match the criteria. `Required` `Default("3")` `Filter(eq)` `Introduced in version 25.1.0.23` 
| [RuleNo](Crm.SalesPersonAssignmentRules.md#ruleno) | int32 | Consecutive number of the rule within the selected enterprise company. `Required` `Filter(eq)` `ORD` 
| [ToDate](Crm.SalesPersonAssignmentRules.md#todate) | datetime __nullable__ | Ending date (inclusive) of rule validity. null means that the rule is valid forever. `Filter(eq;ge;le)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [CompanyDivision](Crm.SalesPersonAssignmentRules.md#companydivision) | [CompanyDivisions](General.Contacts.CompanyDivisions.md) (nullable) | Our division, which is in charge of the deal. `Filter(multi eq)` |
| [CustomerType](Crm.SalesPersonAssignmentRules.md#customertype) | [CustomerTypes](Crm.CustomerTypes.md) (nullable) | The type of the customer. `Filter(multi eq)` |
| [EnterpriseCompany](Crm.SalesPersonAssignmentRules.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) | The enterprise company for which the rule applies. `Required` `Filter(multi eq)` |
| [SalesArea](Crm.SalesPersonAssignmentRules.md#salesarea) | [Areas](General.Geography.Areas.md) (nullable) | The sales area, where the customer is located. `Filter(multi eq)` |
| [SalesPerson](Crm.SalesPersonAssignmentRules.md#salesperson) | [SalesPersons](Crm.SalesPersons.md) | The sales person to be assigned by the rule. `Required` `Filter(multi eq)` |


## Attribute Details

### ApplyTo

Determines whether the rule is applied to customers' definitions (customers and leads) or to documents. `Required` `Default("C")` `Filter(eq)`

_Type_: **[ApplyTo](Crm.SalesPersonAssignmentRules.md#applyto)**  
_Category_: **System**  
Allowed values for the `ApplyTo`(Crm.SalesPersonAssignmentRules.md#applyto) data attribute  
_Allowed Values (Crm.SalesPersonAssignmentRulesRepository.ApplyTo Enum Members)_  

| Value | Description |
| ---- | --- |
| Customers | Customers . Stored as 'C'. <br /> _Database Value:_ 'C' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Customers' |
| Documents | Documents . Stored as 'D'. <br /> _Database Value:_ 'D' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Documents' |

_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **Customers**  
_Show in UI_: **ShownByDefault**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### FromDate

Starting date of rule validity. null means no from date restriction. `Filter(eq;ge;le)`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### IsActive

Indicates whether the current rule is active. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### Notes

Additional information or comments related to the rule. `Filter(like)`

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Like**  
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

### Priority

Priority when multiple rules match the criteria. `Required` `Default("3")` `Filter(eq)` `Introduced in version 25.1.0.23`

_Type_: **[Priority](Crm.SalesPersonAssignmentRules.md#priority)**  
_Category_: **System**  
Allowed values for the `Priority`(Crm.SalesPersonAssignmentRules.md#priority) data attribute  
_Allowed Values (Crm.SalesPersonAssignmentRulesRepository.Priority Enum Members)_  

| Value | Description |
| ---- | --- |
| Highest | Highest. Stored as '1'. <br /> _Database Value:_ '1' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Highest' |
| High | High. Stored as '2'. <br /> _Database Value:_ '2' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'High' |
| Medium | Medium. Stored as '3'. <br /> _Database Value:_ '3' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'Medium' |
| Low | Low. Stored as '4'. <br /> _Database Value:_ '4' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'Low' |
| Lowest | Lowest. Stored as '5'. <br /> _Database Value:_ '5' <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'Lowest' |

_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **Medium**  
_Show in UI_: **ShownByDefault**  

### RuleNo

Consecutive number of the rule within the selected enterprise company. `Required` `Filter(eq)` `ORD`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **True**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`obj.SetRuleNo( obj.EnterpriseCompany)`

_Front-End Recalc Expressions:_  
`obj.SetRuleNo( obj.EnterpriseCompany)`
### ToDate

Ending date (inclusive) of rule validity. null means that the rule is valid forever. `Filter(eq;ge;le)`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### CompanyDivision

Our division, which is in charge of the deal. `Filter(multi eq)`

_Type_: **[CompanyDivisions](General.Contacts.CompanyDivisions.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### CustomerType

The type of the customer. `Filter(multi eq)`

_Type_: **[CustomerTypes](Crm.CustomerTypes.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### EnterpriseCompany

The enterprise company for which the rule applies. `Required` `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### SalesArea

The sales area, where the customer is located. `Filter(multi eq)`

_Type_: **[Areas](General.Geography.Areas.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### SalesPerson

The sales person to be assigned by the rule. `Required` `Filter(multi eq)`

_Type_: **[SalesPersons](Crm.SalesPersons.md)**  
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

[!list limit=1000 erp.entity=Crm.SalesPersonAssignmentRules erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.SalesPersonAssignmentRules erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_SalesPersonAssignmentRules?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_SalesPersonAssignmentRules?$top=10>

