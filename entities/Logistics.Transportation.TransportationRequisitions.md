---
uid: Logistics.Transportation.TransportationRequisitions
---
# Logistics.Transportation.TransportationRequisitions Entity

**Namespace:** [Logistics.Transportation](Logistics.Transportation.md)  
**Inherited From:** [General.Documents.Documents](General.Documents.Documents.md)  

Client requisition for transportation. Entity: Log_Transportation_Requisitions

## Renames

Old name: **Logistics.Shipment.TransportationRequisitions**  
New name: **Logistics.Transportation.TransportationRequisitions**  
Version: **25.1.0.64**  
Case: **37169**  



## Default Visualization
Default Display Text Format:  
_{DocumentType.TypeName:T} {DocumentNo}{StateTagsAttribute}_  
Default Search Members:  
_DocumentNo_  
Code Data Member:  
_DocumentNo_  
Category:  _Documents_  
Show in UI:  _ShownByDefault_  
Layout category attribute:  _DocumentTypeId_  

## Track Changes  
Min level:  _0 - Do not track changes_  
Max level:  _4 - Track object attribute and blob changes_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Logistics.Transportation.TransportationRequisitions](Logistics.Transportation.TransportationRequisitions.md)  
  * [Logistics.Transportation.TransportationRequisitionLines](Logistics.Transportation.TransportationRequisitionLines.md)  
  * [General.Documents.DocumentAmounts](General.Documents.DocumentAmounts.md)  
    * [General.Documents.DocumentAmountReferencedDocuments](General.Documents.DocumentAmountReferencedDocuments.md)  
  * [General.Documents.DocumentComments](General.Documents.DocumentComments.md)  
  * [General.Documents.DocumentDistributedAmounts](General.Documents.DocumentDistributedAmounts.md)  
  * [General.Documents.DocumentFileAttachments](General.Documents.DocumentFileAttachments.md)  
  * [General.Documents.DocumentFulfillments](General.Documents.DocumentFulfillments.md)  
  * [General.Documents.DocumentLineAmounts](General.Documents.DocumentLineAmounts.md)  
  * [General.Documents.DocumentParties](General.Documents.DocumentParties.md)  
  * [General.Documents.DocumentPrints](General.Documents.DocumentPrints.md)  
  * [General.Documents.DocumentStateChanges](General.Documents.DocumentStateChanges.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AdjustmentNumber](Logistics.Transportation.TransportationRequisitions.md#adjustmentnumber) | int32 | Consecutive number of the correction that this document is applying to the adjusted document. `Required` `Default(0)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [AdjustmentTime](Logistics.Transportation.TransportationRequisitions.md#adjustmenttime) | datetime __nullable__ | Date/time when the document last has been adjusted by corrective document. `Filter(ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [AdjustmentUser](Logistics.Transportation.TransportationRequisitions.md#adjustmentuser) | string (64) __nullable__ | The user who adjusted the document. `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [CompleteTime](Logistics.Transportation.TransportationRequisitions.md#completetime) | datetime __nullable__ | Date and time when the document was completed (State set to Completed). `Filter(ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [CreationTime](Logistics.Transportation.TransportationRequisitions.md#creationtime) | datetime | Date/Time when the document was created. `Required` `Default(Now)` `Filter(ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [CreationUser](Logistics.Transportation.TransportationRequisitions.md#creationuser) | string (64) | The login name of the user, who created the document. `Required` `Filter(like)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [DisplayText](Logistics.Transportation.TransportationRequisitions.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [DocumentDate](Logistics.Transportation.TransportationRequisitions.md#documentdate) | date | The date on which the document was issued. `Required` `Default(Today)` `Filter(eq;ge;le)` `ORD` (Inherited from [Documents](General.Documents.Documents.md)) 
| [DocumentNo](Logistics.Transportation.TransportationRequisitions.md#documentno) | string (20) | Document number, unique within Document_Type_Id. `Required` `Filter(eq;like)` `ORD` (Inherited from [Documents](General.Documents.Documents.md)) 
| [DocumentNotes](Logistics.Transportation.TransportationRequisitions.md#documentnotes) | string (max) __nullable__ | Notes for this Document. (Inherited from [Documents](General.Documents.Documents.md)) 
| [DocumentVersion](Logistics.Transportation.TransportationRequisitions.md#documentversion) | int32 | Consecutive version number, starting with 1. Each update produces a new version of the document. `Required` `Default(1)` `Filter(eq;ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [EntityName](Logistics.Transportation.TransportationRequisitions.md#entityname) | string (64) | The entity name of the document header. `Required` `Filter(eq)` `ORD` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [Id](Logistics.Transportation.TransportationRequisitions.md#id) | guid |  
| [ObjectVersion](Logistics.Transportation.TransportationRequisitions.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [ParentDocument<br />RelationshipType](Logistics.Transportation.TransportationRequisitions.md#parentdocumentrelationshiptype) | [ParentDocument<br />RelationshipType](Logistics.Transportation.TransportationRequisitions.md#parentdocumentrelationshiptype) __nullable__ | Type of relationship between the current document and the parent document(s). Affects the constraints for execution/completion for the documents. Possible values: 'S' = 'Subtask', 'N' = 'Next task'. `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [PlanningOnly](Logistics.Transportation.TransportationRequisitions.md#planningonly) | boolean | Indicates that the document is used only for planning (and as consequence its state cannot be greater than Planned). `Required` `Default(false)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [ReadOnly](Logistics.Transportation.TransportationRequisitions.md#readonly) | boolean | True - the document is read only; false - the document is not read only. `Required` `Default(false)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [ReferenceDate](Logistics.Transportation.TransportationRequisitions.md#referencedate) | datetime __nullable__ | Indicates the date, when the event, described by the document, actually occurred. Generally, the document should be created at the date of the event. However, if the document is created later than the event, this field contains the date of the actual event. If the field is empty, this means that the document was created at the date of the actual event and Document Date is indicative of the date of the event. Contrast this with CreationTime, which indicates when the document was entered into the system. So, generally: Reference Date &lt;= DocumentDate &lt;= CreationTime. `Default(Today)` `Filter(ge;le)` (Inherited from [Documents](General.Documents.Documents.md)) 
| [ReferenceDocumentNo](Logistics.Transportation.TransportationRequisitions.md#referencedocumentno) | string (20) __nullable__ | The number of the document (issued by the other party), which was the reason for the creation of the current document. The numebr should be unique within the party documents. `Filter(eq;like)` (Inherited from [Documents](General.Documents.Documents.md)) 
| [ReleaseTime](Logistics.Transportation.TransportationRequisitions.md#releasetime) | datetime __nullable__ | Date and time when the document was released (State set to Released). `Filter(ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [RequestedArrivalDate](Logistics.Transportation.TransportationRequisitions.md#requestedarrivaldate) | date | Requested arrival date. null when no specific date is requested. `Required` `Filter(ge;le)` 
| [RequestedArrivalTime](Logistics.Transportation.TransportationRequisitions.md#requestedarrivaltime) | time __nullable__ | Requested arrival time. null when no specific time is requested. `Filter(ge;le)` 
| [RequestedDepartureDate](Logistics.Transportation.TransportationRequisitions.md#requesteddeparturedate) | date | Requested date of departure. null when no specific date is requested. `Required` `Filter(ge;le)` 
| [RequestedDepartureTime](Logistics.Transportation.TransportationRequisitions.md#requesteddeparturetime) | time __nullable__ | Requested time of departure. null when no specific time is requested. `Filter(ge;le)` 
| [State](Logistics.Transportation.TransportationRequisitions.md#state) | [DocumentState](Logistics.Transportation.TransportationRequisitions.md#state) | The current system state of the document. Allowed values: 0=New;5=Corrective;10=Computer Planned;20=Human Planned;30=Released;40=Completed;50=Closed. `Required` `Default(0)` `Filter(multi eq;ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [StateTagsAttribute](Logistics.Transportation.TransportationRequisitions.md#statetagsattribute) | string | Specifies the state of the document. 
| [Void](Logistics.Transportation.TransportationRequisitions.md#void) | boolean | True if the document is null and void. `Required` `Default(false)` `Filter(eq)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [VoidReason](Logistics.Transportation.TransportationRequisitions.md#voidreason) | string (254) __nullable__ | Reason for voiding the document, entered by the user. `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [VoidTime](Logistics.Transportation.TransportationRequisitions.md#voidtime) | datetime __nullable__ | Date/time when the document has become void. `Filter(ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 
| [VoidUser](Logistics.Transportation.TransportationRequisitions.md#voiduser) | string (64) __nullable__ | The user who voided the document. `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [AccessKey](Logistics.Transportation.TransportationRequisitions.md#accesskey) | [AccessKeys](Systems.Security.AccessKeys.md) (nullable) | The access key, containing the user permissions for this document. null means that all users have unlimited permissions. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [AdjustedDocument](Logistics.Transportation.TransportationRequisitions.md#adjusteddocument) | [Documents](General.Documents.Documents.md) (nullable) | The primary document, which the current document adjusts. null when this is not an adjustment document. `Filter(multi eq)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) |
| [AssignedToUser](Logistics.Transportation.TransportationRequisitions.md#assignedtouser) | [Users](Systems.Security.Users.md) (nullable) | The user to which this document is assigned for handling. null means that the document is not assigned to specific user. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [CurrencyDirectory](Logistics.Transportation.TransportationRequisitions.md#currencydirectory) | [CurrencyDirectories](General.Currencies.CurrencyDirectories.md) (nullable) | The currency directory, containing all the convertion rates, used by the document. null means that the document does not need currency convertions. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [DocumentType](Logistics.Transportation.TransportationRequisitions.md#documenttype) | [DocumentTypes](Systems.Documents.DocumentTypes.md) | The user defined type of the document. Determines document behaviour, properties, additional amounts, validation, generations, etc. `Required` `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [EnterpriseCompany](Logistics.Transportation.TransportationRequisitions.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) | The enterprise company which issued the document. `Required` `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [EnterpriseCompanyLocation](Logistics.Transportation.TransportationRequisitions.md#enterprisecompanylocation) | [CompanyLocations](General.Contacts.CompanyLocations.md) (nullable) | The enterprise company location which issued the document. null means that there is only one location within the enterprise company and locations are not used. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [FromCompanyDivision](Logistics.Transportation.TransportationRequisitions.md#fromcompanydivision) | [CompanyDivisions](General.Contacts.CompanyDivisions.md) (nullable) | The division of the company, issuing the document. null when the document is not issued by any specific division. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [FromParty](Logistics.Transportation.TransportationRequisitions.md#fromparty) | [Parties](General.Contacts.Parties.md) | The party which issued the document. `Required` `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [MasterDocument](Logistics.Transportation.TransportationRequisitions.md#masterdocument) | [Documents](General.Documents.Documents.md) | In a multi-document tree, this is the root document, that created the whole tree. If this is the root it is equal to Id. `Required` `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [Parent](Logistics.Transportation.TransportationRequisitions.md#parent) | [Documents](General.Documents.Documents.md) (nullable) | In a multi-document tree, this is the direct parent document. If this is the root it is null. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [PrimeCauseDocument](Logistics.Transportation.TransportationRequisitions.md#primecausedocument) | [Documents](General.Documents.Documents.md) (nullable) | The document that is the prime cause for creation of the current document. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [ResponsiblePerson](Logistics.Transportation.TransportationRequisitions.md#responsibleperson) | [Persons](General.Contacts.Persons.md) (nullable) | The person that is responsible for this order or transaction. It could be the sales person, the orderer, etc. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [ReverseOfDocument](Logistics.Transportation.TransportationRequisitions.md#reverseofdocument) | [Documents](General.Documents.Documents.md) (nullable) | The document which the current document is reverse of. `Filter(multi eq)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) |
| [Sequence](Logistics.Transportation.TransportationRequisitions.md#sequence) | [Sequences](Systems.Documents.Sequences.md) (nullable) | The sequence that will be used to give new numbers to the documents of this type. `Filter(multi eq)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) |
| [ToCompanyDivision](Logistics.Transportation.TransportationRequisitions.md#tocompanydivision) | [CompanyDivisions](General.Contacts.CompanyDivisions.md) (nullable) | The division of the company, receiving the document. null when the document is not received by any specific division. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [ToParty](Logistics.Transportation.TransportationRequisitions.md#toparty) | [Parties](General.Contacts.Parties.md) (nullable) | The party which should receive the document. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md)) |
| [TransportFromGeoPoint](Logistics.Transportation.TransportationRequisitions.md#transportfromgeopoint) | [GeoPoints](General.Geography.GeoPoints.md) (nullable) | Geographical location of the loading, if available. `Filter(multi eq)` |
| [TransportFromParty](Logistics.Transportation.TransportationRequisitions.md#transportfromparty) | [Parties](General.Contacts.Parties.md) | Shipping party. `Required` `Filter(multi eq)` |
| [TransportFromParty<br />ContactMechanism](Logistics.Transportation.TransportationRequisitions.md#transportfrompartycontactmechanism) | [PartyContactMechanisms](General.Contacts.PartyContactMechanisms.md) | Loading address. `Required` `Filter(multi eq)` |
| [TransportToGeoPoint](Logistics.Transportation.TransportationRequisitions.md#transporttogeopoint) | [GeoPoints](General.Geography.GeoPoints.md) (nullable) | Geographical location of the unloading, if available. `Filter(multi eq)` |
| [TransportToParty](Logistics.Transportation.TransportationRequisitions.md#transporttoparty) | [Parties](General.Contacts.Parties.md) | Receiving party. `Required` `Filter(multi eq)` |
| [TransportToParty<br />ContactMechanism](Logistics.Transportation.TransportationRequisitions.md#transporttopartycontactmechanism) | [PartyContactMechanisms](General.Contacts.PartyContactMechanisms.md) | Unload address. `Required` `Filter(multi eq)` |
| [UserStatus](Logistics.Transportation.TransportationRequisitions.md#userstatus) | [DocumentTypeUserStatuses](Systems.Documents.DocumentTypeUserStatuses.md) (nullable) | The user status of this document if applicable for this document type. null means unknown or not yet set. `Filter(multi eq)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md)) |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Comments | [DocumentComments](General.Documents.DocumentComments.md) | List of `DocumentComment`(General.Documents.DocumentComments.md) child objects, based on the `General.Documents.DocumentComment.Document`(General.Documents.DocumentComments.md#document) back reference (Inherited from [Documents](General.Documents.Documents.md)) 
| DistributedAmounts | [DocumentDistributedAmounts](General.Documents.DocumentDistributedAmounts.md) | List of `DocumentDistributed<br />Amount`(General.Documents.DocumentDistributedAmounts.md) child objects, based on the `General.Documents.DocumentDistributedAmount.Document`(General.Documents.DocumentDistributedAmounts.md#document) back reference (Inherited from [Documents](General.Documents.Documents.md)) 
| DocumentAmounts | [DocumentAmounts](General.Documents.DocumentAmounts.md) | List of `DocumentAmount`(General.Documents.DocumentAmounts.md) child objects, based on the `General.Documents.DocumentAmount.Document`(General.Documents.DocumentAmounts.md#document) back reference (Inherited from [Documents](General.Documents.Documents.md)) 
| FileAttachments | [DocumentFileAttachments](General.Documents.DocumentFileAttachments.md) | List of `DocumentFileAttachment`(General.Documents.DocumentFileAttachments.md) child objects, based on the `General.Documents.DocumentFileAttachment.Document`(General.Documents.DocumentFileAttachments.md#document) back reference (Inherited from [Documents](General.Documents.Documents.md)) 
| Fulfillments | [DocumentFulfillments](General.Documents.DocumentFulfillments.md) | List of `DocumentFulfillment`(General.Documents.DocumentFulfillments.md) child objects, based on the `General.Documents.DocumentFulfillment.Document`(General.Documents.DocumentFulfillments.md#document) back reference (Inherited from [Documents](General.Documents.Documents.md)) 
| LineAmounts | [DocumentLineAmounts](General.Documents.DocumentLineAmounts.md) | List of `DocumentLineAmount`(General.Documents.DocumentLineAmounts.md) child objects, based on the `General.Documents.DocumentLineAmount.Document`(General.Documents.DocumentLineAmounts.md#document) back reference (Inherited from [Documents](General.Documents.Documents.md)) 
| Lines | [TransportationRequisitionLines](Logistics.Transportation.TransportationRequisitionLines.md) | List of `Transportation<br />RequisitionLine`(Logistics.Transportation.Transportation<br />RequisitionLines.md) child objects, based on the `Logistics.Transportation.Transportation<br />RequisitionLine.TransportationRequisition`(Logistics.Transportation.Transportation<br />RequisitionLines.md#transportationrequisition) back reference 
| Parties | [DocumentParties](General.Documents.DocumentParties.md) | List of `DocumentParty`(General.Documents.DocumentParties.md) child objects, based on the `General.Documents.DocumentParty.Document`(General.Documents.DocumentParties.md#document) back reference (Inherited from [Documents](General.Documents.Documents.md)) 
| Prints | [DocumentPrints](General.Documents.DocumentPrints.md) | List of `DocumentPrint`(General.Documents.DocumentPrints.md) child objects, based on the `General.Documents.DocumentPrint.Document`(General.Documents.DocumentPrints.md#document) back reference (Inherited from [Documents](General.Documents.Documents.md)) 
| StateChanges | [DocumentStateChanges](General.Documents.DocumentStateChanges.md) | List of `DocumentStateChange`(General.Documents.DocumentStateChanges.md) child objects, based on the `General.Documents.DocumentStateChange.Document`(General.Documents.DocumentStateChanges.md#document) back reference (Inherited from [Documents](General.Documents.Documents.md)) 


## Attribute Details

### AdjustmentNumber

Consecutive number of the correction that this document is applying to the adjusted document. `Required` `Default(0)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **HiddenByDefault**  

### AdjustmentTime

Date/time when the document last has been adjusted by corrective document. `Filter(ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### AdjustmentUser

The user who adjusted the document. `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **string (64) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
_Show in UI_: **HiddenByDefault**  

### CompleteTime

Date and time when the document was completed (State set to Completed). `Filter(ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### CreationTime

Date/Time when the document was created. `Required` `Default(Now)` `Filter(ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **datetime**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDateTime**  
_Show in UI_: **HiddenByDefault**  

### CreationUser

The login name of the user, who created the document. `Required` `Filter(like)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **string (64)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
_Show in UI_: **HiddenByDefault**  

### DisplayText

Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### DocumentDate

The date on which the document was issued. `Required` `Default(Today)` `Filter(eq;ge;le)` `ORD` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **date**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **True**  
_Default Value_: **CurrentDate**  
_Show in UI_: **ShownByDefault**  

### DocumentNo

Document number, unique within Document_Type_Id. `Required` `Filter(eq;like)` `ORD` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **string (20)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **20**  
_Show in UI_: **ShownByDefault**  

### DocumentNotes

Notes for this Document. (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  
_Show in UI_: **HiddenByDefault**  

### DocumentVersion

Consecutive version number, starting with 1. Each update produces a new version of the document. `Required` `Default(1)` `Filter(eq;ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **int32**  
_Category_: **System**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **1**  
_Show in UI_: **HiddenByDefault**  

### EntityName

The entity name of the document header. `Required` `Filter(eq)` `ORD` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **string (64)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **True**  
_Maximum Length_: **64**  
_Show in UI_: **CannotBeShown**  

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

### ParentDocumentRelationshipType

Type of relationship between the current document and the parent document(s). Affects the constraints for execution/completion for the documents. Possible values: 'S' = 'Subtask', 'N' = 'Next task'. `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[ParentDocument<br />RelationshipType](Logistics.Transportation.TransportationRequisitions.md#parentdocumentrelationshiptype) __nullable__**  
_Category_: **System**  
Relationship between parent and child documents  
_Allowed Values (General.Documents.ParentDocumentRelationshipType Enum Members)_  

| Value | Description |
| ---- | --- |
| Subtask | The child document is a sub-task of the parent document. (Complete child to complete parent) <br /> _Database Value:_ 'S' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Subtask' |
| NextTask | The child document is next task of the parent document. (Complete parent to complete child) <br /> _Database Value:_ 'N' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'NextTask' |
| IndependentTask | The document is not dependent of neither child nor parent document. <br /> _Database Value:_ 'I' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'IndependentTask' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### PlanningOnly

Indicates that the document is used only for planning (and as consequence its state cannot be greater than Planned). `Required` `Default(false)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **HiddenByDefault**  

### ReadOnly

True - the document is read only; false - the document is not read only. `Required` `Default(false)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **HiddenByDefault**  

### ReferenceDate

Indicates the date, when the event, described by the document, actually occurred. Generally, the document should be created at the date of the event. However, if the document is created later than the event, this field contains the date of the actual event. If the field is empty, this means that the document was created at the date of the actual event and Document Date is indicative of the date of the event. Contrast this with CreationTime, which indicates when the document was entered into the system. So, generally: Reference Date &lt;= DocumentDate &lt;= CreationTime. `Default(Today)` `Filter(ge;le)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDate**  
_Show in UI_: **HiddenByDefault**  

### ReferenceDocumentNo

The number of the document (issued by the other party), which was the reason for the creation of the current document. The numebr should be unique within the party documents. `Filter(eq;like)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **string (20) __nullable__**  
_Category_: **System**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **20**  
_Show in UI_: **HiddenByDefault**  

### ReleaseTime

Date and time when the document was released (State set to Released). `Filter(ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### RequestedArrivalDate

Requested arrival date. null when no specific date is requested. `Required` `Filter(ge;le)`

_Type_: **date**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### RequestedArrivalTime

Requested arrival time. null when no specific time is requested. `Filter(ge;le)`

_Type_: **time __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### RequestedDepartureDate

Requested date of departure. null when no specific date is requested. `Required` `Filter(ge;le)`

_Type_: **date**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### RequestedDepartureTime

Requested time of departure. null when no specific time is requested. `Filter(ge;le)`

_Type_: **time __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### State

The current system state of the document. Allowed values: 0=New;5=Corrective;10=Computer Planned;20=Human Planned;30=Released;40=Completed;50=Closed. `Required` `Default(0)` `Filter(multi eq;ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[DocumentState](Logistics.Transportation.TransportationRequisitions.md#state)**  
_Category_: **System**  
Enumeration of document system states  
_Allowed Values (General.Documents.DocumentState Enum Members)_  

| Value | Description |
| ---- | --- |
| New | New document, just created. Can be edited. (Stored as 0). <br /> _Database Value:_ 0 <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'New' |
| Adjustment | Document which adjusts other released documents. (Stored as 5). <br /> _Database Value:_ 5 <br /> _Model Value:_ 5 <br /> _Domain API Value:_ 'Adjustment' |
| Planned | Planned by the system for future releasing. (Stored as 10). <br /> _Database Value:_ 10 <br /> _Model Value:_ 10 <br /> _Domain API Value:_ 'Planned' |
| FirmPlanned | Planned by operator for future releasing. (Stored as 20). <br /> _Database Value:_ 20 <br /> _Model Value:_ 20 <br /> _Domain API Value:_ 'FirmPlanned' |
| Released | Released document. Changes can be applied only through adjustment documents. (Stored as 30). <br /> _Database Value:_ 30 <br /> _Model Value:_ 30 <br /> _Domain API Value:_ 'Released' |
| Completed | Work has completed. (Stored as 40). <br /> _Database Value:_ 40 <br /> _Model Value:_ 40 <br /> _Domain API Value:_ 'Completed' |
| Closed | The document is audited and closed. Adjustments are not allowed, but reopening is allowed. (Stored as 50). <br /> _Database Value:_ 50 <br /> _Model Value:_ 50 <br /> _Domain API Value:_ 'Closed' |

_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **0**  
_Show in UI_: **HiddenByDefault**  

### StateTagsAttribute

Specifies the state of the document.

_Type_: **string**  
_Category_: **Calculated Attributes**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: ****  
_Show in UI_: **HiddenByDefault**  

### Void

True if the document is null and void. `Required` `Default(false)` `Filter(eq)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **boolean**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  
_Show in UI_: **HiddenByDefault**  

### VoidReason

Reason for voiding the document, entered by the user. `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **string (254) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  
_Show in UI_: **HiddenByDefault**  

### VoidTime

Date/time when the document has become void. `Filter(ge;le)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **datetime __nullable__**  
_Category_: **System**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Show in UI_: **HiddenByDefault**  

### VoidUser

The user who voided the document. `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **string (64) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
_Show in UI_: **HiddenByDefault**  


## Reference Details

### AccessKey

The access key, containing the user permissions for this document. null means that all users have unlimited permissions. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[AccessKeys](Systems.Security.AccessKeys.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **CannotBeShown**  


_Remarks_  
Supported permissions

| Permission | Type |
| --- | --- |
| Update | - |
| Delete | - |
| Administer (manage security)| - |
### AdjustedDocument

The primary document, which the current document adjusts. null when this is not an adjustment document. `Filter(multi eq)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[Documents](General.Documents.Documents.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### AssignedToUser

The user to which this document is assigned for handling. null means that the document is not assigned to specific user. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[Users](Systems.Security.Users.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### CurrencyDirectory

The currency directory, containing all the convertion rates, used by the document. null means that the document does not need currency convertions. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[CurrencyDirectories](General.Currencies.CurrencyDirectories.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### DocumentType

The user defined type of the document. Determines document behaviour, properties, additional amounts, validation, generations, etc. `Required` `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[DocumentTypes](Systems.Documents.DocumentTypes.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### EnterpriseCompany

The enterprise company which issued the document. `Required` `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### EnterpriseCompanyLocation

The enterprise company location which issued the document. null means that there is only one location within the enterprise company and locations are not used. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[CompanyLocations](General.Contacts.CompanyLocations.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### FromCompanyDivision

The division of the company, issuing the document. null when the document is not issued by any specific division. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[CompanyDivisions](General.Contacts.CompanyDivisions.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### FromParty

The party which issued the document. `Required` `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[Parties](General.Contacts.Parties.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### MasterDocument

In a multi-document tree, this is the root document, that created the whole tree. If this is the root it is equal to Id. `Required` `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[Documents](General.Documents.Documents.md)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### Parent

In a multi-document tree, this is the direct parent document. If this is the root it is null. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[Documents](General.Documents.Documents.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### PrimeCauseDocument

The document that is the prime cause for creation of the current document. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[Documents](General.Documents.Documents.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### ResponsiblePerson

The person that is responsible for this order or transaction. It could be the sales person, the orderer, etc. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[Persons](General.Contacts.Persons.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### ReverseOfDocument

The document which the current document is reverse of. `Filter(multi eq)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[Documents](General.Documents.Documents.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### Sequence

The sequence that will be used to give new numbers to the documents of this type. `Filter(multi eq)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[Sequences](Systems.Documents.Sequences.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### ToCompanyDivision

The division of the company, receiving the document. null when the document is not received by any specific division. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[CompanyDivisions](General.Contacts.CompanyDivisions.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

### ToParty

The party which should receive the document. `Filter(multi eq)` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[Parties](General.Contacts.Parties.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  

_Back-End Default Expression:_  
`obj.ObtainToParty( )`

### TransportFromGeoPoint

Geographical location of the loading, if available. `Filter(multi eq)`

_Type_: **[GeoPoints](General.Geography.GeoPoints.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### TransportFromParty

Shipping party. `Required` `Filter(multi eq)`

_Type_: **[Parties](General.Contacts.Parties.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### TransportFromPartyContactMechanism

Loading address. `Required` `Filter(multi eq)`

_Type_: **[PartyContactMechanisms](General.Contacts.PartyContactMechanisms.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### TransportToGeoPoint

Geographical location of the unloading, if available. `Filter(multi eq)`

_Type_: **[GeoPoints](General.Geography.GeoPoints.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### TransportToParty

Receiving party. `Required` `Filter(multi eq)`

_Type_: **[Parties](General.Contacts.Parties.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### TransportToPartyContactMechanism

Unload address. `Required` `Filter(multi eq)`

_Type_: **[PartyContactMechanisms](General.Contacts.PartyContactMechanisms.md)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### UserStatus

The user status of this document if applicable for this document type. null means unknown or not yet set. `Filter(multi eq)` `ReadOnly` (Inherited from [Documents](General.Documents.Documents.md))

_Type_: **[DocumentTypeUserStatuses](Systems.Documents.DocumentTypeUserStatuses.md) (nullable)**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **HiddenByDefault**  


## API Methods

Methods that can be invoked in public APIs.

### ChangeState

Changes the document state to the specified new state              (Inherited from [Documents](General.Documents.Documents.md))  
_Return Type_: **void**  
_Declaring Type_: **[Documents](General.Documents.Documents.md)**  
_Domain API Request_: **POST**  

**Parameters**  
  * **newState**  
    The desired new state of the document  
    _Type_: General.Documents.DocumentState  
    Enumeration of document system states  
    _Allowed Values (General.Documents.DocumentState Enum Members)_  

    | Value | Description |
    | ---- | --- |
    | New | New document, just created. Can be edited. (Stored as 0). <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'New' |
    | Adjustment | Document which adjusts other released documents. (Stored as 5). <br /> _Model Value:_ 5 <br /> _Domain API Value:_ 'Adjustment' |
    | Planned | Planned by the system for future releasing. (Stored as 10). <br /> _Model Value:_ 10 <br /> _Domain API Value:_ 'Planned' |
    | FirmPlanned | Planned by operator for future releasing. (Stored as 20). <br /> _Model Value:_ 20 <br /> _Domain API Value:_ 'FirmPlanned' |
    | Released | Released document. Changes can be applied only through adjustment documents. (Stored as 30). <br /> _Model Value:_ 30 <br /> _Domain API Value:_ 'Released' |
    | Completed | Work has completed. (Stored as 40). <br /> _Model Value:_ 40 <br /> _Domain API Value:_ 'Completed' |
    | Closed | The document is audited and closed. Adjustments are not allowed, but reopening is allowed. (Stored as 50). <br /> _Model Value:_ 50 <br /> _Domain API Value:_ 'Closed' |


  * **userStatus**  
    The desired new user status of the document. Can be null.  
    _Type_: [DocumentTypeUserStatuses](Systems.Documents.DocumentTypeUserStatuses.md)  
     _Optional_: True  
    _Default Value_: null  


The process of changing the document state is very labor intensive and includes              validation, generation of sub-documents and some other document-specific tasks.                          The state changing process might be very time-consuming, usually ranging              from 500 to 5000 milliseconds.                          Document states usually can only be advanced to higher states, but there are              exceptions from this rule. Database settings and configuration options might affect             the allowed state changes.                          Numerous kinds of document-specific and generic exceptions can be thrown during the             process.

### ProcessSingleRoute

Processes the document route.               (Inherited from [Documents](General.Documents.Documents.md))  
_Return Type_: **void**  
_Declaring Type_: **[Documents](General.Documents.Documents.md)**  
_Domain API Request_: **POST**  

**Parameters**  
  * **route**  
      
    _Type_: [Routes](Systems.Documents.Routes.md)  

  * **processForLowerDocumentStates**  
      
    _Type_: boolean  


### Complete

Changes the document state to Completed with all Release-ed sub-documents              (Inherited from [Documents](General.Documents.Documents.md))  
_Return Type_: **void**  
_Declaring Type_: **[Documents](General.Documents.Documents.md)**  
_Domain API Request_: **POST**  

**Parameters**  
  * **completion**  
    How the sub-documents will be completed, if at all  
    _Type_: General.Documents.DocumentCompletion  
    Determines how Document will be completed  
    _Allowed Values (General.Documents.DocumentCompletion Enum Members)_  

    | Value | Description |
    | ---- | --- |
    | OnlyDocument | Only the document will be completed <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'OnlyDocument' |
    | WithAllChildren | The document, along with is sub-documents, will be completed <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'WithAllChildren' |
    | WithReleasedChildren | The document, along with its Release-ed sub-documents, will be completed <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'WithReleasedChildren' |



The process of changing the document state is very labor intensive and includes              validation, generation of sub-documents and some other document-specific tasks.                          The state changing process might be very time-consuming, usually ranging              from 500 to 5000 milliseconds.                          Document states usually can only be advanced to higher states, but there are              exceptions from this rule. Database settings and configuration options might affect             the allowed state changes.                          Numerous kinds of document-specific and generic exceptions can be thrown during the             process.

### MakeVoid

Makes the document void. The operation is irreversible.              (Inherited from [Documents](General.Documents.Documents.md))  
_Return Type_: **void**  
_Declaring Type_: **[Documents](General.Documents.Documents.md)**  
_Domain API Request_: **POST**  

**Parameters**  
  * **reason**  
    The reason for voiding the document.  
    _Type_: string  

  * **voidType**  
    The type of void operation to execute.  
    _Type_: General.Documents.DocumentsRepositoryBase.VoidType  
    Specifies the type of void operation  
    _Allowed Values (General.Documents.DocumentsRepositoryBase.VoidType Enum Members)_  

    | Value | Description |
    | ---- | --- |
    | VoidDocument | Void only the document. If there are sub-documents, the operation might fail. <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'VoidDocument' |
    | VoidWithSubDocuments | Void the document and its non-released sub-documents. If there are released sub-documents, the operation might fail. <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'VoidWithSubDocuments' |
    | VoidWithReleased<br />SubDocuments | Void the document and all of its sub-documents, even the released ones. <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'VoidWithReleased<br />SubDocuments' |

     _Optional_: True  
    _Default Value_: VoidDocument  

  * **resetParentState**  
    Resets the parent state of document.  
    _Type_: boolean  
     _Optional_: True  
    _Default Value_: True  


### GetPrintout

Gets a document printout as a file. The returned value is Base64 string representation of the file contents.             This method creates `DocumentPrint`(General.Documents.DocumentPrints.md).              (Inherited from [Documents](General.Documents.Documents.md))  
_Return Type_: **string**  
_Declaring Type_: **[Documents](General.Documents.Documents.md)**  
_Domain API Request_: **POST**  

**Parameters**  
  * **fileFormat**  
    The file format: pdf, html, xlsx, xls, docx, txt and png. The default format is 'pdf'.  
    _Type_: string  
     _Optional_: True  
    _Default Value_: pdf  

  * **printout**  
    The printout defined for the document type of the document. If null the default printout of the document type is used.  
    _Type_: [Printouts](Systems.Documents.Printouts.md)  
     _Optional_: True  
    _Default Value_: null  


### Recalculate

The document and all of its owned objects will be altered to become valid.              (Inherited from [Documents](General.Documents.Documents.md))  
_Return Type_: **void**  
_Declaring Type_: **[Documents](General.Documents.Documents.md)**  
_Domain API Request_: **POST**  

In some cases the objects in child collection of the document depend on values from other child objects.             This method ensures that all child objects are properly validated.             The changes are only in memory and are not committed to the server.

### GetAllParentDocuments

Gets all parent documents, traversing the parent document chain by using the Parent property.              (Inherited from [Documents](General.Documents.Documents.md))  
_Return Type_: **Collection Of [Documents](General.Documents.Documents.md)**  
_Declaring Type_: **[Documents](General.Documents.Documents.md)**  
_Domain API Request_: **GET**  

**Parameters**  
  * **includeSelf**  
    if set to true the current document is included.  
    _Type_: boolean  
     _Optional_: True  
    _Default Value_: False  


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

[!list limit=1000 erp.entity=Logistics.Transportation.TransportationRequisitions erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Logistics.Transportation.TransportationRequisitions erp.type=front-end-business-rule default-text="None"]

## Generations

[!list limit=1000 erp.entity=Logistics.Transportation.TransportationRequisitions erp.type=generation default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Logistics_Transportation_TransportationRequisitions?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Logistics_Transportation_TransportationRequisitions?$top=10>

