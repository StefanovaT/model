---
uid: General.Documents.DocumentPrints
---
# General.Documents.DocumentPrints Entity

**Namespace:** [General.Documents](General.Documents.md)  

Contains the history of each document print or export. Entity: Gen_Document_Prints

## Renames

Old name: **General.DocumentPrints**  
New name: **General.Documents.DocumentPrints**  
Version: **25.1.0.64**  
Case: **37169**  



## Default Visualization
Default Display Text Format:  
_{Document.EntityName}_  
Default Search Members:  
_Document.EntityName_  
Name Data Member:  
_Document.EntityName_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[General.Documents.Documents](General.Documents.Documents.md)  
Aggregate Root:  
[General.Documents.Documents](General.Documents.Documents.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AdditionalData](General.Documents.DocumentPrints.md#additionaldata) | string (max) __nullable__ | Contains additional data about the printout. The format of the data is dependent on the Printout Type. `Introduced in version 19.1` 
| [Description](General.Documents.DocumentPrints.md#description) | string (254) __nullable__ | The description of this DocumentPrint. 
| [DisplayText](General.Documents.DocumentPrints.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](General.Documents.DocumentPrints.md#id) | guid |  
| [IsOriginal](General.Documents.DocumentPrints.md#isoriginal) | boolean | True when the printout is the first printout (the original printout). `Required` `Filter(eq)` 
| [ObjectVersion](General.Documents.DocumentPrints.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [PrintoutType](General.Documents.DocumentPrints.md#printouttype) | [PrintoutType](General.Documents.DocumentPrints.md#printouttype) __nullable__ | Specifies the type of the printout: PPP - Phisycal Printer Printout; FPP - Fiscal Printer Printout; EXP - Export. `Filter(multi eq)` `Introduced in version 19.1` 
| [PrintTime](General.Documents.DocumentPrints.md#printtime) | datetime | The time when the document was printed or exported. `Required` `Default(Now)` `Filter(ge;le)` `ORD` 
| [PrintUser](General.Documents.DocumentPrints.md#printuser) | string (64) | The user, which printed or exported the document. `Required` 
| [ReferenceNo](General.Documents.DocumentPrints.md#referenceno) | string (32) __nullable__ | Used only when the printout reflects export to external system/device. In this case, it can store the reference number, generated by the other system/device. `Filter(multi eq)` `Introduced in version 19.1` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Document](General.Documents.DocumentPrints.md#document) | [Documents](General.Documents.Documents.md) | The document which was printed or exported. `Required` `Filter(multi eq)` `Owner` |
| [DocumentPrintImage](General.Documents.DocumentPrints.md#documentprintimage) | [DocumentPrintImages](Systems.Core.DocumentPrintImages.md) (nullable) | Points to the actual contents of the printed document. `Filter(multi eq;like)` |


## Attribute Details

### AdditionalData

Contains additional data about the printout. The format of the data is dependent on the Printout Type. `Introduced in version 19.1`

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
_Show in UI_: **ShownByDefault**  

### Description

The description of this DocumentPrint.

_Type_: **string (254) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
_Show in UI_: **ShownByDefault**  

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

### IsOriginal

True when the printout is the first printout (the original printout). `Required` `Filter(eq)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### ObjectVersion

The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking.

_Type_: **int32**  
_Category_: **Extensible Data Object**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### PrintoutType

Specifies the type of the printout: PPP - Phisycal Printer Printout; FPP - Fiscal Printer Printout; EXP - Export. `Filter(multi eq)` `Introduced in version 19.1`

_Type_: **[PrintoutType](General.Documents.DocumentPrints.md#printouttype) __nullable__**  
_Category_: **System**  
Allowed values for the `PrintoutType`(General.Documents.DocumentPrints.md#printouttype) data attribute  
_Allowed Values (General.Documents.DocumentPrintsRepository.PrintoutType Enum Members)_  

| Value | Description |
| ---- | --- |
| PhysicalPrinterPrintout | PhysicalPrinterPrintout value. Stored as 'PPP'. <br /> _Database Value:_ 'PPP' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'PhysicalPrinterPrintout' |
| FiscalPrinterPrintout | FiscalPrinterPrintout value. Stored as 'FPP'. <br /> _Database Value:_ 'FPP' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'FiscalPrinterPrintout' |
| Export | Export value. Stored as 'EXP'. <br /> _Database Value:_ 'EXP' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'Export' |
| UserDownload | UserDownload value. Stored as 'DWN'. <br /> _Database Value:_ 'DWN' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'UserDownload' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### PrintTime

The time when the document was printed or exported. `Required` `Default(Now)` `Filter(ge;le)` `ORD`

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **True**  
_Default Value_: **CurrentDateTime**  
_Show in UI_: **ShownByDefault**  

### PrintUser

The user, which printed or exported the document. `Required`

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
_Show in UI_: **ShownByDefault**  

### ReferenceNo

Used only when the printout reflects export to external system/device. In this case, it can store the reference number, generated by the other system/device. `Filter(multi eq)` `Introduced in version 19.1`

_Type_: **string (32) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Maximum Length_: **32**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### Document

The document which was printed or exported. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Documents](General.Documents.Documents.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  
_Show in UI_: **CannotBeShown**  

### DocumentPrintImage

Points to the actual contents of the printed document. `Filter(multi eq;like)`

_Type_: **[DocumentPrintImages](Systems.Core.DocumentPrintImages.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like, EqualsIn**  
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

[!list limit=1000 erp.entity=General.Documents.DocumentPrints erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Documents.DocumentPrints erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Documents_DocumentPrints?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Documents_DocumentPrints?$top=10>
