---
uid: serial-numbers-business-rules
---

# Serial numbers

The serial number is indicated in the document lines and it could be selected from a drop-down list. The value could be manually changed by the user. In order to make sure that the right serial number correctly set, we need to make certain validations. The description of the validations is specified in the table below. Those validations are executed separately for different documents at various events. For more information, please check the 'Business Rules' section for the particular document.

| Specification | Value |
| ---- | ----- |
| Action | 	If 'DocumetLine.SerialNumber' has a value, validate that: <ul><li>'DocumentLine.Product.IsSerialized == True'</li><li>'DocumentLine.Quantity == 1, 0, - 1' AND 'DocumentLine.QuantityUnit == 'DocumentLine.QuantityUnit.MeasurementUnit[SystemUnit == Pieces]'</li><li>'DocumentLine.SerialNumber.Product == DocumentLine.Product'</li></ul>'|
| Description | <ul><li>The field “Serial number” could have a value if and only if the product in the line is serialized. In this case, if the product in the line is serialized, then it may contain a value but it is not required. Otherwise – the field must be empty because only serilized products can be used with serial numbers.</li><li>Serialized products can not be partially purchased or sold and each one of them has a serial number, which needs to be unique. That's why products that are marked as serialized can't be used with a quantity that is different from 1, 0, - 1. Because this would mean that we either partially purchased/sold the product, or we are purchasing/selling more than one product with the same serial number. Products which are marked as serialized can only be used in pieces.</li><li>If the field “Serial number” has a value, then we need to make sure that this value (serial number) corresponds to the product which is in the line. This means that the product set in the particular serial number’s definitions must be the same as the one filled in the line. The rule ensures that the accidental switch between different product’s serial numbers is avoided.</li></ul> |
| Message | <ul><li>Attribute 'Serial Number' must be null.<ul><li>The quantity for line [LineNo] is not -1, 0 or 1, which is not allowed for products with serial numbers.</li><li>The measurement unit in line [LineNo] is not pieces. For products with serial numbers, only measurement units with SystemType = Pieces are allowed.</li><li>The product for line [LineNo] should match the product, specified in the definition of the serial number.</li></ul> |
| Sort Message By Attribute | LineNo |
