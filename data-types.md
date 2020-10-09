---
uid: data-types
---
# Data Types

## Simple Types

## Complex Types

### MultilanguageString

Multi-language strings - https://enterpriseone.atlassian.net/wiki/display/techdoc/Multi-language

Some text properties support value in more than one language. This properties are of multi-language string type.

Example: General_Products_Products.Name property.

The multi-language string can store many language strings, indexing them by language key. The language key is a CultureInfo two letter ISO language name, like "en", "de", etc.

For example the Name property of General_Products_Products entity is displayed as:
<code>
{
  "Name": {
	  "bg": "Ябълка",
	  "en": "Apple"
  }
}
<code>

>ALL multi-language values are treated as a single value. You cannot GET/PUT/PATCH only some multi-language values - they are treated as a single piece of data.

> **Note!**  
> Multi-language properties support only filter function **contains**:  
> Domain API: 
> ~/General_Products_Products?$filter=contains(Name,'ppl')  
> This is an invalid filter:  
> ~/General_Products_Products?$filter=Name eq 'Apple'  

### Amount

The ERP domain model declares a special type for amount (currency) properties.

The amount is represented by value and currency.

**Properties**

| Name | Type | Description |
| --- | --- | --- |
| Currency | String | The currency of the amount represented by it's sign. |
| Value | Decimal | The value of the amount. |

Domain API Example:  
Example:

{
  "LineAmount": {
    "Value": "3.55",
    "Currency": "USD"
  }
}

### Quantity

The ERP domain model declares a special type for quantity properties.

The quantity is represented by value and measurement unit.

**Properties**

| Name | Type | Description |
| --- | --- | --- |
| Unit | String | TThe measurement unit of the quantity represented by it's code. |
| Value | Decimal | The value of the quantity. |

Domain API Example:  
Example:

{
  "LineAmount": {
    "Value": "5.555",
    "Unit": "PCS"
  }
}

### CustomPropertyValue

User-defined properties, which can supplement the system properties of almost all entities in the system.

Custom properties are defined in General_CustomProperties entity.

EntityName specifies the entity for which the property is applicable.

Table of EntityName -> REST API Resource Name corespondences

Custom properties can be free text property or restricted to a list of allowed values. This is specified by LimitToAllowedValues property.

AllowedValuesEntityName specifies that the allowed values are retrieved from the specified entity. If null the allowed values are retrieved from General_CustomPropertyAllowedValues

In EnterpriseOne REST API custom properties are properties of type General_CustomPropertyValue. The API name of the custom property starts with 'CustomProperty_' followed by the user defined property code.

Each database contains different custom properties and that is why each database have different EDM model ($metadata).

**Properties**

| Name | Type | Description |
| --- | --- | --- |
| Value | String | The short value |
| Description | [MultilanguageString] | The description of the property value.Can be null. |
| ValueId | guid (nullable) | The Id of the entry represented by the property value. It's the id of the allowed value. Can be null. |

Domain API Example:  

"CustomProperty_color": {
    "Value": "Син",
    "ValueId": "5263a2d3-88b0-41db-adae-31c76135719e",
    "Description": {
        "BG": "Морско"
    }
}