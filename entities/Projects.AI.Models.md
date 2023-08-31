---
uid: Projects.AI.Models
---
# Projects.AI.Models Entity

**Namespace:** [Projects.AI](Projects.AI.md)  

Language models, which will be enriched with domain specific knowledge. Entity: Llm_Models (Introduced in version 24.1.1.92)

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Name_  
Name Data Member:  
_Name_  
Category:  _Definitions_  
Show in UI:  _ShownByDefault_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Projects.AI.Models](Projects.AI.Models.md)  
  * [Projects.AI.ModelBuilds](Projects.AI.ModelBuilds.md)  
  * [Projects.AI.ModelQAs](Projects.AI.ModelQAs.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AutoUpdateToLatestBuild](Projects.AI.Models.md#autoupdatetolatestbuild) | boolean | Indicates whether to automatically update Conversation Build to the latest successful build. `Required` `Default(true)` 
| [BaseProviderModel](Projects.AI.Models.md#baseprovidermodel) | string (64) __nullable__ | Provider-specific base model, to which we will add domain specific knowledge (for example "gpt-3.5-turbo-0613"). null for non-buildable models (only used as child models). 
| [DisplayText](Projects.AI.Models.md#displaytext) | string | Uses the repository DisplayTextFormat to build the display text from the attributes and references of current object. 
| [Id](Projects.AI.Models.md#id) | guid |  
| [Name](Projects.AI.Models.md#name) | [MultilanguageString (256)](../data-types.md#multilanguagestring) | Multi-language name of the model. `Required` `Filter(like)` 
| [Notes](Projects.AI.Models.md#notes) | string (max) __nullable__ | Notes for this Model. 
| [ObjectVersion](Projects.AI.Models.md#objectversion) | int32 | The latest version of the extensible data object for the aggregate root for the time the object is loaded from the database. Can be used for optimistic locking. 
| [Provider](Projects.AI.Models.md#provider) | [Provider](Projects.AI.Models.md#provider) | The provider of the base models. Currently, only OpenAI is supported. `Required` `Default("OpenAI")` `Filter(eq)` 
| [ProviderApiKey](Projects.AI.Models.md#providerapikey) | string (128) __nullable__ | The API key, which should be used to access the provider. null for non-buildable models (only used as child models). 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ConversationBuild](Projects.AI.Models.md#conversationbuild) | [ModelBuilds](Projects.AI.ModelBuilds.md) (nullable) | The build, which should be used, when conversing on behalf of the model. Usually, updated to the latest successful build. null means the model could not be used for conversations. `Filter(multi eq)` |
| [Parent](Projects.AI.Models.md#parent) | [Models](Projects.AI.Models.md) (nullable) | A model, which contains the current model. When building a parent model, it will consume all QAs from all child models. `Filter(multi eq)` |
| [VirtualUser](Projects.AI.Models.md#virtualuser) | [Users](Systems.Security.Users.md) (nullable) | The virtual user, which will answer in chats on behalf of the model. null means the model cannot be used in chat. Each model should have different virtual user. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Builds | [ModelBuilds](Projects.AI.ModelBuilds.md) | List of `ModelBuild`(Projects.AI.ModelBuilds.md) child objects, based on the `Projects.AI.ModelBuild.Model`(Projects.AI.ModelBuilds.md#model) back reference 
| QAs | [ModelQAs](Projects.AI.ModelQAs.md) | List of `ModelQA`(Projects.AI.ModelQAs.md) child objects, based on the `Projects.AI.ModelQA.Model`(Projects.AI.ModelQAs.md#model) back reference 


## Attribute Details

### AutoUpdateToLatestBuild

Indicates whether to automatically update Conversation Build to the latest successful build. `Required` `Default(true)`

_Type_: **boolean**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **True**  
_Show in UI_: **ShownByDefault**  

### BaseProviderModel

Provider-specific base model, to which we will add domain specific knowledge (for example "gpt-3.5-turbo-0613"). null for non-buildable models (only used as child models).

_Type_: **string (64) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  
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

### Name

Multi-language name of the model. `Required` `Filter(like)`

_Type_: **[MultilanguageString (256)](../data-types.md#multilanguagestring)**  
_Category_: **System**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Show in UI_: **ShownByDefault**  

### Notes

Notes for this Model.

_Type_: **string (max) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
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

### Provider

The provider of the base models. Currently, only OpenAI is supported. `Required` `Default("OpenAI")` `Filter(eq)`

_Type_: **[Provider](Projects.AI.Models.md#provider)**  
_Category_: **System**  
Allowed values for the `Provider`(Projects.AI.Models.md#provider) data attribute  
_Allowed Values (Projects.AI.ModelsRepository.Provider Enum Members)_  

| Value | Description |
| ---- | --- |
| OpenAI | OpenAI value. Stored as 'OpenAI'. <br /> _Database Value:_ 'OpenAI' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'OpenAI' |

_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **OpenAI**  
_Show in UI_: **ShownByDefault**  

### ProviderApiKey

The API key, which should be used to access the provider. null for non-buildable models (only used as child models).

_Type_: **string (128) __nullable__**  
_Category_: **System**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **128**  
_Show in UI_: **ShownByDefault**  


## Reference Details

### ConversationBuild

The build, which should be used, when conversing on behalf of the model. Usually, updated to the latest successful build. null means the model could not be used for conversations. `Filter(multi eq)`

_Type_: **[ModelBuilds](Projects.AI.ModelBuilds.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### Parent

A model, which contains the current model. When building a parent model, it will consume all QAs from all child models. `Filter(multi eq)`

_Type_: **[Models](Projects.AI.Models.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  

### VirtualUser

The virtual user, which will answer in chats on behalf of the model. null means the model cannot be used in chat. Each model should have different virtual user. `Filter(multi eq)`

_Type_: **[Users](Systems.Security.Users.md) (nullable)**  
_Indexed_: **True**  
_Category_: **System**  
_Supported Filters_: **Equals, EqualsIn**  
_Show in UI_: **ShownByDefault**  


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

[!list limit=1000 erp.entity=Projects.AI.Models erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Projects.AI.Models erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Projects_AI_Models?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Projects_AI_Models?$top=10>

