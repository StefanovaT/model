---
uid: Crm.Subscriptions.Subscriptions
---
# Crm.Subscriptions.Subscriptions Entity

**Namespace:** [Crm.Subscriptions](Crm.Subscriptions.md)  

Agreements with customers for periodic delivery of services and billing. Entity: Sm_Subscriptions (Introduced in version 24.1.2.6)

## Default Visualization
Default Display Text Format:  
_{Customer.Party.PartyName:T} - {BillingCycle.Name:T}_  
Default Search Members:  
__  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Crm.Subscriptions.Subscriptions](Crm.Subscriptions.Subscriptions.md)  
  * [Crm.Subscriptions.SubscriptionLines](Crm.Subscriptions.SubscriptionLines.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Crm.Subscriptions.Subscriptions.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [FromDate](Crm.Subscriptions.Subscriptions.md#fromdate) | date | The starting date of the subscription. `Required` `Default(NowUtc)` `Filter(eq;ge;le)` 
| [Id](Crm.Subscriptions.Subscriptions.md#id) | guid |  
| [Notes](Crm.Subscriptions.Subscriptions.md#notes) | [MultilanguageString (max)](../data-types.md#multilanguagestring) __nullable__ | Notes for this Subscription. `Filter(like)` 
| [ObjectVersion](Crm.Subscriptions.Subscriptions.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [ToDate](Crm.Subscriptions.Subscriptions.md#todate) | date __nullable__ | The final date of the subscription if it is time fenced. null means that the subscription is currently open-ended. `Filter(eq;ge;le)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [BillingCycle](Crm.Subscriptions.Subscriptions.md#billingcycle) | [BillingCycles](Crm.Subscriptions.BillingCycles.md) (nullable) | The cycle which to use for billing purposes. null means that there would be no automatic billing for this subscription. `Filter(multi eq)` |
| [Customer](Crm.Subscriptions.Subscriptions.md#customer) | [Customers](Crm.Customers.md) | The customer of the subscription. `Required` `Filter(multi eq)` |
| [EnterpriseCompany](Crm.Subscriptions.Subscriptions.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) | The enterprise company, which issues the subscription. `Required` `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Lines | [SubscriptionLines](Crm.Subscriptions.SubscriptionLines.md) | List of `SubscriptionLine`(Crm.Subscriptions.SubscriptionLines.md) child objects, based on the `Crm.Subscriptions.SubscriptionLine.Subscription`(Crm.Subscriptions.SubscriptionLines.md#subscription) back reference 


## Attribute Details

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### FromDate

The starting date of the subscription. `Required` `Default(NowUtc)` `Filter(eq;ge;le)`

_Type_: **date**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDateTimeUtc**  
_Show in UI_: **ShownByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### Notes

Notes for this Subscription. `Filter(like)`

_Type_: **[MultilanguageString (max)](../data-types.md#multilanguagestring) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### ToDate

The final date of the subscription if it is time fenced. null means that the subscription is currently open-ended. `Filter(eq;ge;le)`

_Type_: **date __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### BillingCycle

The cycle which to use for billing purposes. null means that there would be no automatic billing for this subscription. `Filter(multi eq)`

_Type_: **[BillingCycles](Crm.Subscriptions.BillingCycles.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Customer

The customer of the subscription. `Required` `Filter(multi eq)`

_Type_: **[Customers](Crm.Customers.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### EnterpriseCompany

The enterprise company, which issues the subscription. `Required` `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md)**  
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

[!list limit=1000 erp.entity=Crm.Subscriptions.Subscriptions erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Subscriptions.Subscriptions erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Subscriptions_Subscriptions?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Subscriptions_Subscriptions?$top=10>

