---
uid: Crm.Customers
---
# Crm.Customers Entity

**Namespace:** [Crm](Crm.md)  

Customer contracts list. For each combination of Enterprise Company and external Party there can be zero or one records of this. Entity: Crm_Customers

## Default Visualization
Default Display Text Format:  
_{Party.PartyName:T}_  
Default Search Members:  
_Number; Party.PartyName_  
Code Data Member:  
_Number_  
Name Data Member:  
_Party.PartyName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  
Object category attribute:  _CustomerTypeId_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Crm.Customers](Crm.Customers.md)  
  * [Crm.CustomerProducts](Crm.CustomerProducts.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Active](Crm.Customers.md#active) | boolean | True if the customer is active, false - not to list in combo boxes for choosing in new documents. `Required` `Default(true)` `Filter(eq)` 
| [AllowUseAsPrimaryCustomer](Crm.Customers.md#allowuseasprimarycustomer) | boolean | Specifies whether to allow the customer to be used as primary customer in a sales deal. `Required` `Default(false)` `Filter(eq)` 
| [AllowUseAsShipToCustomer](Crm.Customers.md#allowuseasshiptocustomer) | boolean | True to allow the customer to be used as ship to customer in a sales deal. `Required` `Default(false)` `Filter(eq)` 
| [CreationTime](Crm.Customers.md#creationtime) | datetime __nullable__ | Date and time when the Customer was created. `Filter(ge;le)` `ReadOnly` 
| [CreationUser](Crm.Customers.md#creationuser) | string (64) __nullable__ | Login name of the user, who created the Customer. `Filter(like)` `ReadOnly` 
| [CreditLimit](Crm.Customers.md#creditlimit) | [Amount (18, 2)](../data-types.md#amount) __nullable__ | Total credit limit for the customer in the enterprise company base currency. null means there is no limit. `Currency: EnterpriseCompany?.BaseCurrency` 
| [DefaultDeliveryTermDays](Crm.Customers.md#defaultdeliverytermdays) | int32 | Default term in days for goods delivery, starting at the day of sale. `Required` `Default(0)` 
| [DefaultPaymentStartDays](Crm.Customers.md#defaultpaymentstartdays) | int32 | Specifies the number of days after the sales order, when the payment becomes due. 0 means that the payment is due immediately. `Required` `Default(0)` 
| [DefaultPaymentTermDays](Crm.Customers.md#defaultpaymenttermdays) | int32 | Default payment term in days when issuing documents for this customer. `Required` `Default(0)` 
| [DisplayText](Crm.Customers.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [FromDate](Crm.Customers.md#fromdate) | datetime __nullable__ | Start date of the customer relationship. `Default(Today)` `Filter(ge;le)` 
| [GracePeriodDays](Crm.Customers.md#graceperioddays) | int32 | Number of days after the payment deadline, during which the system still allows new sales orders for the customer. `Required` `Default(0)` 
| [Id](Crm.Customers.md#id) | guid |  
| [Number](Crm.Customers.md#number) | string (16) __nullable__ | Unique customer number. `Filter(eq;like)` `ORD` 
| [ObjectVersion](Crm.Customers.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [PersistSalesOrdersLots](Crm.Customers.md#persistsalesorderslots) | boolean | If checked, specifies that the lots set in the Sales orders for this customer, cannot be changed during the execution of the Store transactions for these Sales orders. `Required` `Default(false)` `Filter(eq)` 
| [ThruDate](Crm.Customers.md#thrudate) | datetime __nullable__ | The date of customer relationship termination. null for active customers. `Filter(ge;le)` 
| [UpdateTime](Crm.Customers.md#updatetime) | datetime __nullable__ | Date and time when the Customer was last updated. `Filter(ge;le)` `ReadOnly` 
| [UpdateUser](Crm.Customers.md#updateuser) | string (64) __nullable__ | Login name of the user, who last updated the Customer. `Filter(like)` `ReadOnly` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [CollectionsResponsible<br />Employee](Crm.Customers.md#collectionsresponsibleemployee) | [CompanyEmployees](General.Contacts.CompanyEmployees.md) (nullable) | The employee, who is responsible for the collections from the customer. `Filter(multi eq)` |
| [CustomerType](Crm.Customers.md#customertype) | [CustomerTypes](Crm.CustomerTypes.md) (nullable) | The user-defined type of this customer. null when there is no specific type. Record-level security from the customer type is applied to the individual customers and can be used for security purposes. `Filter(multi eq)` |
| [DefaultCurrency](Crm.Customers.md#defaultcurrency) | [Currencies](General.Currencies.md) (nullable) | The default currency to use when creating new documents for this customer. `Filter(multi eq)` |
| [DefaultDistributionChannel](Crm.Customers.md#defaultdistributionchannel) | [DistributionChannels](Crm.Marketing.DistributionChannels.md) (nullable) | The default distribution channel used when selling to the customer. `Filter(multi eq)` |
| [DefaultPaymentAccount](Crm.Customers.md#defaultpaymentaccount) | [PaymentAccounts](Finance.Payments.PaymentAccounts.md) (nullable) | The default payment account to use when creating new documents for this customer. `Filter(multi eq)` |
| [DefaultPaymentType](Crm.Customers.md#defaultpaymenttype) | [PaymentTypes](Finance.Payments.PaymentTypes.md) (nullable) | If not null, specifies default payment type for the sales, offers and invoices for this customer. `Filter(multi eq)` |
| [DefaultPriceList](Crm.Customers.md#defaultpricelist) | [PriceLists](Crm.PriceLists.md) (nullable) | If not null, specifies default price list when selling to this customer. `Filter(multi eq)` |
| [EnterpriseCompany](Crm.Customers.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable) | The Enterprise Company for which this customer is recorded. The same external party can be listed with different conditions for the different enterprise companies. `Filter(multi eq)` |
| [Party](Crm.Customers.md#party) | [Parties](General.Contacts.Parties.md) | Base party Id. `Required` `Filter(multi eq)` `FilterableReference` |
| [SalesPerson](Crm.Customers.md#salesperson) | [SalesPersons](Crm.SalesPersons.md) (nullable) | The default sales person for new sales documents for this customer. `Filter(multi eq)` |
| [ServicedByEnterprise<br />CompanyLocation](Crm.Customers.md#servicedbyenterprisecompanylocation) | [CompanyLocations](General.Contacts.CompanyLocations.md) (nullable) | The enterprise company location, which sells to this client by default. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Products | [CustomerProducts](Crm.CustomerProducts.md) | List of `CustomerProduct`(Crm.CustomerProducts.md) child objects, based on the `Crm.CustomerProduct.Customer`(Crm.CustomerProducts.md#customer) back reference 


## Attribute Details

### Active

True if the customer is active, false - not to list in combo boxes for choosing in new documents. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### AllowUseAsPrimaryCustomer

Specifies whether to allow the customer to be used as primary customer in a sales deal. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### AllowUseAsShipToCustomer

True to allow the customer to be used as ship to customer in a sales deal. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### CreationTime

Date and time when the Customer was created. `Filter(ge;le)` `ReadOnly`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### CreationUser

Login name of the user, who created the Customer. `Filter(like)` `ReadOnly`

_Type_: **string (64) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
_Show in UI_: **HiddenByDefault**  

### CreditLimit

Total credit limit for the customer in the enterprise company base currency. null means there is no limit. `Currency: EnterpriseCompany?.BaseCurrency`

_Type_: **[Amount (18, 2)](../data-types.md#amount) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`IIF( ( obj.DefaultCurrency != null), obj.EnterpriseCompany.DefaultCustomerCreditLimitBase, obj.CreditLimit)`

_Front-End Recalc Expressions:_  
`IIF( ( obj.DefaultCurrency != null), obj.EnterpriseCompany.DefaultCustomerCreditLimitBase, obj.CreditLimit)`
### DefaultDeliveryTermDays

Default term in days for goods delivery, starting at the day of sale. `Required` `Default(0)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### DefaultPaymentStartDays

Specifies the number of days after the sales order, when the payment becomes due. 0 means that the payment is due immediately. `Required` `Default(0)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### DefaultPaymentTermDays

Default payment term in days when issuing documents for this customer. `Required` `Default(0)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### FromDate

Start date of the customer relationship. `Default(Today)` `Filter(ge;le)`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDate**  
_Show in UI_: **ShownByDefault**  

### GracePeriodDays

Number of days after the payment deadline, during which the system still allows new sales orders for the customer. `Required` `Default(0)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **ShownByDefault**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  
_Show in UI_: **CannotBeShown**  

### Number

Unique customer number. `Filter(eq;like)` `ORD`

_Type_: **string (16) __nullable__**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **16**  
_Show in UI_: **ShownByDefault**  

_Back-End Default Expression:_  
`obj.IncMax( o => o.Number, null, "000000")`

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### PersistSalesOrdersLots

If checked, specifies that the lots set in the Sales orders for this customer, cannot be changed during the execution of the Store transactions for these Sales orders. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **ShownByDefault**  

### ThruDate

The date of customer relationship termination. null for active customers. `Filter(ge;le)`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### UpdateTime

Date and time when the Customer was last updated. `Filter(ge;le)` `ReadOnly`

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### UpdateUser

Login name of the user, who last updated the Customer. `Filter(like)` `ReadOnly`

_Type_: **string (64) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
_Show in UI_: **HiddenByDefault**  


## Reference Details

### CollectionsResponsibleEmployee

The employee, who is responsible for the collections from the customer. `Filter(multi eq)`

_Type_: **[CompanyEmployees](General.Contacts.CompanyEmployees.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### CustomerType

The user-defined type of this customer. null when there is no specific type. Record-level security from the customer type is applied to the individual customers and can be used for security purposes. `Filter(multi eq)`

_Type_: **[CustomerTypes](Crm.CustomerTypes.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### DefaultCurrency

The default currency to use when creating new documents for this customer. `Filter(multi eq)`

_Type_: **[Currencies](General.Currencies.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

_Front-End Recalc Expressions:_  
`obj.EnterpriseCompany.BaseCurrency`
### DefaultDistributionChannel

The default distribution channel used when selling to the customer. `Filter(multi eq)`

_Type_: **[DistributionChannels](Crm.Marketing.DistributionChannels.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### DefaultPaymentAccount

The default payment account to use when creating new documents for this customer. `Filter(multi eq)`

_Type_: **[PaymentAccounts](Finance.Payments.PaymentAccounts.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

_Front-End Recalc Expressions:_  
`obj.DefaultPaymentType.GetDefaultPaymentAccount( ).IfNullThen( obj.DefaultPaymentAccount)`
### DefaultPaymentType

If not null, specifies default payment type for the sales, offers and invoices for this customer. `Filter(multi eq)`

_Type_: **[PaymentTypes](Finance.Payments.PaymentTypes.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### DefaultPriceList

If not null, specifies default price list when selling to this customer. `Filter(multi eq)`

_Type_: **[PriceLists](Crm.PriceLists.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### EnterpriseCompany

The Enterprise Company for which this customer is recorded. The same external party can be listed with different conditions for the different enterprise companies. `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

_Front-End Recalc Expressions:_  
`obj.Transaction.CurrentEnterpriseCompany`
### Party

Base party Id. `Required` `Filter(multi eq)` `FilterableReference`

_Type_: **[Parties](General.Contacts.Parties.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Show in UI_: **ShownByDefault**  

### SalesPerson

The default sales person for new sales documents for this customer. `Filter(multi eq)`

_Type_: **[SalesPersons](Crm.SalesPersons.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### ServicedByEnterpriseCompanyLocation

The enterprise company location, which sells to this client by default. `Filter(multi eq)`

_Type_: **[CompanyLocations](General.Contacts.CompanyLocations.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  


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

[!list limit=1000 erp.entity=Crm.Customers erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Customers erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Customers?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Customers?$top=10>

