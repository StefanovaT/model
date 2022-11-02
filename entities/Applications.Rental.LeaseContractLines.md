---
uid: Applications.Rental.LeaseContractLines
---
# Applications.Rental.LeaseContractLines Entity

**Namespace:** [Applications.Rental](Applications.Rental.md)  

The detail lines of rental contracts. Each line contains rental conditions for one asset of the rental contract. Entity: Rent_Lease_Contract_Lines

## Default Visualization
Default Display Text Format:  
_{LeaseContract.EntityName}_  
Default Search Members:  
_LeaseContract.EntityName_  
Name Data Member:  
_LeaseContract.EntityName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Applications.Rental.LeaseContracts](Applications.Rental.LeaseContracts.md)  
Aggregate Root:  
[Applications.Rental.LeaseContracts](Applications.Rental.LeaseContracts.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DisplayText](Applications.Rental.LeaseContractLines.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [EndDate](Applications.Rental.LeaseContractLines.md#enddate) | date | Ending date of lease of this asset. `Required` `Filter(multi eq;ge;le)` 
| [GuaranteeAmount](Applications.Rental.LeaseContractLines.md#guaranteeamount) | [Amount (14, 2)](../data-types.md#amount) __nullable__ | Deposit amount in the currency of the document which is given for this asset during its period of lease. `Currency: LeaseContract.Currency` 
| [Id](Applications.Rental.LeaseContractLines.md#id) | guid |  
| [LineNo](Applications.Rental.LeaseContractLines.md#lineno) | int32 | Consecutive number of the line within the lease contract. `Required` `Filter(eq;ge;le)` 
| [LineNotes](Applications.Rental.LeaseContractLines.md#linenotes) | string (max) __nullable__ | Notes for this line. 
| [ObjectVersion](Applications.Rental.LeaseContractLines.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [StartDate](Applications.Rental.LeaseContractLines.md#startdate) | date | Starting date of lease for this asset. `Required` `Filter(multi eq;ge;le)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [LeaseContract](Applications.Rental.LeaseContractLines.md#leasecontract) | [LeaseContracts](Applications.Rental.LeaseContracts.md) | The <see cref="LeaseContract"/> to which this LeaseContractLine belongs. `Required` `Filter(multi eq)` `Owner` |
| [RentalAsset](Applications.Rental.LeaseContractLines.md#rentalasset) | [Assets](Applications.Rental.Assets.md) | The asset which is rented with the current contract. `Required` `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Consumables | [LeaseContractLineConsumables](Applications.Rental.LeaseContractLineConsumables.md) | List of `LeaseContract<br />LineConsumable`(Applications.Rental.LeaseContractLine<br />Consumables.md) child objects, based on the `Applications.Rental.LeaseContractLine<br />Consumable.LeaseLine`(Applications.Rental.LeaseContractLine<br />Consumables.md#leaseline) back reference 


## Attribute Details

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### EndDate

Ending date of lease of this asset. `Required` `Filter(multi eq;ge;le)`

_Type_: **date**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.LeaseContract.EndDate`

_Front-End Recalc Expressions:_  
`obj.LeaseContract.EndDate`
### GuaranteeAmount

Deposit amount in the currency of the document which is given for this asset during its period of lease. `Currency: LeaseContract.Currency`

_Type_: **[Amount (14, 2)](../data-types.md#amount) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### LineNo

Consecutive number of the line within the lease contract. `Required` `Filter(eq;ge;le)`

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.LeaseContract.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.LeaseContract.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### LineNotes

Notes for this line.

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  

### StartDate

Starting date of lease for this asset. `Required` `Filter(multi eq;ge;le)`

_Type_: **date**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.LeaseContract.StartDate`

_Front-End Recalc Expressions:_  
`obj.LeaseContract.StartDate`

## Reference Details

### LeaseContract

The <see cref="LeaseContract"/> to which this LeaseContractLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[LeaseContracts](Applications.Rental.LeaseContracts.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### RentalAsset

The asset which is rented with the current contract. `Required` `Filter(multi eq)`

_Type_: **[Assets](Applications.Rental.Assets.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  


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

[!list limit=1000 erp.entity=Applications.Rental.LeaseContractLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Rental.LeaseContractLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Rental_LeaseContractLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Rental_LeaseContractLines?$top=10>

