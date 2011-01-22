require 'soap/mapping'

module Docusign

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsC_30 = "http://www.docusign.net/API/3.0"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  EncodedRegistry.register(
    :class => Docusign::Envelope,
    :schema_type => XSD::QName.new(NsC_30, "Envelope"),
    :schema_element => [
      ["transactionID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TransactionID")], [0, 1]],
      ["asynchronous", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Asynchronous")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["documents", ["Docusign::ArrayOfDocument", XSD::QName.new(NsC_30, "Documents")], [0, 1]],
      ["recipients", ["Docusign::ArrayOfRecipient", XSD::QName.new(NsC_30, "Recipients")], [0, 1]],
      ["tabs", ["Docusign::ArrayOfTab", XSD::QName.new(NsC_30, "Tabs")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Subject")], [0, 1]],
      ["emailBlurb", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EmailBlurb")], [0, 1]],
      ["signingLocation", ["Docusign::SigningLocationCode", XSD::QName.new(NsC_30, "SigningLocation")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfCustomField", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["vaultingOptions", ["Docusign::VaultingOptions", XSD::QName.new(NsC_30, "VaultingOptions")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["envelopeIdStamping", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnvelopeIdStamping")], [0, 1]],
      ["authoritativeCopy", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AuthoritativeCopy")], [0, 1]],
      ["notification", ["Docusign::Notification", XSD::QName.new(NsC_30, "Notification")], [0, 1]],
      ["envelopeAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "EnvelopeAttachment")], [0, 1]],
      ["enforceSignerVisibility", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnforceSignerVisibility")], [0, 1]],
      ["enableWetSign", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnableWetSign")], [0, 1]],
      ["allowMarkup", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AllowMarkup")], [0, 1]],
      ["eventNotification", ["Docusign::EventNotification", XSD::QName.new(NsC_30, "EventNotification")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfDocument,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfDocument"),
    :schema_element => [
      ["document", ["Docusign::Document[]", XSD::QName.new(NsC_30, "Document")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::Document,
    :schema_type => XSD::QName.new(NsC_30, "Document"),
    :schema_element => [
      ["iD", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "ID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["pDFBytes", ["SOAP::SOAPBase64", XSD::QName.new(NsC_30, "PDFBytes")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Password")], [0, 1]],
      ["transformPdfFields", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TransformPdfFields")], [0, 1]],
      ["fileExtension", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "FileExtension")], [0, 1]],
      ["matchBoxes", ["Docusign::ArrayOfMatchBox", XSD::QName.new(NsC_30, "MatchBoxes")], [0, 1]],
      ["attachmentDescription", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AttachmentDescription")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfMatchBox,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfMatchBox"),
    :schema_element => [
      ["matchBox", ["Docusign::MatchBox[]", XSD::QName.new(NsC_30, "MatchBox")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::MatchBox,
    :schema_type => XSD::QName.new(NsC_30, "MatchBox"),
    :schema_element => [
      ["pageNumber", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "PageNumber")], [0, 1]],
      ["xPosition", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "XPosition")]],
      ["yPosition", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "YPosition")]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "Width")]],
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "Height")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfRecipient,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipient"),
    :schema_element => [
      ["recipient", ["Docusign::Recipient[]", XSD::QName.new(NsC_30, "Recipient")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::Recipient,
    :schema_type => XSD::QName.new(NsC_30, "Recipient"),
    :schema_element => [
      ["iD", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "ID")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["signerName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SignerName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["type", ["Docusign::RecipientTypeCode", XSD::QName.new(NsC_30, "Type")]],
      ["accessCode", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccessCode")]],
      ["addAccessCodeToEmail", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AddAccessCodeToEmail")], [0, 1]],
      ["requireIDLookup", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "RequireIDLookup")], [0, 1]],
      ["iDCheckConfigurationName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "IDCheckConfigurationName")], [0, 1]],
      ["phoneAuthentication", ["Docusign::RecipientPhoneAuthentication", XSD::QName.new(NsC_30, "PhoneAuthentication")], [0, 1]],
      ["signatureInfo", ["Docusign::RecipientSignatureInfo", XSD::QName.new(NsC_30, "SignatureInfo")], [0, 1]],
      ["captiveInfo", ["Docusign::RecipientCaptiveInfo", XSD::QName.new(NsC_30, "CaptiveInfo")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfString1", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["routingOrder", ["SOAP::SOAPUnsignedShort", XSD::QName.new(NsC_30, "RoutingOrder")], [0, 1]],
      ["iDCheckInformationInput", ["Docusign::IDCheckInformationInput", XSD::QName.new(NsC_30, "IDCheckInformationInput")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["recipientAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "RecipientAttachment")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Note")], [0, 1]],
      ["roleName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RoleName")], [0, 1]],
      ["templateLocked", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TemplateLocked")], [0, 1]],
      ["templateRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TemplateRequired")], [0, 1]],
      ["templateAccessCodeRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TemplateAccessCodeRequired")], [0, 1]],
      ["defaultRecipient", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "DefaultRecipient")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientPhoneAuthentication,
    :schema_type => XSD::QName.new(NsC_30, "RecipientPhoneAuthentication"),
    :schema_element => [
      ["recipMayProvideNumber", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "RecipMayProvideNumber")], [0, 1]],
      ["validateRecipProvidedNumber", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ValidateRecipProvidedNumber")], [0, 1]],
      ["recordVoicePrint", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "RecordVoicePrint")], [0, 1]],
      ["senderProvidedNumbers", ["Docusign::ArrayOfString", XSD::QName.new(NsC_30, "SenderProvidedNumbers")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfString,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString"),
    :schema_element => [
      ["senderProvidedNumber", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "SenderProvidedNumber")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientSignatureInfo,
    :schema_type => XSD::QName.new(NsC_30, "RecipientSignatureInfo"),
    :schema_element => [
      ["signatureName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SignatureName")], [0, 1]],
      ["signatureInitials", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SignatureInitials")], [0, 1]],
      ["fontStyle", ["Docusign::FontStyleCode", XSD::QName.new(NsC_30, "FontStyle")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientCaptiveInfo,
    :schema_type => XSD::QName.new(NsC_30, "RecipientCaptiveInfo"),
    :schema_element => [
      ["clientUserId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ClientUserId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfString1,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString1"),
    :schema_element => [
      ["customField", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "CustomField")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::IDCheckInformationInput,
    :schema_type => XSD::QName.new(NsC_30, "IDCheckInformationInput"),
    :schema_element => [
      ["addressInformationInput", ["Docusign::AddressInformationInput", XSD::QName.new(NsC_30, "AddressInformationInput")], [0, 1]],
      ["dOBInformationInput", ["Docusign::DOBInformationInput", XSD::QName.new(NsC_30, "DOBInformationInput")], [0, 1]],
      ["sSN4InformationInput", ["Docusign::SSN4InformationInput", XSD::QName.new(NsC_30, "SSN4InformationInput")], [0, 1]],
      ["sSN9InformationInput", ["Docusign::SSN9InformationInput", XSD::QName.new(NsC_30, "SSN9InformationInput")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AddressInformationInput,
    :schema_type => XSD::QName.new(NsC_30, "AddressInformationInput"),
    :schema_element => [
      ["addressInformation", ["Docusign::AddressInformation", XSD::QName.new(NsC_30, "AddressInformation")], [0, 1]],
      ["displayLevel", ["Docusign::DisplayLevelCode", XSD::QName.new(NsC_30, "DisplayLevel")], [0, 1]],
      ["receiveInResponse", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReceiveInResponse")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AddressInformation,
    :schema_type => XSD::QName.new(NsC_30, "AddressInformation"),
    :schema_element => [
      ["street1", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Street1")], [0, 1]],
      ["street2", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Street2")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "State")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Zip")], [0, 1]],
      ["zipPlus4", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ZipPlus4")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::DOBInformationInput,
    :schema_type => XSD::QName.new(NsC_30, "DOBInformationInput"),
    :schema_element => [
      ["dOBInformation", ["Docusign::DOBInformation", XSD::QName.new(NsC_30, "DOBInformation")], [0, 1]],
      ["displayLevel", ["Docusign::DisplayLevelCode", XSD::QName.new(NsC_30, "DisplayLevel")], [0, 1]],
      ["receiveInResponse", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReceiveInResponse")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::DOBInformation,
    :schema_type => XSD::QName.new(NsC_30, "DOBInformation"),
    :schema_element => [
      ["dOB", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "DOB")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::SSN4InformationInput,
    :schema_type => XSD::QName.new(NsC_30, "SSN4InformationInput"),
    :schema_element => [
      ["sSN4Information", ["Docusign::SSN4Information", XSD::QName.new(NsC_30, "SSN4Information")], [0, 1]],
      ["displayLevel", ["Docusign::DisplayLevelCode", XSD::QName.new(NsC_30, "DisplayLevel")], [0, 1]],
      ["receiveInResponse", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReceiveInResponse")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::SSN4Information,
    :schema_type => XSD::QName.new(NsC_30, "SSN4Information"),
    :schema_element => [
      ["sSN4", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SSN4")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::SSN9InformationInput,
    :schema_type => XSD::QName.new(NsC_30, "SSN9InformationInput"),
    :schema_element => [
      ["sSN9Information", ["Docusign::SSN9Information", XSD::QName.new(NsC_30, "SSN9Information")], [0, 1]],
      ["displayLevel", ["Docusign::DisplayLevelCode", XSD::QName.new(NsC_30, "DisplayLevel")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::SSN9Information,
    :schema_type => XSD::QName.new(NsC_30, "SSN9Information"),
    :schema_element => [
      ["sSN9", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SSN9")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfAttachment,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfAttachment"),
    :schema_element => [
      ["attachment", ["Docusign::Attachment[]", XSD::QName.new(NsC_30, "Attachment")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::Attachment,
    :schema_type => XSD::QName.new(NsC_30, "Attachment"),
    :schema_element => [
      ["data", ["SOAP::SOAPBase64", XSD::QName.new(NsC_30, "Data")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Label")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfTab,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfTab"),
    :schema_element => [
      ["tab", ["Docusign::Tab[]", XSD::QName.new(NsC_30, "Tab")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::Tab,
    :schema_type => XSD::QName.new(NsC_30, "Tab"),
    :schema_element => [
      ["documentID", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "DocumentID")], [0, 1]],
      ["recipientID", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "RecipientID")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "PageNumber")], [0, 1]],
      ["xPosition", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "XPosition")], [0, 1]],
      ["yPosition", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "YPosition")], [0, 1]],
      ["scaleValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_30, "ScaleValue")], [0, 1]],
      ["anchorTabItem", ["Docusign::AnchorTab", XSD::QName.new(NsC_30, "AnchorTabItem")], [0, 1]],
      ["type", ["Docusign::TabTypeCode", XSD::QName.new(NsC_30, "Type")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["tabLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabLabel")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Value")], [0, 1]],
      ["customTabType", ["Docusign::CustomTabType", XSD::QName.new(NsC_30, "CustomTabType")], [0, 1]],
      ["customTabWidth", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "CustomTabWidth")], [0, 1]],
      ["customTabHeight", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "CustomTabHeight")], [0, 1]],
      ["customTabRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CustomTabRequired")], [0, 1]],
      ["customTabLocked", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CustomTabLocked")], [0, 1]],
      ["customTabDisableAutoSize", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CustomTabDisableAutoSize")], [0, 1]],
      ["customTabListItems", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabListItems")], [0, 1]],
      ["customTabListValues", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabListValues")], [0, 1]],
      ["customTabListSelectedValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabListSelectedValue")], [0, 1]],
      ["customTabRadioGroupName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabRadioGroupName")], [0, 1]],
      ["customTabValidationPattern", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabValidationPattern")], [0, 1]],
      ["customTabValidationMessage", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabValidationMessage")], [0, 1]],
      ["templateLocked", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TemplateLocked")], [0, 1]],
      ["templateRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TemplateRequired")], [0, 1]],
      ["conditionalParentLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ConditionalParentLabel")], [0, 1]],
      ["conditionalParentValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ConditionalParentValue")], [0, 1]],
      ["sharedTab", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "SharedTab")], [0, 1]],
      ["requireInitialOnSharedTabChange", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "RequireInitialOnSharedTabChange")], [0, 1]],
      ["concealValueOnDocument", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ConcealValueOnDocument")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AnchorTab,
    :schema_type => XSD::QName.new(NsC_30, "AnchorTab"),
    :schema_element => [
      ["anchorTabString", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AnchorTabString")], [0, 1]],
      ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "XOffset")], [0, 1]],
      ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "YOffset")], [0, 1]],
      ["unit", ["Docusign::UnitTypeCode", XSD::QName.new(NsC_30, "Unit")], [0, 1]],
      ["ignoreIfNotPresent", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "IgnoreIfNotPresent")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfCustomField,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfCustomField"),
    :schema_element => [
      ["customField", ["Docusign::CustomField[]", XSD::QName.new(NsC_30, "CustomField")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::CustomField,
    :schema_type => XSD::QName.new(NsC_30, "CustomField"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["show", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Show")], [0, 1]],
      ["required", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Required")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Value")], [0, 1]],
      ["customFieldType", ["Docusign::CustomFieldType", XSD::QName.new(NsC_30, "CustomFieldType")], [0, 1]],
      ["listItems", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ListItems")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::VaultingOptions,
    :schema_type => XSD::QName.new(NsC_30, "VaultingOptions"),
    :schema_element => [
      ["vaultingMode", ["Docusign::VaultingModeCode", XSD::QName.new(NsC_30, "VaultingMode")]],
      ["eODTransactionName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODTransactionName")], [0, 1]],
      ["eODDocumentName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODDocumentName")], [0, 1]],
      ["eODDocumentDescription", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODDocumentDescription")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::Notification,
    :schema_type => XSD::QName.new(NsC_30, "Notification"),
    :schema_element => [
      ["useAccountDefaults", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "UseAccountDefaults")], [0, 1]],
      ["reminders", ["Docusign::Reminders", XSD::QName.new(NsC_30, "Reminders")], [0, 1]],
      ["expirations", ["Docusign::Expirations", XSD::QName.new(NsC_30, "Expirations")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::Reminders,
    :schema_type => XSD::QName.new(NsC_30, "Reminders"),
    :schema_element => [
      ["reminderEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReminderEnabled")]],
      ["reminderDelay", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "ReminderDelay")], [0, 1]],
      ["reminderFrequency", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "ReminderFrequency")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::Expirations,
    :schema_type => XSD::QName.new(NsC_30, "Expirations"),
    :schema_element => [
      ["expireEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ExpireEnabled")]],
      ["expireAfter", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "ExpireAfter")], [0, 1]],
      ["expireWarn", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "ExpireWarn")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EventNotification,
    :schema_type => XSD::QName.new(NsC_30, "EventNotification"),
    :schema_element => [
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "URL")], [0, 1]],
      ["loggingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "LoggingEnabled")], [0, 1]],
      ["envelopeEvents", ["Docusign::ArrayOfEnvelopeEvent", XSD::QName.new(NsC_30, "EnvelopeEvents")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfEnvelopeEvent,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfEnvelopeEvent"),
    :schema_element => [
      ["envelopeEvent", ["Docusign::EnvelopeEvent[]", XSD::QName.new(NsC_30, "EnvelopeEvent")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeEvent,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeEvent"),
    :schema_element => [
      ["envelopeEventStatusCode", ["Docusign::EnvelopeEventStatusCode", XSD::QName.new(NsC_30, "EnvelopeEventStatusCode")]],
      ["includeDocuments", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "IncludeDocuments")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeStatus,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatus"),
    :schema_element => [
      ["recipientStatuses", ["Docusign::ArrayOfRecipientStatus", XSD::QName.new(NsC_30, "RecipientStatuses")]],
      ["timeGenerated", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "TimeGenerated")]],
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Subject")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["status", ["Docusign::EnvelopeStatusCode", XSD::QName.new(NsC_30, "Status")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Created")]],
      ["deleted", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Deleted")], [0, 1]],
      ["sent", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Sent")], [0, 1]],
      ["delivered", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Delivered")], [0, 1]],
      ["signed", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Signed")], [0, 1]],
      ["completed", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Completed")], [0, 1]],
      ["declined", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Declined")], [0, 1]],
      ["timedOut", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "TimedOut")], [0, 1]],
      ["aCStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ACStatus")], [0, 1]],
      ["aCStatusDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "ACStatusDate")]],
      ["aCHolder", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ACHolder")], [0, 1]],
      ["aCHolderEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ACHolderEmail")], [0, 1]],
      ["aCHolderLocation", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ACHolderLocation")], [0, 1]],
      ["signingLocation", ["Docusign::SigningLocationCode", XSD::QName.new(NsC_30, "SigningLocation")]],
      ["senderIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SenderIPAddress")], [0, 1]],
      ["envelopePDFHash", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopePDFHash")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfCustomField", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["vaultingDetails", ["Docusign::VaultingDetails", XSD::QName.new(NsC_30, "VaultingDetails")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")]],
      ["envelopeIdStamping", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnvelopeIdStamping")]],
      ["authoritativeCopy", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AuthoritativeCopy")], [0, 1]],
      ["envelopeAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "EnvelopeAttachment")], [0, 1]],
      ["documentStatuses", ["Docusign::ArrayOfDocumentStatus", XSD::QName.new(NsC_30, "DocumentStatuses")], [0, 1]],
      ["formData", ["Docusign::FormData", XSD::QName.new(NsC_30, "FormData")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfRecipientStatus,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipientStatus"),
    :schema_element => [
      ["recipientStatus", ["Docusign::RecipientStatus[]", XSD::QName.new(NsC_30, "RecipientStatus")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientStatus,
    :schema_type => XSD::QName.new(NsC_30, "RecipientStatus"),
    :schema_element => [
      ["type", ["Docusign::RecipientTypeCode", XSD::QName.new(NsC_30, "Type")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["routingOrder", ["SOAP::SOAPUnsignedShort", XSD::QName.new(NsC_30, "RoutingOrder")]],
      ["sent", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Sent")], [0, 1]],
      ["delivered", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Delivered")], [0, 1]],
      ["signed", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Signed")], [0, 1]],
      ["declined", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Declined")], [0, 1]],
      ["declineReason", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "DeclineReason")]],
      ["status", ["Docusign::RecipientStatusCode", XSD::QName.new(NsC_30, "Status")]],
      ["recipientIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RecipientIPAddress")], [0, 1]],
      ["clientUserId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ClientUserId")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["iDCheckInformation", ["Docusign::IDCheckInformation", XSD::QName.new(NsC_30, "IDCheckInformation")], [0, 1]],
      ["recipientAuthenticationStatus", ["Docusign::AuthenticationStatus", XSD::QName.new(NsC_30, "RecipientAuthenticationStatus")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfString1", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["tabStatuses", ["Docusign::ArrayOfTabStatus", XSD::QName.new(NsC_30, "TabStatuses")], [0, 1]],
      ["recipientAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "RecipientAttachment")], [0, 1]],
      ["accountStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountStatus")], [0, 1]],
      ["esignAgreementInformation", ["Docusign::RecipientStatusEsignAgreementInformation", XSD::QName.new(NsC_30, "EsignAgreementInformation")], [0, 1]],
      ["formData", ["Docusign::FormData", XSD::QName.new(NsC_30, "FormData")], [0, 1]],
      ["recipientId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RecipientId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::IDCheckInformation,
    :schema_type => XSD::QName.new(NsC_30, "IDCheckInformation"),
    :schema_element => [
      ["addressInformation", ["Docusign::AddressInformation", XSD::QName.new(NsC_30, "AddressInformation")], [0, 1]],
      ["dOBInformation", ["Docusign::DOBInformation", XSD::QName.new(NsC_30, "DOBInformation")], [0, 1]],
      ["sSN4Information", ["Docusign::SSN4Information", XSD::QName.new(NsC_30, "SSN4Information")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AuthenticationStatus,
    :schema_type => XSD::QName.new(NsC_30, "AuthenticationStatus"),
    :schema_element => [
      ["accessCodeResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "AccessCodeResult")], [0, 1]],
      ["iDQuestionsResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "IDQuestionsResult")], [0, 1]],
      ["iDLookupResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "IDLookupResult")], [0, 1]],
      ["ageVerifyResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "AgeVerifyResult")], [0, 1]],
      ["sTANPinResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "STANPinResult")], [0, 1]],
      ["oFACResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "OFACResult")], [0, 1]],
      ["phoneAuthResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "PhoneAuthResult")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EventResult,
    :schema_type => XSD::QName.new(NsC_30, "EventResult"),
    :schema_element => [
      ["status", ["Docusign::EventStatusCode", XSD::QName.new(NsC_30, "Status")]],
      ["eventTimestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "EventTimestamp")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfTabStatus,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfTabStatus"),
    :schema_element => [
      ["tabStatus", ["Docusign::TabStatus[]", XSD::QName.new(NsC_30, "TabStatus")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::TabStatus,
    :schema_type => XSD::QName.new(NsC_30, "TabStatus"),
    :schema_element => [
      ["tabType", ["Docusign::TabTypeCode", XSD::QName.new(NsC_30, "TabType")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Status")], [0, 1]],
      ["xPosition", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "XPosition")]],
      ["yPosition", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "YPosition")]],
      ["signed", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Signed")], [0, 1]],
      ["tabLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabLabel")], [0, 1]],
      ["tabName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabName")], [0, 1]],
      ["tabValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabValue")], [0, 1]],
      ["documentID", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "DocumentID")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "PageNumber")], [0, 1]],
      ["originalValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OriginalValue")], [0, 1]],
      ["validationPattern", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ValidationPattern")], [0, 1]],
      ["roleName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RoleName")], [0, 1]],
      ["listValues", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ListValues")], [0, 1]],
      ["listSelectedValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ListSelectedValue")], [0, 1]],
      ["scaleValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_30, "ScaleValue")], [0, 1]],
      ["customTabType", ["Docusign::CustomTabType", XSD::QName.new(NsC_30, "CustomTabType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientStatusEsignAgreementInformation,
    :schema_type => XSD::QName.new(NsC_30, "RecipientStatusEsignAgreementInformation"),
    :schema_element => [
      ["accountEsignId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountEsignId")], [0, 1]],
      ["userEsignId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserEsignId")], [0, 1]],
      ["agreementDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "AgreementDate")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::FormData,
    :schema_type => XSD::QName.new(NsC_30, "FormData"),
    :schema_element => [
      ["xfdf", "Docusign::FormDataXfdf", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::FormDataXfdf,
    :schema_type => XSD::QName.new(NsC_30, "FormDataXfdf"),
    :schema_element => [
      ["fields", "Docusign::ArrayOfFormDataXfdfField", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfFormDataXfdfField,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfFormDataXfdfField"),
    :schema_element => [
      ["field", "Docusign::FormDataXfdfField[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::FormDataXfdfField,
    :schema_type => XSD::QName.new(NsC_30, "FormDataXfdfField"),
    :schema_element => [
      ["value", "SOAP::SOAPString", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "name") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Docusign::VaultingDetails,
    :schema_type => XSD::QName.new(NsC_30, "VaultingDetails"),
    :schema_element => [
      ["eODTransactionName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODTransactionName")], [0, 1]],
      ["eODTransactionID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODTransactionID")], [0, 1]],
      ["eODDocumentProfileID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODDocumentProfileID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfDocumentStatus,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfDocumentStatus"),
    :schema_element => [
      ["documentStatus", ["Docusign::DocumentStatus[]", XSD::QName.new(NsC_30, "DocumentStatus")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::DocumentStatus,
    :schema_type => XSD::QName.new(NsC_30, "DocumentStatus"),
    :schema_element => [
      ["iD", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "ID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["templateName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateName")], [0, 1]],
      ["sequence", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "Sequence")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::Correction,
    :schema_type => XSD::QName.new(NsC_30, "Correction"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["envelopeSettingsCorrection", ["Docusign::EnvelopeSettings", XSD::QName.new(NsC_30, "EnvelopeSettingsCorrection")], [0, 1]],
      ["recipientCorrections", ["Docusign::ArrayOfRecipientCorrection", XSD::QName.new(NsC_30, "RecipientCorrections")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeSettings,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeSettings"),
    :schema_element => [
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["envelopeIdStamping", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnvelopeIdStamping")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfRecipientCorrection,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipientCorrection"),
    :schema_element => [
      ["recipientCorrection", ["Docusign::RecipientCorrection[]", XSD::QName.new(NsC_30, "RecipientCorrection")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientCorrection,
    :schema_type => XSD::QName.new(NsC_30, "RecipientCorrection"),
    :schema_element => [
      ["previousUserName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "PreviousUserName")], [0, 1]],
      ["previousEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "PreviousEmail")], [0, 1]],
      ["previousRoutingOrder", ["SOAP::SOAPUnsignedShort", XSD::QName.new(NsC_30, "PreviousRoutingOrder")]],
      ["previousSignerName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "PreviousSignerName")], [0, 1]],
      ["correctedUserName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedUserName")], [0, 1]],
      ["correctedSignerName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedSignerName")], [0, 1]],
      ["correctedEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedEmail")], [0, 1]],
      ["correctedCaptiveInfo", ["Docusign::RecipientCorrectionCorrectedCaptiveInfo", XSD::QName.new(NsC_30, "CorrectedCaptiveInfo")], [0, 1]],
      ["correctedAccessCode", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedAccessCode")], [0, 1]],
      ["correctedAccessCodeRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CorrectedAccessCodeRequired")], [0, 1]],
      ["correctedRequireIDLookup", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CorrectedRequireIDLookup")], [0, 1]],
      ["correctedIDCheckConfigurationName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedIDCheckConfigurationName")], [0, 1]],
      ["correctedRoutingOrder", ["SOAP::SOAPUnsignedShort", XSD::QName.new(NsC_30, "CorrectedRoutingOrder")], [0, 1]],
      ["correctedAutoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CorrectedAutoNavigation")], [0, 1]],
      ["correctedIDCheckInformationInput", ["Docusign::IDCheckInformationInput", XSD::QName.new(NsC_30, "CorrectedIDCheckInformationInput")], [0, 1]],
      ["resend", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Resend")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientCorrectionCorrectedCaptiveInfo,
    :schema_type => XSD::QName.new(NsC_30, "RecipientCorrectionCorrectedCaptiveInfo"),
    :schema_element => [
      ["clientUserId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ClientUserId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::CorrectionStatus,
    :schema_type => XSD::QName.new(NsC_30, "CorrectionStatus"),
    :schema_element => [
      ["envelopeSettingsCorrectionStatus", ["Docusign::EnvelopeSettings", XSD::QName.new(NsC_30, "EnvelopeSettingsCorrectionStatus")], [0, 1]],
      ["recipientCorrectionStatuses", ["Docusign::ArrayOfRecipientCorrectionStatus", XSD::QName.new(NsC_30, "RecipientCorrectionStatuses")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfRecipientCorrectionStatus,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipientCorrectionStatus"),
    :schema_element => [
      ["recipientCorrectionStatus", ["Docusign::RecipientCorrectionStatus[]", XSD::QName.new(NsC_30, "RecipientCorrectionStatus")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientCorrectionStatus,
    :schema_type => XSD::QName.new(NsC_30, "RecipientCorrectionStatus"),
    :schema_element => [
      ["correctionSucceeded", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CorrectionSucceeded")]],
      ["recipientCorrection", ["Docusign::RecipientCorrection", XSD::QName.new(NsC_30, "RecipientCorrection")], [0, 1]],
      ["recipientStatus", ["Docusign::RecipientStatus", XSD::QName.new(NsC_30, "RecipientStatus")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopePDF,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopePDF"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["pDFBytes", ["SOAP::SOAPBase64", XSD::QName.new(NsC_30, "PDFBytes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::DocumentPDFs,
    :schema_type => XSD::QName.new(NsC_30, "DocumentPDFs"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]],
      ["documentPDF", ["Docusign::DocumentPDF[]", XSD::QName.new(NsC_30, "DocumentPDF")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::DocumentPDF,
    :schema_type => XSD::QName.new(NsC_30, "DocumentPDF"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["pDFBytes", ["SOAP::SOAPBase64", XSD::QName.new(NsC_30, "PDFBytes")], [0, 1]],
      ["documentID", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "DocumentID")], [0, 1]],
      ["documentType", ["Docusign::DocumentType", XSD::QName.new(NsC_30, "DocumentType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeStatusFilter,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatusFilter"),
    :schema_element => [
      ["userInfo", ["Docusign::UserInfo", XSD::QName.new(NsC_30, "UserInfo")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["beginDateTime", ["Docusign::EnvelopeStatusFilterBeginDateTime", XSD::QName.new(NsC_30, "BeginDateTime")]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "EndDateTime")], [0, 1]],
      ["statuses", ["Docusign::ArrayOfEnvelopeStatusCode", XSD::QName.new(NsC_30, "Statuses")], [0, 1]],
      ["envelopeIds", ["Docusign::ArrayOfString2", XSD::QName.new(NsC_30, "EnvelopeIds")], [0, 1]],
      ["startAtIndex", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "StartAtIndex")]],
      ["aCStatus", ["Docusign::EnvelopeACStatusCode", XSD::QName.new(NsC_30, "ACStatus")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::UserInfo,
    :schema_type => XSD::QName.new(NsC_30, "UserInfo"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeStatusFilterBeginDateTime,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatusFilterBeginDateTime"),
    :schema_attribute => {
      XSD::QName.new(nil, "statusQualifier") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfEnvelopeStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfEnvelopeStatusCode"),
    :schema_element => [
      ["status", ["Docusign::EnvelopeStatusCode[]", XSD::QName.new(NsC_30, "Status")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfString2,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString2"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "EnvelopeId")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::FilteredEnvelopeStatusChanges,
    :schema_type => XSD::QName.new(NsC_30, "FilteredEnvelopeStatusChanges"),
    :schema_element => [
      ["resultSetSize", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "ResultSetSize")]],
      ["envelopeStatusChanges", ["Docusign::ArrayOfEnvelopeStatusChange", XSD::QName.new(NsC_30, "EnvelopeStatusChanges")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfEnvelopeStatusChange,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfEnvelopeStatusChange"),
    :schema_element => [
      ["envelopeStatusChange", ["Docusign::EnvelopeStatusChange[]", XSD::QName.new(NsC_30, "EnvelopeStatusChange")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeStatusChange,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatusChange"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["status", ["Docusign::EnvelopeStatusCode", XSD::QName.new(NsC_30, "Status")]],
      ["statusChanged", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "StatusChanged")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeStatusChangeFilter,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatusChangeFilter"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["userInfo", ["Docusign::UserInfo", XSD::QName.new(NsC_30, "UserInfo")], [0, 1]],
      ["statusChangedSince", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "StatusChangedSince")]],
      ["statuses", ["Docusign::ArrayOfEnvelopeStatusCode", XSD::QName.new(NsC_30, "Statuses")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::FilteredEnvelopeStatuses,
    :schema_type => XSD::QName.new(NsC_30, "FilteredEnvelopeStatuses"),
    :schema_element => [
      ["resultSetSize", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "ResultSetSize")]],
      ["envelopeStatusFilter", ["Docusign::EnvelopeStatusFilter", XSD::QName.new(NsC_30, "EnvelopeStatusFilter")], [0, 1]],
      ["envelopeStatuses", ["Docusign::ArrayOfEnvelopeStatus", XSD::QName.new(NsC_30, "EnvelopeStatuses")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfEnvelopeStatus,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfEnvelopeStatus"),
    :schema_element => [
      ["envelopeStatus", ["Docusign::EnvelopeStatus[]", XSD::QName.new(NsC_30, "EnvelopeStatus")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientEsignList,
    :schema_type => XSD::QName.new(NsC_30, "RecipientEsignList"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["recipientEsign", ["Docusign::ArrayOfRecipientEsign", XSD::QName.new(NsC_30, "RecipientEsign")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfRecipientEsign,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipientEsign"),
    :schema_element => [
      ["recipientEsign", ["Docusign::RecipientEsign[]", XSD::QName.new(NsC_30, "RecipientEsign")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientEsign,
    :schema_type => XSD::QName.new(NsC_30, "RecipientEsign"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["esign", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Esign")]],
      ["reservedRecipientEmail", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReservedRecipientEmail")], [0, 1]],
      ["reservedRecipientNames", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ReservedRecipientNames")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientList,
    :schema_type => XSD::QName.new(NsC_30, "RecipientList"),
    :schema_element => [
      ["reservedRecipientEmail", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReservedRecipientEmail")], [0, 1]],
      ["multipleUsers", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "MultipleUsers")], [0, 1]],
      ["recipientName", ["Docusign::ArrayOfString3", XSD::QName.new(NsC_30, "RecipientName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfString3,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString3"),
    :schema_element => [
      ["recipientName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "RecipientName")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::VoidEnvelopeStatus,
    :schema_type => XSD::QName.new(NsC_30, "VoidEnvelopeStatus"),
    :schema_element => [
      ["voidSuccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "VoidSuccess")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RequestRecipientTokenAuthenticationAssertion,
    :schema_type => XSD::QName.new(NsC_30, "RequestRecipientTokenAuthenticationAssertion"),
    :schema_element => [
      ["assertionID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AssertionID")], [0, 1]],
      ["authenticationInstant", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "AuthenticationInstant")]],
      ["authenticationMethod", ["Docusign::RequestRecipientTokenAuthenticationAssertionAuthenticationMethod", XSD::QName.new(NsC_30, "AuthenticationMethod")]],
      ["securityDomain", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SecurityDomain")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RequestRecipientTokenClientURLs,
    :schema_type => XSD::QName.new(NsC_30, "RequestRecipientTokenClientURLs"),
    :schema_element => [
      ["onSigningComplete", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnSigningComplete")], [0, 1]],
      ["onViewingComplete", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnViewingComplete")], [0, 1]],
      ["onCancel", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnCancel")], [0, 1]],
      ["onDecline", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnDecline")], [0, 1]],
      ["onSessionTimeout", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnSessionTimeout")], [0, 1]],
      ["onTTLExpired", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnTTLExpired")], [0, 1]],
      ["onException", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnException")], [0, 1]],
      ["onAccessCodeFailed", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnAccessCodeFailed")], [0, 1]],
      ["onIdCheckFailed", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnIdCheckFailed")], [0, 1]],
      ["onFaxPending", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnFaxPending")], [0, 1]],
      ["generateSignedDocumentAsynch", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "GenerateSignedDocumentAsynch")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::TransferEnvelopeStatus,
    :schema_type => XSD::QName.new(NsC_30, "TransferEnvelopeStatus"),
    :schema_element => [
      ["transferEnvelopeSuccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TransferEnvelopeSuccess")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountMembershipFeaturesList,
    :schema_type => XSD::QName.new(NsC_30, "AccountMembershipFeaturesList"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["enabledFeaturesSet", ["Docusign::ArrayOfString4", XSD::QName.new(NsC_30, "EnabledFeaturesSet")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfString4,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString4"),
    :schema_element => [
      ["enabledFeatures", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "EnabledFeatures")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountSettingsList,
    :schema_type => XSD::QName.new(NsC_30, "AccountSettingsList"),
    :schema_element => [
      ["accountSetting", ["Docusign::AccountSetting[]", XSD::QName.new(NsC_30, "AccountSetting")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountSetting,
    :schema_type => XSD::QName.new(NsC_30, "AccountSetting"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Value")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Type")], [0, 1]],
      ["testSetting", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TestSetting")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AuthoritativeCopyExportStatus,
    :schema_type => XSD::QName.new(NsC_30, "AuthoritativeCopyExportStatus"),
    :schema_element => [
      ["authoritativeCopyExportSuccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AuthoritativeCopyExportSuccess")], [0, 1]],
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]],
      ["exportKey", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ExportKey")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AuthoritativeCopyExportDocuments,
    :schema_type => XSD::QName.new(NsC_30, "AuthoritativeCopyExportDocuments"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]],
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TransactionId")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "Count")]],
      ["documentPDF", ["Docusign::DocumentPDF[]", XSD::QName.new(NsC_30, "DocumentPDF")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfTemplateReference,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfTemplateReference"),
    :schema_element => [
      ["templateReference", ["Docusign::TemplateReference[]", XSD::QName.new(NsC_30, "TemplateReference")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::TemplateReference,
    :schema_type => XSD::QName.new(NsC_30, "TemplateReference"),
    :schema_element => [
      ["templateLocation", ["Docusign::TemplateLocationCode", XSD::QName.new(NsC_30, "TemplateLocation")], [0, 1]],
      ["template", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Template")], [0, 1]],
      ["document", ["Docusign::Document", XSD::QName.new(NsC_30, "Document")], [0, 1]],
      ["roleAssignments", ["Docusign::ArrayOfTemplateReferenceRoleAssignment", XSD::QName.new(NsC_30, "RoleAssignments")], [0, 1]],
      ["fieldData", ["Docusign::TemplateReferenceFieldData", XSD::QName.new(NsC_30, "FieldData")], [0, 1]],
      ["additionalTabs", ["Docusign::ArrayOfTab", XSD::QName.new(NsC_30, "AdditionalTabs")], [0, 1]],
      ["sequence", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "Sequence")], [0, 1]],
      ["templateAttachments", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "TemplateAttachments")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfTemplateReferenceRoleAssignment,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfTemplateReferenceRoleAssignment"),
    :schema_element => [
      ["roleAssignment", ["Docusign::TemplateReferenceRoleAssignment[]", XSD::QName.new(NsC_30, "RoleAssignment")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::TemplateReferenceRoleAssignment,
    :schema_type => XSD::QName.new(NsC_30, "TemplateReferenceRoleAssignment"),
    :schema_element => [
      ["roleName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RoleName")], [0, 1]],
      ["recipientID", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "RecipientID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::TemplateReferenceFieldData,
    :schema_type => XSD::QName.new(NsC_30, "TemplateReferenceFieldData"),
    :schema_element => [
      ["dataValues", ["Docusign::ArrayOfTemplateReferenceFieldDataDataValue", XSD::QName.new(NsC_30, "DataValues")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfTemplateReferenceFieldDataDataValue,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfTemplateReferenceFieldDataDataValue"),
    :schema_element => [
      ["dataValue", ["Docusign::TemplateReferenceFieldDataDataValue[]", XSD::QName.new(NsC_30, "DataValue")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::TemplateReferenceFieldDataDataValue,
    :schema_type => XSD::QName.new(NsC_30, "TemplateReferenceFieldDataDataValue"),
    :schema_element => [
      ["tabLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabLabel")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Value")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfRecipient1,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipient1"),
    :schema_element => [
      ["recipient", ["Docusign::Recipient[]", XSD::QName.new(NsC_30, "Recipient")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeInformation,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeInformation"),
    :schema_element => [
      ["transactionID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TransactionID")], [0, 1]],
      ["asynchronous", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Asynchronous")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["emailBlurb", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EmailBlurb")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Subject")], [0, 1]],
      ["signingLocation", ["Docusign::SigningLocationCode", XSD::QName.new(NsC_30, "SigningLocation")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfCustomField", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["vaultingOptions", ["Docusign::VaultingOptions", XSD::QName.new(NsC_30, "VaultingOptions")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["envelopeIdStamping", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnvelopeIdStamping")], [0, 1]],
      ["authoritativeCopy", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AuthoritativeCopy")], [0, 1]],
      ["notification", ["Docusign::Notification", XSD::QName.new(NsC_30, "Notification")], [0, 1]],
      ["enforceSignerVisibility", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnforceSignerVisibility")], [0, 1]],
      ["enableWetSign", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnableWetSign")], [0, 1]],
      ["allowRecipientRecursion", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AllowRecipientRecursion")], [0, 1]],
      ["allowMarkup", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AllowMarkup")], [0, 1]],
      ["eventNotification", ["Docusign::EventNotification", XSD::QName.new(NsC_30, "EventNotification")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfCompositeTemplate,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfCompositeTemplate"),
    :schema_element => [
      ["compositeTemplate", ["Docusign::CompositeTemplate[]", XSD::QName.new(NsC_30, "CompositeTemplate")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::CompositeTemplate,
    :schema_type => XSD::QName.new(NsC_30, "CompositeTemplate"),
    :schema_element => [
      ["serverTemplates", ["Docusign::ArrayOfServerTemplate", XSD::QName.new(NsC_30, "ServerTemplates")], [0, 1]],
      ["inlineTemplates", ["Docusign::ArrayOfInlineTemplate", XSD::QName.new(NsC_30, "InlineTemplates")], [0, 1]],
      ["pDFMetaDataTemplate", ["Docusign::PDFMetaDataTemplate", XSD::QName.new(NsC_30, "PDFMetaDataTemplate")], [0, 1]],
      ["document", ["Docusign::Document", XSD::QName.new(NsC_30, "Document")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfServerTemplate,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfServerTemplate"),
    :schema_element => [
      ["serverTemplate", ["Docusign::ServerTemplate[]", XSD::QName.new(NsC_30, "ServerTemplate")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ServerTemplate,
    :schema_type => XSD::QName.new(NsC_30, "ServerTemplate"),
    :schema_element => [
      ["sequence", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "Sequence")], [0, 1]],
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfInlineTemplate,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfInlineTemplate"),
    :schema_element => [
      ["inlineTemplate", ["Docusign::InlineTemplate[]", XSD::QName.new(NsC_30, "InlineTemplate")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::InlineTemplate,
    :schema_type => XSD::QName.new(NsC_30, "InlineTemplate"),
    :schema_element => [
      ["sequence", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "Sequence")], [0, 1]],
      ["envelope", ["Docusign::Envelope", XSD::QName.new(NsC_30, "Envelope")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::PDFMetaDataTemplate,
    :schema_type => XSD::QName.new(NsC_30, "PDFMetaDataTemplate"),
    :schema_element => [
      ["sequence", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "Sequence")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::DocuSignEnvelopeInformation,
    :schema_type => XSD::QName.new(NsC_30, "DocuSignEnvelopeInformation"),
    :schema_element => [
      ["envelopeStatus", ["Docusign::EnvelopeStatus", XSD::QName.new(NsC_30, "EnvelopeStatus")], [0, 1]],
      ["documentPDFs", ["Docusign::ArrayOfDocumentPDF", XSD::QName.new(NsC_30, "DocumentPDFs")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfDocumentPDF,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfDocumentPDF"),
    :schema_element => [
      ["documentPDF", ["Docusign::DocumentPDF[]", XSD::QName.new(NsC_30, "DocumentPDF")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::PurgeDocumentStatus,
    :schema_type => XSD::QName.new(NsC_30, "PurgeDocumentStatus"),
    :schema_element => [
      ["purgeDocumentSuccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "PurgeDocumentSuccess")]],
      ["purgeDocumentError", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "PurgeDocumentError")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeTemplate,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeTemplate"),
    :schema_element => [
      ["envelopeTemplateDefinition", ["Docusign::EnvelopeTemplateDefinition", XSD::QName.new(NsC_30, "EnvelopeTemplateDefinition")], [0, 1]],
      ["envelope", ["Docusign::Envelope", XSD::QName.new(NsC_30, "Envelope")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeTemplateDefinition,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeTemplateDefinition"),
    :schema_element => [
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["shared", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Shared")]],
      ["templatePassword", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplatePassword")], [0, 1]],
      ["templateDescription", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateDescription")], [0, 1]],
      ["lastModified", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "LastModified")], [0, 1]],
      ["pageCount", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "PageCount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::SaveTemplateResult,
    :schema_type => XSD::QName.new(NsC_30, "SaveTemplateResult"),
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Success")]],
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeTemplates,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeTemplates"),
    :schema_element => [
      ["envelopeTemplateDefinition", ["Docusign::EnvelopeTemplateDefinition[]", XSD::QName.new(NsC_30, "EnvelopeTemplateDefinition")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfAddressBookItem,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfAddressBookItem"),
    :schema_element => [
      ["addressBookItem", ["Docusign::AddressBookItem[]", XSD::QName.new(NsC_30, "AddressBookItem")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AddressBookItem,
    :schema_type => XSD::QName.new(NsC_30, "AddressBookItem"),
    :schema_element => [
      ["addressBookID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AddressBookID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountName")], [0, 1]],
      ["shared", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Shared")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Created")], [0, 1]],
      ["owner", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Owner")], [0, 1]],
      ["phone1", ["Docusign::AddressBookPhoneNumber", XSD::QName.new(NsC_30, "Phone1")], [0, 1]],
      ["phone2", ["Docusign::AddressBookPhoneNumber", XSD::QName.new(NsC_30, "Phone2")], [0, 1]],
      ["phone3", ["Docusign::AddressBookPhoneNumber", XSD::QName.new(NsC_30, "Phone3")], [0, 1]],
      ["phone4", ["Docusign::AddressBookPhoneNumber", XSD::QName.new(NsC_30, "Phone4")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AddressBookPhoneNumber,
    :schema_type => XSD::QName.new(NsC_30, "AddressBookPhoneNumber"),
    :schema_element => [
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "PhoneNumber")], [0, 1]],
      ["designation", ["Docusign::PhoneNumberDesignation", XSD::QName.new(NsC_30, "Designation")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::UpdateAddressBookResult,
    :schema_type => XSD::QName.new(NsC_30, "UpdateAddressBookResult"),
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Success")]],
      ["addressBookItems", ["Docusign::ArrayOfAddressBookItem1", XSD::QName.new(NsC_30, "AddressBookItems")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfAddressBookItem1,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfAddressBookItem1"),
    :schema_element => [
      ["addressBookItem", ["Docusign::AddressBookItem[]", XSD::QName.new(NsC_30, "AddressBookItem")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfAddressBookRemoveItem,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfAddressBookRemoveItem"),
    :schema_element => [
      ["addressBookRemoveItem", ["Docusign::AddressBookRemoveItem[]", XSD::QName.new(NsC_30, "AddressBookRemoveItem")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AddressBookRemoveItem,
    :schema_type => XSD::QName.new(NsC_30, "AddressBookRemoveItem"),
    :schema_element => [
      ["addressBookID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AddressBookID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::SynchEnvelopeStatus,
    :schema_type => XSD::QName.new(NsC_30, "SynchEnvelopeStatus"),
    :schema_element => [
      ["envelopeStatus", ["Docusign::EnvelopeStatusCode", XSD::QName.new(NsC_30, "EnvelopeStatus")]],
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::FolderFilter,
    :schema_type => XSD::QName.new(NsC_30, "FolderFilter"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["folderOwner", ["Docusign::UserInfo", XSD::QName.new(NsC_30, "FolderOwner")], [0, 1]],
      ["folderTypeInfo", ["Docusign::FolderTypeInfo", XSD::QName.new(NsC_30, "FolderTypeInfo")], [0, 1]],
      ["startPosition", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "StartPosition")], [0, 1]],
      ["fromDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "FromDate")], [0, 1]],
      ["toDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "ToDate")], [0, 1]],
      ["searchText", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SearchText")], [0, 1]],
      ["status", ["Docusign::EnvelopeStatusCode", XSD::QName.new(NsC_30, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::FolderTypeInfo,
    :schema_type => XSD::QName.new(NsC_30, "FolderTypeInfo"),
    :schema_element => [
      ["folderType", ["Docusign::FolderType", XSD::QName.new(NsC_30, "FolderType")]],
      ["folderName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "FolderName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::FolderResults,
    :schema_type => XSD::QName.new(NsC_30, "FolderResults"),
    :schema_element => [
      ["resultSetSize", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "ResultSetSize")]],
      ["startPosition", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "StartPosition")]],
      ["endPosition", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "EndPosition")]],
      ["folderTypeInfo", ["Docusign::FolderTypeInfo", XSD::QName.new(NsC_30, "FolderTypeInfo")], [0, 1]],
      ["folderItems", ["Docusign::ArrayOfFolderItem", XSD::QName.new(NsC_30, "FolderItems")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfFolderItem,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfFolderItem"),
    :schema_element => [
      ["folderItem", ["Docusign::FolderItem[]", XSD::QName.new(NsC_30, "FolderItem")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::FolderItem,
    :schema_type => XSD::QName.new(NsC_30, "FolderItem"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]],
      ["status", ["Docusign::EnvelopeStatusCode", XSD::QName.new(NsC_30, "Status")]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Owner")], [0, 1]],
      ["senderName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SenderName")], [0, 1]],
      ["senderEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SenderEmail")], [0, 1]],
      ["senderCompany", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SenderCompany")], [0, 1]],
      ["recipientStatuses", ["Docusign::ArrayOfRecipientStatus", XSD::QName.new(NsC_30, "RecipientStatuses")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfCustomField", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Created")], [0, 1]],
      ["sent", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Sent")], [0, 1]],
      ["completed", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Completed")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Subject")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::FoldersFilter,
    :schema_type => XSD::QName.new(NsC_30, "FoldersFilter"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AvailableFolders,
    :schema_type => XSD::QName.new(NsC_30, "AvailableFolders"),
    :schema_element => [
      ["folders", ["Docusign::ArrayOfFolder", XSD::QName.new(NsC_30, "Folders")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfFolder,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfFolder"),
    :schema_element => [
      ["folder", ["Docusign::Folder[]", XSD::QName.new(NsC_30, "Folder")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::Folder,
    :schema_type => XSD::QName.new(NsC_30, "Folder"),
    :schema_element => [
      ["folderOwner", ["Docusign::UserInfo", XSD::QName.new(NsC_30, "FolderOwner")], [0, 1]],
      ["folderTypeInfo", ["Docusign::FolderTypeInfo", XSD::QName.new(NsC_30, "FolderTypeInfo")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientTypeCode,
    :schema_type => XSD::QName.new(NsC_30, "RecipientTypeCode")
  )

  EncodedRegistry.register(
    :class => Docusign::FontStyleCode,
    :schema_type => XSD::QName.new(NsC_30, "FontStyleCode")
  )

  EncodedRegistry.register(
    :class => Docusign::DisplayLevelCode,
    :schema_type => XSD::QName.new(NsC_30, "DisplayLevelCode")
  )

  EncodedRegistry.register(
    :class => Docusign::UnitTypeCode,
    :schema_type => XSD::QName.new(NsC_30, "UnitTypeCode")
  )

  EncodedRegistry.register(
    :class => Docusign::TabTypeCode,
    :schema_type => XSD::QName.new(NsC_30, "TabTypeCode")
  )

  EncodedRegistry.register(
    :class => Docusign::CustomTabType,
    :schema_type => XSD::QName.new(NsC_30, "CustomTabType")
  )

  EncodedRegistry.register(
    :class => Docusign::SigningLocationCode,
    :schema_type => XSD::QName.new(NsC_30, "SigningLocationCode")
  )

  EncodedRegistry.register(
    :class => Docusign::CustomFieldType,
    :schema_type => XSD::QName.new(NsC_30, "CustomFieldType")
  )

  EncodedRegistry.register(
    :class => Docusign::VaultingModeCode,
    :schema_type => XSD::QName.new(NsC_30, "VaultingModeCode")
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeEventStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeEventStatusCode")
  )

  EncodedRegistry.register(
    :class => Docusign::RecipientStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "RecipientStatusCode")
  )

  EncodedRegistry.register(
    :class => Docusign::EventStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "EventStatusCode")
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatusCode")
  )

  EncodedRegistry.register(
    :class => Docusign::DocumentType,
    :schema_type => XSD::QName.new(NsC_30, "DocumentType")
  )

  EncodedRegistry.register(
    :class => Docusign::EnvelopeACStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeACStatusCode")
  )

  EncodedRegistry.register(
    :class => Docusign::RequestRecipientTokenAuthenticationAssertionAuthenticationMethod,
    :schema_type => XSD::QName.new(NsC_30, "RequestRecipientTokenAuthenticationAssertionAuthenticationMethod")
  )

  EncodedRegistry.register(
    :class => Docusign::TemplateLocationCode,
    :schema_type => XSD::QName.new(NsC_30, "TemplateLocationCode")
  )

  EncodedRegistry.register(
    :class => Docusign::PhoneNumberDesignation,
    :schema_type => XSD::QName.new(NsC_30, "PhoneNumberDesignation")
  )

  EncodedRegistry.register(
    :class => Docusign::FolderType,
    :schema_type => XSD::QName.new(NsC_30, "FolderType")
  )

  LiteralRegistry.register(
    :class => Docusign::Envelope,
    :schema_type => XSD::QName.new(NsC_30, "Envelope"),
    :schema_element => [
      ["transactionID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TransactionID")], [0, 1]],
      ["asynchronous", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Asynchronous")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["documents", ["Docusign::ArrayOfDocument", XSD::QName.new(NsC_30, "Documents")], [0, 1]],
      ["recipients", ["Docusign::ArrayOfRecipient", XSD::QName.new(NsC_30, "Recipients")], [0, 1]],
      ["tabs", ["Docusign::ArrayOfTab", XSD::QName.new(NsC_30, "Tabs")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Subject")], [0, 1]],
      ["emailBlurb", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EmailBlurb")], [0, 1]],
      ["signingLocation", ["Docusign::SigningLocationCode", XSD::QName.new(NsC_30, "SigningLocation")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfCustomField", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["vaultingOptions", ["Docusign::VaultingOptions", XSD::QName.new(NsC_30, "VaultingOptions")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["envelopeIdStamping", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnvelopeIdStamping")], [0, 1]],
      ["authoritativeCopy", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AuthoritativeCopy")], [0, 1]],
      ["notification", ["Docusign::Notification", XSD::QName.new(NsC_30, "Notification")], [0, 1]],
      ["envelopeAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "EnvelopeAttachment")], [0, 1]],
      ["enforceSignerVisibility", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnforceSignerVisibility")], [0, 1]],
      ["enableWetSign", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnableWetSign")], [0, 1]],
      ["allowMarkup", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AllowMarkup")], [0, 1]],
      ["eventNotification", ["Docusign::EventNotification", XSD::QName.new(NsC_30, "EventNotification")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfDocument,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfDocument"),
    :schema_element => [
      ["document", ["Docusign::Document[]", XSD::QName.new(NsC_30, "Document")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Document,
    :schema_type => XSD::QName.new(NsC_30, "Document"),
    :schema_element => [
      ["iD", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "ID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["pDFBytes", ["SOAP::SOAPBase64", XSD::QName.new(NsC_30, "PDFBytes")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Password")], [0, 1]],
      ["transformPdfFields", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TransformPdfFields")], [0, 1]],
      ["fileExtension", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "FileExtension")], [0, 1]],
      ["matchBoxes", ["Docusign::ArrayOfMatchBox", XSD::QName.new(NsC_30, "MatchBoxes")], [0, 1]],
      ["attachmentDescription", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AttachmentDescription")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfMatchBox,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfMatchBox"),
    :schema_element => [
      ["matchBox", ["Docusign::MatchBox[]", XSD::QName.new(NsC_30, "MatchBox")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::MatchBox,
    :schema_type => XSD::QName.new(NsC_30, "MatchBox"),
    :schema_element => [
      ["pageNumber", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "PageNumber")], [0, 1]],
      ["xPosition", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "XPosition")]],
      ["yPosition", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "YPosition")]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "Width")]],
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "Height")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfRecipient,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipient"),
    :schema_element => [
      ["recipient", ["Docusign::Recipient[]", XSD::QName.new(NsC_30, "Recipient")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Recipient,
    :schema_type => XSD::QName.new(NsC_30, "Recipient"),
    :schema_element => [
      ["iD", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "ID")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["signerName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SignerName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["type", ["Docusign::RecipientTypeCode", XSD::QName.new(NsC_30, "Type")]],
      ["accessCode", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccessCode")]],
      ["addAccessCodeToEmail", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AddAccessCodeToEmail")], [0, 1]],
      ["requireIDLookup", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "RequireIDLookup")], [0, 1]],
      ["iDCheckConfigurationName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "IDCheckConfigurationName")], [0, 1]],
      ["phoneAuthentication", ["Docusign::RecipientPhoneAuthentication", XSD::QName.new(NsC_30, "PhoneAuthentication")], [0, 1]],
      ["signatureInfo", ["Docusign::RecipientSignatureInfo", XSD::QName.new(NsC_30, "SignatureInfo")], [0, 1]],
      ["captiveInfo", ["Docusign::RecipientCaptiveInfo", XSD::QName.new(NsC_30, "CaptiveInfo")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfString1", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["routingOrder", ["SOAP::SOAPUnsignedShort", XSD::QName.new(NsC_30, "RoutingOrder")], [0, 1]],
      ["iDCheckInformationInput", ["Docusign::IDCheckInformationInput", XSD::QName.new(NsC_30, "IDCheckInformationInput")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["recipientAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "RecipientAttachment")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Note")], [0, 1]],
      ["roleName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RoleName")], [0, 1]],
      ["templateLocked", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TemplateLocked")], [0, 1]],
      ["templateRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TemplateRequired")], [0, 1]],
      ["templateAccessCodeRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TemplateAccessCodeRequired")], [0, 1]],
      ["defaultRecipient", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "DefaultRecipient")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientPhoneAuthentication,
    :schema_type => XSD::QName.new(NsC_30, "RecipientPhoneAuthentication"),
    :schema_element => [
      ["recipMayProvideNumber", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "RecipMayProvideNumber")], [0, 1]],
      ["validateRecipProvidedNumber", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ValidateRecipProvidedNumber")], [0, 1]],
      ["recordVoicePrint", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "RecordVoicePrint")], [0, 1]],
      ["senderProvidedNumbers", ["Docusign::ArrayOfString", XSD::QName.new(NsC_30, "SenderProvidedNumbers")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfString,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString"),
    :schema_element => [
      ["senderProvidedNumber", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "SenderProvidedNumber")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientSignatureInfo,
    :schema_type => XSD::QName.new(NsC_30, "RecipientSignatureInfo"),
    :schema_element => [
      ["signatureName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SignatureName")], [0, 1]],
      ["signatureInitials", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SignatureInitials")], [0, 1]],
      ["fontStyle", ["Docusign::FontStyleCode", XSD::QName.new(NsC_30, "FontStyle")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientCaptiveInfo,
    :schema_type => XSD::QName.new(NsC_30, "RecipientCaptiveInfo"),
    :schema_element => [
      ["clientUserId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ClientUserId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfString1,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString1"),
    :schema_element => [
      ["customField", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "CustomField")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::IDCheckInformationInput,
    :schema_type => XSD::QName.new(NsC_30, "IDCheckInformationInput"),
    :schema_element => [
      ["addressInformationInput", ["Docusign::AddressInformationInput", XSD::QName.new(NsC_30, "AddressInformationInput")], [0, 1]],
      ["dOBInformationInput", ["Docusign::DOBInformationInput", XSD::QName.new(NsC_30, "DOBInformationInput")], [0, 1]],
      ["sSN4InformationInput", ["Docusign::SSN4InformationInput", XSD::QName.new(NsC_30, "SSN4InformationInput")], [0, 1]],
      ["sSN9InformationInput", ["Docusign::SSN9InformationInput", XSD::QName.new(NsC_30, "SSN9InformationInput")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AddressInformationInput,
    :schema_type => XSD::QName.new(NsC_30, "AddressInformationInput"),
    :schema_element => [
      ["addressInformation", ["Docusign::AddressInformation", XSD::QName.new(NsC_30, "AddressInformation")], [0, 1]],
      ["displayLevel", ["Docusign::DisplayLevelCode", XSD::QName.new(NsC_30, "DisplayLevel")], [0, 1]],
      ["receiveInResponse", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReceiveInResponse")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AddressInformation,
    :schema_type => XSD::QName.new(NsC_30, "AddressInformation"),
    :schema_element => [
      ["street1", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Street1")], [0, 1]],
      ["street2", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Street2")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "State")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Zip")], [0, 1]],
      ["zipPlus4", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ZipPlus4")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::DOBInformationInput,
    :schema_type => XSD::QName.new(NsC_30, "DOBInformationInput"),
    :schema_element => [
      ["dOBInformation", ["Docusign::DOBInformation", XSD::QName.new(NsC_30, "DOBInformation")], [0, 1]],
      ["displayLevel", ["Docusign::DisplayLevelCode", XSD::QName.new(NsC_30, "DisplayLevel")], [0, 1]],
      ["receiveInResponse", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReceiveInResponse")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::DOBInformation,
    :schema_type => XSD::QName.new(NsC_30, "DOBInformation"),
    :schema_element => [
      ["dOB", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "DOB")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SSN4InformationInput,
    :schema_type => XSD::QName.new(NsC_30, "SSN4InformationInput"),
    :schema_element => [
      ["sSN4Information", ["Docusign::SSN4Information", XSD::QName.new(NsC_30, "SSN4Information")], [0, 1]],
      ["displayLevel", ["Docusign::DisplayLevelCode", XSD::QName.new(NsC_30, "DisplayLevel")], [0, 1]],
      ["receiveInResponse", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReceiveInResponse")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SSN4Information,
    :schema_type => XSD::QName.new(NsC_30, "SSN4Information"),
    :schema_element => [
      ["sSN4", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SSN4")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SSN9InformationInput,
    :schema_type => XSD::QName.new(NsC_30, "SSN9InformationInput"),
    :schema_element => [
      ["sSN9Information", ["Docusign::SSN9Information", XSD::QName.new(NsC_30, "SSN9Information")], [0, 1]],
      ["displayLevel", ["Docusign::DisplayLevelCode", XSD::QName.new(NsC_30, "DisplayLevel")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SSN9Information,
    :schema_type => XSD::QName.new(NsC_30, "SSN9Information"),
    :schema_element => [
      ["sSN9", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SSN9")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfAttachment,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfAttachment"),
    :schema_element => [
      ["attachment", ["Docusign::Attachment[]", XSD::QName.new(NsC_30, "Attachment")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Attachment,
    :schema_type => XSD::QName.new(NsC_30, "Attachment"),
    :schema_element => [
      ["data", ["SOAP::SOAPBase64", XSD::QName.new(NsC_30, "Data")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Label")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfTab,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfTab"),
    :schema_element => [
      ["tab", ["Docusign::Tab[]", XSD::QName.new(NsC_30, "Tab")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Tab,
    :schema_type => XSD::QName.new(NsC_30, "Tab"),
    :schema_element => [
      ["documentID", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "DocumentID")], [0, 1]],
      ["recipientID", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "RecipientID")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "PageNumber")], [0, 1]],
      ["xPosition", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "XPosition")], [0, 1]],
      ["yPosition", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "YPosition")], [0, 1]],
      ["scaleValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_30, "ScaleValue")], [0, 1]],
      ["anchorTabItem", ["Docusign::AnchorTab", XSD::QName.new(NsC_30, "AnchorTabItem")], [0, 1]],
      ["type", ["Docusign::TabTypeCode", XSD::QName.new(NsC_30, "Type")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["tabLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabLabel")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Value")], [0, 1]],
      ["customTabType", ["Docusign::CustomTabType", XSD::QName.new(NsC_30, "CustomTabType")], [0, 1]],
      ["customTabWidth", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "CustomTabWidth")], [0, 1]],
      ["customTabHeight", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "CustomTabHeight")], [0, 1]],
      ["customTabRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CustomTabRequired")], [0, 1]],
      ["customTabLocked", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CustomTabLocked")], [0, 1]],
      ["customTabDisableAutoSize", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CustomTabDisableAutoSize")], [0, 1]],
      ["customTabListItems", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabListItems")], [0, 1]],
      ["customTabListValues", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabListValues")], [0, 1]],
      ["customTabListSelectedValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabListSelectedValue")], [0, 1]],
      ["customTabRadioGroupName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabRadioGroupName")], [0, 1]],
      ["customTabValidationPattern", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabValidationPattern")], [0, 1]],
      ["customTabValidationMessage", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabValidationMessage")], [0, 1]],
      ["templateLocked", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TemplateLocked")], [0, 1]],
      ["templateRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TemplateRequired")], [0, 1]],
      ["conditionalParentLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ConditionalParentLabel")], [0, 1]],
      ["conditionalParentValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ConditionalParentValue")], [0, 1]],
      ["sharedTab", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "SharedTab")], [0, 1]],
      ["requireInitialOnSharedTabChange", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "RequireInitialOnSharedTabChange")], [0, 1]],
      ["concealValueOnDocument", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ConcealValueOnDocument")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AnchorTab,
    :schema_type => XSD::QName.new(NsC_30, "AnchorTab"),
    :schema_element => [
      ["anchorTabString", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AnchorTabString")], [0, 1]],
      ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "XOffset")], [0, 1]],
      ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "YOffset")], [0, 1]],
      ["unit", ["Docusign::UnitTypeCode", XSD::QName.new(NsC_30, "Unit")], [0, 1]],
      ["ignoreIfNotPresent", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "IgnoreIfNotPresent")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfCustomField,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfCustomField"),
    :schema_element => [
      ["customField", ["Docusign::CustomField[]", XSD::QName.new(NsC_30, "CustomField")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CustomField,
    :schema_type => XSD::QName.new(NsC_30, "CustomField"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["show", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Show")], [0, 1]],
      ["required", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Required")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Value")], [0, 1]],
      ["customFieldType", ["Docusign::CustomFieldType", XSD::QName.new(NsC_30, "CustomFieldType")], [0, 1]],
      ["listItems", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ListItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::VaultingOptions,
    :schema_type => XSD::QName.new(NsC_30, "VaultingOptions"),
    :schema_element => [
      ["vaultingMode", ["Docusign::VaultingModeCode", XSD::QName.new(NsC_30, "VaultingMode")]],
      ["eODTransactionName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODTransactionName")], [0, 1]],
      ["eODDocumentName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODDocumentName")], [0, 1]],
      ["eODDocumentDescription", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODDocumentDescription")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Notification,
    :schema_type => XSD::QName.new(NsC_30, "Notification"),
    :schema_element => [
      ["useAccountDefaults", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "UseAccountDefaults")], [0, 1]],
      ["reminders", ["Docusign::Reminders", XSD::QName.new(NsC_30, "Reminders")], [0, 1]],
      ["expirations", ["Docusign::Expirations", XSD::QName.new(NsC_30, "Expirations")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Reminders,
    :schema_type => XSD::QName.new(NsC_30, "Reminders"),
    :schema_element => [
      ["reminderEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReminderEnabled")]],
      ["reminderDelay", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "ReminderDelay")], [0, 1]],
      ["reminderFrequency", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "ReminderFrequency")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Expirations,
    :schema_type => XSD::QName.new(NsC_30, "Expirations"),
    :schema_element => [
      ["expireEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ExpireEnabled")]],
      ["expireAfter", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "ExpireAfter")], [0, 1]],
      ["expireWarn", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "ExpireWarn")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EventNotification,
    :schema_type => XSD::QName.new(NsC_30, "EventNotification"),
    :schema_element => [
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "URL")], [0, 1]],
      ["loggingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "LoggingEnabled")], [0, 1]],
      ["envelopeEvents", ["Docusign::ArrayOfEnvelopeEvent", XSD::QName.new(NsC_30, "EnvelopeEvents")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfEnvelopeEvent,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfEnvelopeEvent"),
    :schema_element => [
      ["envelopeEvent", ["Docusign::EnvelopeEvent[]", XSD::QName.new(NsC_30, "EnvelopeEvent")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeEvent,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeEvent"),
    :schema_element => [
      ["envelopeEventStatusCode", ["Docusign::EnvelopeEventStatusCode", XSD::QName.new(NsC_30, "EnvelopeEventStatusCode")]],
      ["includeDocuments", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "IncludeDocuments")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeStatus,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatus"),
    :schema_element => [
      ["recipientStatuses", ["Docusign::ArrayOfRecipientStatus", XSD::QName.new(NsC_30, "RecipientStatuses")]],
      ["timeGenerated", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "TimeGenerated")]],
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Subject")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["status", ["Docusign::EnvelopeStatusCode", XSD::QName.new(NsC_30, "Status")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Created")]],
      ["deleted", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Deleted")], [0, 1]],
      ["sent", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Sent")], [0, 1]],
      ["delivered", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Delivered")], [0, 1]],
      ["signed", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Signed")], [0, 1]],
      ["completed", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Completed")], [0, 1]],
      ["declined", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Declined")], [0, 1]],
      ["timedOut", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "TimedOut")], [0, 1]],
      ["aCStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ACStatus")], [0, 1]],
      ["aCStatusDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "ACStatusDate")]],
      ["aCHolder", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ACHolder")], [0, 1]],
      ["aCHolderEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ACHolderEmail")], [0, 1]],
      ["aCHolderLocation", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ACHolderLocation")], [0, 1]],
      ["signingLocation", ["Docusign::SigningLocationCode", XSD::QName.new(NsC_30, "SigningLocation")]],
      ["senderIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SenderIPAddress")], [0, 1]],
      ["envelopePDFHash", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopePDFHash")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfCustomField", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["vaultingDetails", ["Docusign::VaultingDetails", XSD::QName.new(NsC_30, "VaultingDetails")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")]],
      ["envelopeIdStamping", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnvelopeIdStamping")]],
      ["authoritativeCopy", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AuthoritativeCopy")], [0, 1]],
      ["envelopeAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "EnvelopeAttachment")], [0, 1]],
      ["documentStatuses", ["Docusign::ArrayOfDocumentStatus", XSD::QName.new(NsC_30, "DocumentStatuses")], [0, 1]],
      ["formData", ["Docusign::FormData", XSD::QName.new(NsC_30, "FormData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfRecipientStatus,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipientStatus"),
    :schema_element => [
      ["recipientStatus", ["Docusign::RecipientStatus[]", XSD::QName.new(NsC_30, "RecipientStatus")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientStatus,
    :schema_type => XSD::QName.new(NsC_30, "RecipientStatus"),
    :schema_element => [
      ["type", ["Docusign::RecipientTypeCode", XSD::QName.new(NsC_30, "Type")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["routingOrder", ["SOAP::SOAPUnsignedShort", XSD::QName.new(NsC_30, "RoutingOrder")]],
      ["sent", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Sent")], [0, 1]],
      ["delivered", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Delivered")], [0, 1]],
      ["signed", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Signed")], [0, 1]],
      ["declined", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Declined")], [0, 1]],
      ["declineReason", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "DeclineReason")]],
      ["status", ["Docusign::RecipientStatusCode", XSD::QName.new(NsC_30, "Status")]],
      ["recipientIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RecipientIPAddress")], [0, 1]],
      ["clientUserId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ClientUserId")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["iDCheckInformation", ["Docusign::IDCheckInformation", XSD::QName.new(NsC_30, "IDCheckInformation")], [0, 1]],
      ["recipientAuthenticationStatus", ["Docusign::AuthenticationStatus", XSD::QName.new(NsC_30, "RecipientAuthenticationStatus")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfString1", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["tabStatuses", ["Docusign::ArrayOfTabStatus", XSD::QName.new(NsC_30, "TabStatuses")], [0, 1]],
      ["recipientAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "RecipientAttachment")], [0, 1]],
      ["accountStatus", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountStatus")], [0, 1]],
      ["esignAgreementInformation", ["Docusign::RecipientStatusEsignAgreementInformation", XSD::QName.new(NsC_30, "EsignAgreementInformation")], [0, 1]],
      ["formData", ["Docusign::FormData", XSD::QName.new(NsC_30, "FormData")], [0, 1]],
      ["recipientId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RecipientId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::IDCheckInformation,
    :schema_type => XSD::QName.new(NsC_30, "IDCheckInformation"),
    :schema_element => [
      ["addressInformation", ["Docusign::AddressInformation", XSD::QName.new(NsC_30, "AddressInformation")], [0, 1]],
      ["dOBInformation", ["Docusign::DOBInformation", XSD::QName.new(NsC_30, "DOBInformation")], [0, 1]],
      ["sSN4Information", ["Docusign::SSN4Information", XSD::QName.new(NsC_30, "SSN4Information")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AuthenticationStatus,
    :schema_type => XSD::QName.new(NsC_30, "AuthenticationStatus"),
    :schema_element => [
      ["accessCodeResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "AccessCodeResult")], [0, 1]],
      ["iDQuestionsResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "IDQuestionsResult")], [0, 1]],
      ["iDLookupResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "IDLookupResult")], [0, 1]],
      ["ageVerifyResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "AgeVerifyResult")], [0, 1]],
      ["sTANPinResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "STANPinResult")], [0, 1]],
      ["oFACResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "OFACResult")], [0, 1]],
      ["phoneAuthResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "PhoneAuthResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EventResult,
    :schema_type => XSD::QName.new(NsC_30, "EventResult"),
    :schema_element => [
      ["status", ["Docusign::EventStatusCode", XSD::QName.new(NsC_30, "Status")]],
      ["eventTimestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "EventTimestamp")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfTabStatus,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfTabStatus"),
    :schema_element => [
      ["tabStatus", ["Docusign::TabStatus[]", XSD::QName.new(NsC_30, "TabStatus")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::TabStatus,
    :schema_type => XSD::QName.new(NsC_30, "TabStatus"),
    :schema_element => [
      ["tabType", ["Docusign::TabTypeCode", XSD::QName.new(NsC_30, "TabType")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Status")], [0, 1]],
      ["xPosition", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "XPosition")]],
      ["yPosition", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "YPosition")]],
      ["signed", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Signed")], [0, 1]],
      ["tabLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabLabel")], [0, 1]],
      ["tabName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabName")], [0, 1]],
      ["tabValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabValue")], [0, 1]],
      ["documentID", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "DocumentID")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "PageNumber")], [0, 1]],
      ["originalValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OriginalValue")], [0, 1]],
      ["validationPattern", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ValidationPattern")], [0, 1]],
      ["roleName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RoleName")], [0, 1]],
      ["listValues", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ListValues")], [0, 1]],
      ["listSelectedValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ListSelectedValue")], [0, 1]],
      ["scaleValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsC_30, "ScaleValue")], [0, 1]],
      ["customTabType", ["Docusign::CustomTabType", XSD::QName.new(NsC_30, "CustomTabType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientStatusEsignAgreementInformation,
    :schema_type => XSD::QName.new(NsC_30, "RecipientStatusEsignAgreementInformation"),
    :schema_element => [
      ["accountEsignId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountEsignId")], [0, 1]],
      ["userEsignId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserEsignId")], [0, 1]],
      ["agreementDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "AgreementDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::FormData,
    :schema_type => XSD::QName.new(NsC_30, "FormData"),
    :schema_element => [
      ["xfdf", "Docusign::FormDataXfdf", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::FormDataXfdf,
    :schema_type => XSD::QName.new(NsC_30, "FormDataXfdf"),
    :schema_element => [
      ["fields", "Docusign::ArrayOfFormDataXfdfField", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfFormDataXfdfField,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfFormDataXfdfField"),
    :schema_element => [
      ["field", "Docusign::FormDataXfdfField[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::FormDataXfdfField,
    :schema_type => XSD::QName.new(NsC_30, "FormDataXfdfField"),
    :schema_element => [
      ["value", "SOAP::SOAPString", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "name") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Docusign::VaultingDetails,
    :schema_type => XSD::QName.new(NsC_30, "VaultingDetails"),
    :schema_element => [
      ["eODTransactionName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODTransactionName")], [0, 1]],
      ["eODTransactionID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODTransactionID")], [0, 1]],
      ["eODDocumentProfileID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EODDocumentProfileID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfDocumentStatus,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfDocumentStatus"),
    :schema_element => [
      ["documentStatus", ["Docusign::DocumentStatus[]", XSD::QName.new(NsC_30, "DocumentStatus")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::DocumentStatus,
    :schema_type => XSD::QName.new(NsC_30, "DocumentStatus"),
    :schema_element => [
      ["iD", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "ID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["templateName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateName")], [0, 1]],
      ["sequence", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "Sequence")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Correction,
    :schema_type => XSD::QName.new(NsC_30, "Correction"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["envelopeSettingsCorrection", ["Docusign::EnvelopeSettings", XSD::QName.new(NsC_30, "EnvelopeSettingsCorrection")], [0, 1]],
      ["recipientCorrections", ["Docusign::ArrayOfRecipientCorrection", XSD::QName.new(NsC_30, "RecipientCorrections")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeSettings,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeSettings"),
    :schema_element => [
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["envelopeIdStamping", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnvelopeIdStamping")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfRecipientCorrection,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipientCorrection"),
    :schema_element => [
      ["recipientCorrection", ["Docusign::RecipientCorrection[]", XSD::QName.new(NsC_30, "RecipientCorrection")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientCorrection,
    :schema_type => XSD::QName.new(NsC_30, "RecipientCorrection"),
    :schema_element => [
      ["previousUserName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "PreviousUserName")], [0, 1]],
      ["previousEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "PreviousEmail")], [0, 1]],
      ["previousRoutingOrder", ["SOAP::SOAPUnsignedShort", XSD::QName.new(NsC_30, "PreviousRoutingOrder")]],
      ["previousSignerName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "PreviousSignerName")], [0, 1]],
      ["correctedUserName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedUserName")], [0, 1]],
      ["correctedSignerName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedSignerName")], [0, 1]],
      ["correctedEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedEmail")], [0, 1]],
      ["correctedCaptiveInfo", ["Docusign::RecipientCorrectionCorrectedCaptiveInfo", XSD::QName.new(NsC_30, "CorrectedCaptiveInfo")], [0, 1]],
      ["correctedAccessCode", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedAccessCode")], [0, 1]],
      ["correctedAccessCodeRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CorrectedAccessCodeRequired")], [0, 1]],
      ["correctedRequireIDLookup", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CorrectedRequireIDLookup")], [0, 1]],
      ["correctedIDCheckConfigurationName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedIDCheckConfigurationName")], [0, 1]],
      ["correctedRoutingOrder", ["SOAP::SOAPUnsignedShort", XSD::QName.new(NsC_30, "CorrectedRoutingOrder")], [0, 1]],
      ["correctedAutoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CorrectedAutoNavigation")], [0, 1]],
      ["correctedIDCheckInformationInput", ["Docusign::IDCheckInformationInput", XSD::QName.new(NsC_30, "CorrectedIDCheckInformationInput")], [0, 1]],
      ["resend", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Resend")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientCorrectionCorrectedCaptiveInfo,
    :schema_type => XSD::QName.new(NsC_30, "RecipientCorrectionCorrectedCaptiveInfo"),
    :schema_element => [
      ["clientUserId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ClientUserId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CorrectionStatus,
    :schema_type => XSD::QName.new(NsC_30, "CorrectionStatus"),
    :schema_element => [
      ["envelopeSettingsCorrectionStatus", ["Docusign::EnvelopeSettings", XSD::QName.new(NsC_30, "EnvelopeSettingsCorrectionStatus")], [0, 1]],
      ["recipientCorrectionStatuses", ["Docusign::ArrayOfRecipientCorrectionStatus", XSD::QName.new(NsC_30, "RecipientCorrectionStatuses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfRecipientCorrectionStatus,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipientCorrectionStatus"),
    :schema_element => [
      ["recipientCorrectionStatus", ["Docusign::RecipientCorrectionStatus[]", XSD::QName.new(NsC_30, "RecipientCorrectionStatus")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientCorrectionStatus,
    :schema_type => XSD::QName.new(NsC_30, "RecipientCorrectionStatus"),
    :schema_element => [
      ["correctionSucceeded", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "CorrectionSucceeded")]],
      ["recipientCorrection", ["Docusign::RecipientCorrection", XSD::QName.new(NsC_30, "RecipientCorrection")], [0, 1]],
      ["recipientStatus", ["Docusign::RecipientStatus", XSD::QName.new(NsC_30, "RecipientStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopePDF,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopePDF"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["pDFBytes", ["SOAP::SOAPBase64", XSD::QName.new(NsC_30, "PDFBytes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::DocumentPDFs,
    :schema_type => XSD::QName.new(NsC_30, "DocumentPDFs"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]],
      ["documentPDF", ["Docusign::DocumentPDF[]", XSD::QName.new(NsC_30, "DocumentPDF")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::DocumentPDF,
    :schema_type => XSD::QName.new(NsC_30, "DocumentPDF"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["pDFBytes", ["SOAP::SOAPBase64", XSD::QName.new(NsC_30, "PDFBytes")], [0, 1]],
      ["documentID", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "DocumentID")], [0, 1]],
      ["documentType", ["Docusign::DocumentType", XSD::QName.new(NsC_30, "DocumentType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeStatusFilter,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatusFilter"),
    :schema_element => [
      ["userInfo", ["Docusign::UserInfo", XSD::QName.new(NsC_30, "UserInfo")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["beginDateTime", ["Docusign::EnvelopeStatusFilterBeginDateTime", XSD::QName.new(NsC_30, "BeginDateTime")]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "EndDateTime")], [0, 1]],
      ["statuses", ["Docusign::ArrayOfEnvelopeStatusCode", XSD::QName.new(NsC_30, "Statuses")], [0, 1]],
      ["envelopeIds", ["Docusign::ArrayOfString2", XSD::QName.new(NsC_30, "EnvelopeIds")], [0, 1]],
      ["startAtIndex", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(NsC_30, "StartAtIndex")]],
      ["aCStatus", ["Docusign::EnvelopeACStatusCode", XSD::QName.new(NsC_30, "ACStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::UserInfo,
    :schema_type => XSD::QName.new(NsC_30, "UserInfo"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeStatusFilterBeginDateTime,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatusFilterBeginDateTime"),
    :schema_attribute => {
      XSD::QName.new(nil, "statusQualifier") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfEnvelopeStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfEnvelopeStatusCode"),
    :schema_element => [
      ["status", ["Docusign::EnvelopeStatusCode[]", XSD::QName.new(NsC_30, "Status")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfString2,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString2"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "EnvelopeId")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::FilteredEnvelopeStatusChanges,
    :schema_type => XSD::QName.new(NsC_30, "FilteredEnvelopeStatusChanges"),
    :schema_element => [
      ["resultSetSize", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "ResultSetSize")]],
      ["envelopeStatusChanges", ["Docusign::ArrayOfEnvelopeStatusChange", XSD::QName.new(NsC_30, "EnvelopeStatusChanges")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfEnvelopeStatusChange,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfEnvelopeStatusChange"),
    :schema_element => [
      ["envelopeStatusChange", ["Docusign::EnvelopeStatusChange[]", XSD::QName.new(NsC_30, "EnvelopeStatusChange")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeStatusChange,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatusChange"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["status", ["Docusign::EnvelopeStatusCode", XSD::QName.new(NsC_30, "Status")]],
      ["statusChanged", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "StatusChanged")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeStatusChangeFilter,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatusChangeFilter"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["userInfo", ["Docusign::UserInfo", XSD::QName.new(NsC_30, "UserInfo")], [0, 1]],
      ["statusChangedSince", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "StatusChangedSince")]],
      ["statuses", ["Docusign::ArrayOfEnvelopeStatusCode", XSD::QName.new(NsC_30, "Statuses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::FilteredEnvelopeStatuses,
    :schema_type => XSD::QName.new(NsC_30, "FilteredEnvelopeStatuses"),
    :schema_element => [
      ["resultSetSize", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "ResultSetSize")]],
      ["envelopeStatusFilter", ["Docusign::EnvelopeStatusFilter", XSD::QName.new(NsC_30, "EnvelopeStatusFilter")], [0, 1]],
      ["envelopeStatuses", ["Docusign::ArrayOfEnvelopeStatus", XSD::QName.new(NsC_30, "EnvelopeStatuses")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfEnvelopeStatus,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfEnvelopeStatus"),
    :schema_element => [
      ["envelopeStatus", ["Docusign::EnvelopeStatus[]", XSD::QName.new(NsC_30, "EnvelopeStatus")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientEsignList,
    :schema_type => XSD::QName.new(NsC_30, "RecipientEsignList"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["recipientEsign", ["Docusign::ArrayOfRecipientEsign", XSD::QName.new(NsC_30, "RecipientEsign")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfRecipientEsign,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipientEsign"),
    :schema_element => [
      ["recipientEsign", ["Docusign::RecipientEsign[]", XSD::QName.new(NsC_30, "RecipientEsign")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientEsign,
    :schema_type => XSD::QName.new(NsC_30, "RecipientEsign"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["esign", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Esign")]],
      ["reservedRecipientEmail", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReservedRecipientEmail")], [0, 1]],
      ["reservedRecipientNames", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ReservedRecipientNames")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientList,
    :schema_type => XSD::QName.new(NsC_30, "RecipientList"),
    :schema_element => [
      ["reservedRecipientEmail", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReservedRecipientEmail")], [0, 1]],
      ["multipleUsers", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "MultipleUsers")], [0, 1]],
      ["recipientName", ["Docusign::ArrayOfString3", XSD::QName.new(NsC_30, "RecipientName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfString3,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString3"),
    :schema_element => [
      ["recipientName", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "RecipientName")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::VoidEnvelopeStatus,
    :schema_type => XSD::QName.new(NsC_30, "VoidEnvelopeStatus"),
    :schema_element => [
      ["voidSuccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "VoidSuccess")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestRecipientTokenAuthenticationAssertion,
    :schema_type => XSD::QName.new(NsC_30, "RequestRecipientTokenAuthenticationAssertion"),
    :schema_element => [
      ["assertionID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AssertionID")], [0, 1]],
      ["authenticationInstant", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "AuthenticationInstant")]],
      ["authenticationMethod", ["Docusign::RequestRecipientTokenAuthenticationAssertionAuthenticationMethod", XSD::QName.new(NsC_30, "AuthenticationMethod")]],
      ["securityDomain", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SecurityDomain")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestRecipientTokenClientURLs,
    :schema_type => XSD::QName.new(NsC_30, "RequestRecipientTokenClientURLs"),
    :schema_element => [
      ["onSigningComplete", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnSigningComplete")], [0, 1]],
      ["onViewingComplete", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnViewingComplete")], [0, 1]],
      ["onCancel", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnCancel")], [0, 1]],
      ["onDecline", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnDecline")], [0, 1]],
      ["onSessionTimeout", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnSessionTimeout")], [0, 1]],
      ["onTTLExpired", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnTTLExpired")], [0, 1]],
      ["onException", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnException")], [0, 1]],
      ["onAccessCodeFailed", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnAccessCodeFailed")], [0, 1]],
      ["onIdCheckFailed", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnIdCheckFailed")], [0, 1]],
      ["onFaxPending", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnFaxPending")], [0, 1]],
      ["generateSignedDocumentAsynch", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "GenerateSignedDocumentAsynch")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::TransferEnvelopeStatus,
    :schema_type => XSD::QName.new(NsC_30, "TransferEnvelopeStatus"),
    :schema_element => [
      ["transferEnvelopeSuccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "TransferEnvelopeSuccess")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountMembershipFeaturesList,
    :schema_type => XSD::QName.new(NsC_30, "AccountMembershipFeaturesList"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["enabledFeaturesSet", ["Docusign::ArrayOfString4", XSD::QName.new(NsC_30, "EnabledFeaturesSet")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfString4,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString4"),
    :schema_element => [
      ["enabledFeatures", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "EnabledFeatures")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountSettingsList,
    :schema_type => XSD::QName.new(NsC_30, "AccountSettingsList"),
    :schema_element => [
      ["accountSetting", ["Docusign::AccountSetting[]", XSD::QName.new(NsC_30, "AccountSetting")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountSetting,
    :schema_type => XSD::QName.new(NsC_30, "AccountSetting"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Value")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Type")], [0, 1]],
      ["testSetting", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TestSetting")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AuthoritativeCopyExportStatus,
    :schema_type => XSD::QName.new(NsC_30, "AuthoritativeCopyExportStatus"),
    :schema_element => [
      ["authoritativeCopyExportSuccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AuthoritativeCopyExportSuccess")], [0, 1]],
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]],
      ["exportKey", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ExportKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AuthoritativeCopyExportDocuments,
    :schema_type => XSD::QName.new(NsC_30, "AuthoritativeCopyExportDocuments"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]],
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TransactionId")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "Count")]],
      ["documentPDF", ["Docusign::DocumentPDF[]", XSD::QName.new(NsC_30, "DocumentPDF")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfTemplateReference,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfTemplateReference"),
    :schema_element => [
      ["templateReference", ["Docusign::TemplateReference[]", XSD::QName.new(NsC_30, "TemplateReference")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::TemplateReference,
    :schema_type => XSD::QName.new(NsC_30, "TemplateReference"),
    :schema_element => [
      ["templateLocation", ["Docusign::TemplateLocationCode", XSD::QName.new(NsC_30, "TemplateLocation")], [0, 1]],
      ["template", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Template")], [0, 1]],
      ["document", ["Docusign::Document", XSD::QName.new(NsC_30, "Document")], [0, 1]],
      ["roleAssignments", ["Docusign::ArrayOfTemplateReferenceRoleAssignment", XSD::QName.new(NsC_30, "RoleAssignments")], [0, 1]],
      ["fieldData", ["Docusign::TemplateReferenceFieldData", XSD::QName.new(NsC_30, "FieldData")], [0, 1]],
      ["additionalTabs", ["Docusign::ArrayOfTab", XSD::QName.new(NsC_30, "AdditionalTabs")], [0, 1]],
      ["sequence", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "Sequence")], [0, 1]],
      ["templateAttachments", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "TemplateAttachments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfTemplateReferenceRoleAssignment,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfTemplateReferenceRoleAssignment"),
    :schema_element => [
      ["roleAssignment", ["Docusign::TemplateReferenceRoleAssignment[]", XSD::QName.new(NsC_30, "RoleAssignment")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::TemplateReferenceRoleAssignment,
    :schema_type => XSD::QName.new(NsC_30, "TemplateReferenceRoleAssignment"),
    :schema_element => [
      ["roleName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RoleName")], [0, 1]],
      ["recipientID", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "RecipientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::TemplateReferenceFieldData,
    :schema_type => XSD::QName.new(NsC_30, "TemplateReferenceFieldData"),
    :schema_element => [
      ["dataValues", ["Docusign::ArrayOfTemplateReferenceFieldDataDataValue", XSD::QName.new(NsC_30, "DataValues")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfTemplateReferenceFieldDataDataValue,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfTemplateReferenceFieldDataDataValue"),
    :schema_element => [
      ["dataValue", ["Docusign::TemplateReferenceFieldDataDataValue[]", XSD::QName.new(NsC_30, "DataValue")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::TemplateReferenceFieldDataDataValue,
    :schema_type => XSD::QName.new(NsC_30, "TemplateReferenceFieldDataDataValue"),
    :schema_element => [
      ["tabLabel", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabLabel")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfRecipient1,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfRecipient1"),
    :schema_element => [
      ["recipient", ["Docusign::Recipient[]", XSD::QName.new(NsC_30, "Recipient")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeInformation,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeInformation"),
    :schema_element => [
      ["transactionID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TransactionID")], [0, 1]],
      ["asynchronous", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Asynchronous")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["emailBlurb", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EmailBlurb")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Subject")], [0, 1]],
      ["signingLocation", ["Docusign::SigningLocationCode", XSD::QName.new(NsC_30, "SigningLocation")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfCustomField", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["vaultingOptions", ["Docusign::VaultingOptions", XSD::QName.new(NsC_30, "VaultingOptions")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["envelopeIdStamping", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnvelopeIdStamping")], [0, 1]],
      ["authoritativeCopy", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AuthoritativeCopy")], [0, 1]],
      ["notification", ["Docusign::Notification", XSD::QName.new(NsC_30, "Notification")], [0, 1]],
      ["enforceSignerVisibility", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnforceSignerVisibility")], [0, 1]],
      ["enableWetSign", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "EnableWetSign")], [0, 1]],
      ["allowRecipientRecursion", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AllowRecipientRecursion")], [0, 1]],
      ["allowMarkup", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AllowMarkup")], [0, 1]],
      ["eventNotification", ["Docusign::EventNotification", XSD::QName.new(NsC_30, "EventNotification")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfCompositeTemplate,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfCompositeTemplate"),
    :schema_element => [
      ["compositeTemplate", ["Docusign::CompositeTemplate[]", XSD::QName.new(NsC_30, "CompositeTemplate")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CompositeTemplate,
    :schema_type => XSD::QName.new(NsC_30, "CompositeTemplate"),
    :schema_element => [
      ["serverTemplates", ["Docusign::ArrayOfServerTemplate", XSD::QName.new(NsC_30, "ServerTemplates")], [0, 1]],
      ["inlineTemplates", ["Docusign::ArrayOfInlineTemplate", XSD::QName.new(NsC_30, "InlineTemplates")], [0, 1]],
      ["pDFMetaDataTemplate", ["Docusign::PDFMetaDataTemplate", XSD::QName.new(NsC_30, "PDFMetaDataTemplate")], [0, 1]],
      ["document", ["Docusign::Document", XSD::QName.new(NsC_30, "Document")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfServerTemplate,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfServerTemplate"),
    :schema_element => [
      ["serverTemplate", ["Docusign::ServerTemplate[]", XSD::QName.new(NsC_30, "ServerTemplate")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ServerTemplate,
    :schema_type => XSD::QName.new(NsC_30, "ServerTemplate"),
    :schema_element => [
      ["sequence", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "Sequence")], [0, 1]],
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfInlineTemplate,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfInlineTemplate"),
    :schema_element => [
      ["inlineTemplate", ["Docusign::InlineTemplate[]", XSD::QName.new(NsC_30, "InlineTemplate")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::InlineTemplate,
    :schema_type => XSD::QName.new(NsC_30, "InlineTemplate"),
    :schema_element => [
      ["sequence", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "Sequence")], [0, 1]],
      ["envelope", ["Docusign::Envelope", XSD::QName.new(NsC_30, "Envelope")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::PDFMetaDataTemplate,
    :schema_type => XSD::QName.new(NsC_30, "PDFMetaDataTemplate"),
    :schema_element => [
      ["sequence", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsC_30, "Sequence")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::DocuSignEnvelopeInformation,
    :schema_type => XSD::QName.new(NsC_30, "DocuSignEnvelopeInformation"),
    :schema_element => [
      ["envelopeStatus", ["Docusign::EnvelopeStatus", XSD::QName.new(NsC_30, "EnvelopeStatus")], [0, 1]],
      ["documentPDFs", ["Docusign::ArrayOfDocumentPDF", XSD::QName.new(NsC_30, "DocumentPDFs")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfDocumentPDF,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfDocumentPDF"),
    :schema_element => [
      ["documentPDF", ["Docusign::DocumentPDF[]", XSD::QName.new(NsC_30, "DocumentPDF")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::PurgeDocumentStatus,
    :schema_type => XSD::QName.new(NsC_30, "PurgeDocumentStatus"),
    :schema_element => [
      ["purgeDocumentSuccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "PurgeDocumentSuccess")]],
      ["purgeDocumentError", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "PurgeDocumentError")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeTemplate,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeTemplate"),
    :schema_element => [
      ["envelopeTemplateDefinition", ["Docusign::EnvelopeTemplateDefinition", XSD::QName.new(NsC_30, "EnvelopeTemplateDefinition")], [0, 1]],
      ["envelope", ["Docusign::Envelope", XSD::QName.new(NsC_30, "Envelope")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeTemplateDefinition,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeTemplateDefinition"),
    :schema_element => [
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]],
      ["shared", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Shared")]],
      ["templatePassword", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplatePassword")], [0, 1]],
      ["templateDescription", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateDescription")], [0, 1]],
      ["lastModified", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "LastModified")], [0, 1]],
      ["pageCount", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "PageCount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SaveTemplateResult,
    :schema_type => XSD::QName.new(NsC_30, "SaveTemplateResult"),
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Success")]],
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeTemplates,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeTemplates"),
    :schema_element => [
      ["envelopeTemplateDefinition", ["Docusign::EnvelopeTemplateDefinition[]", XSD::QName.new(NsC_30, "EnvelopeTemplateDefinition")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfAddressBookItem,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfAddressBookItem"),
    :schema_element => [
      ["addressBookItem", ["Docusign::AddressBookItem[]", XSD::QName.new(NsC_30, "AddressBookItem")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AddressBookItem,
    :schema_type => XSD::QName.new(NsC_30, "AddressBookItem"),
    :schema_element => [
      ["addressBookID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AddressBookID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountName")], [0, 1]],
      ["shared", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Shared")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Created")], [0, 1]],
      ["owner", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Owner")], [0, 1]],
      ["phone1", ["Docusign::AddressBookPhoneNumber", XSD::QName.new(NsC_30, "Phone1")], [0, 1]],
      ["phone2", ["Docusign::AddressBookPhoneNumber", XSD::QName.new(NsC_30, "Phone2")], [0, 1]],
      ["phone3", ["Docusign::AddressBookPhoneNumber", XSD::QName.new(NsC_30, "Phone3")], [0, 1]],
      ["phone4", ["Docusign::AddressBookPhoneNumber", XSD::QName.new(NsC_30, "Phone4")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AddressBookPhoneNumber,
    :schema_type => XSD::QName.new(NsC_30, "AddressBookPhoneNumber"),
    :schema_element => [
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "PhoneNumber")], [0, 1]],
      ["designation", ["Docusign::PhoneNumberDesignation", XSD::QName.new(NsC_30, "Designation")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::UpdateAddressBookResult,
    :schema_type => XSD::QName.new(NsC_30, "UpdateAddressBookResult"),
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Success")]],
      ["addressBookItems", ["Docusign::ArrayOfAddressBookItem1", XSD::QName.new(NsC_30, "AddressBookItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfAddressBookItem1,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfAddressBookItem1"),
    :schema_element => [
      ["addressBookItem", ["Docusign::AddressBookItem[]", XSD::QName.new(NsC_30, "AddressBookItem")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfAddressBookRemoveItem,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfAddressBookRemoveItem"),
    :schema_element => [
      ["addressBookRemoveItem", ["Docusign::AddressBookRemoveItem[]", XSD::QName.new(NsC_30, "AddressBookRemoveItem")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AddressBookRemoveItem,
    :schema_type => XSD::QName.new(NsC_30, "AddressBookRemoveItem"),
    :schema_element => [
      ["addressBookID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AddressBookID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SynchEnvelopeStatus,
    :schema_type => XSD::QName.new(NsC_30, "SynchEnvelopeStatus"),
    :schema_element => [
      ["envelopeStatus", ["Docusign::EnvelopeStatusCode", XSD::QName.new(NsC_30, "EnvelopeStatus")]],
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::FolderFilter,
    :schema_type => XSD::QName.new(NsC_30, "FolderFilter"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]],
      ["folderOwner", ["Docusign::UserInfo", XSD::QName.new(NsC_30, "FolderOwner")], [0, 1]],
      ["folderTypeInfo", ["Docusign::FolderTypeInfo", XSD::QName.new(NsC_30, "FolderTypeInfo")], [0, 1]],
      ["startPosition", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "StartPosition")], [0, 1]],
      ["fromDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "FromDate")], [0, 1]],
      ["toDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "ToDate")], [0, 1]],
      ["searchText", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SearchText")], [0, 1]],
      ["status", ["Docusign::EnvelopeStatusCode", XSD::QName.new(NsC_30, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::FolderTypeInfo,
    :schema_type => XSD::QName.new(NsC_30, "FolderTypeInfo"),
    :schema_element => [
      ["folderType", ["Docusign::FolderType", XSD::QName.new(NsC_30, "FolderType")]],
      ["folderName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "FolderName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::FolderResults,
    :schema_type => XSD::QName.new(NsC_30, "FolderResults"),
    :schema_element => [
      ["resultSetSize", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "ResultSetSize")]],
      ["startPosition", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "StartPosition")]],
      ["endPosition", ["SOAP::SOAPInt", XSD::QName.new(NsC_30, "EndPosition")]],
      ["folderTypeInfo", ["Docusign::FolderTypeInfo", XSD::QName.new(NsC_30, "FolderTypeInfo")], [0, 1]],
      ["folderItems", ["Docusign::ArrayOfFolderItem", XSD::QName.new(NsC_30, "FolderItems")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfFolderItem,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfFolderItem"),
    :schema_element => [
      ["folderItem", ["Docusign::FolderItem[]", XSD::QName.new(NsC_30, "FolderItem")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::FolderItem,
    :schema_type => XSD::QName.new(NsC_30, "FolderItem"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]],
      ["status", ["Docusign::EnvelopeStatusCode", XSD::QName.new(NsC_30, "Status")]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Owner")], [0, 1]],
      ["senderName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SenderName")], [0, 1]],
      ["senderEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SenderEmail")], [0, 1]],
      ["senderCompany", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SenderCompany")], [0, 1]],
      ["recipientStatuses", ["Docusign::ArrayOfRecipientStatus", XSD::QName.new(NsC_30, "RecipientStatuses")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfCustomField", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Created")], [0, 1]],
      ["sent", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Sent")], [0, 1]],
      ["completed", ["SOAP::SOAPDateTime", XSD::QName.new(NsC_30, "Completed")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Subject")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::FoldersFilter,
    :schema_type => XSD::QName.new(NsC_30, "FoldersFilter"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AvailableFolders,
    :schema_type => XSD::QName.new(NsC_30, "AvailableFolders"),
    :schema_element => [
      ["folders", ["Docusign::ArrayOfFolder", XSD::QName.new(NsC_30, "Folders")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfFolder,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfFolder"),
    :schema_element => [
      ["folder", ["Docusign::Folder[]", XSD::QName.new(NsC_30, "Folder")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Folder,
    :schema_type => XSD::QName.new(NsC_30, "Folder"),
    :schema_element => [
      ["folderOwner", ["Docusign::UserInfo", XSD::QName.new(NsC_30, "FolderOwner")], [0, 1]],
      ["folderTypeInfo", ["Docusign::FolderTypeInfo", XSD::QName.new(NsC_30, "FolderTypeInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientTypeCode,
    :schema_type => XSD::QName.new(NsC_30, "RecipientTypeCode")
  )

  LiteralRegistry.register(
    :class => Docusign::FontStyleCode,
    :schema_type => XSD::QName.new(NsC_30, "FontStyleCode")
  )

  LiteralRegistry.register(
    :class => Docusign::DisplayLevelCode,
    :schema_type => XSD::QName.new(NsC_30, "DisplayLevelCode")
  )

  LiteralRegistry.register(
    :class => Docusign::UnitTypeCode,
    :schema_type => XSD::QName.new(NsC_30, "UnitTypeCode")
  )

  LiteralRegistry.register(
    :class => Docusign::TabTypeCode,
    :schema_type => XSD::QName.new(NsC_30, "TabTypeCode")
  )

  LiteralRegistry.register(
    :class => Docusign::CustomTabType,
    :schema_type => XSD::QName.new(NsC_30, "CustomTabType")
  )

  LiteralRegistry.register(
    :class => Docusign::SigningLocationCode,
    :schema_type => XSD::QName.new(NsC_30, "SigningLocationCode")
  )

  LiteralRegistry.register(
    :class => Docusign::CustomFieldType,
    :schema_type => XSD::QName.new(NsC_30, "CustomFieldType")
  )

  LiteralRegistry.register(
    :class => Docusign::VaultingModeCode,
    :schema_type => XSD::QName.new(NsC_30, "VaultingModeCode")
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeEventStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeEventStatusCode")
  )

  LiteralRegistry.register(
    :class => Docusign::RecipientStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "RecipientStatusCode")
  )

  LiteralRegistry.register(
    :class => Docusign::EventStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "EventStatusCode")
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeStatusCode")
  )

  LiteralRegistry.register(
    :class => Docusign::DocumentType,
    :schema_type => XSD::QName.new(NsC_30, "DocumentType")
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeACStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeACStatusCode")
  )

  LiteralRegistry.register(
    :class => Docusign::RequestRecipientTokenAuthenticationAssertionAuthenticationMethod,
    :schema_type => XSD::QName.new(NsC_30, "RequestRecipientTokenAuthenticationAssertionAuthenticationMethod")
  )

  LiteralRegistry.register(
    :class => Docusign::TemplateLocationCode,
    :schema_type => XSD::QName.new(NsC_30, "TemplateLocationCode")
  )

  LiteralRegistry.register(
    :class => Docusign::PhoneNumberDesignation,
    :schema_type => XSD::QName.new(NsC_30, "PhoneNumberDesignation")
  )

  LiteralRegistry.register(
    :class => Docusign::FolderType,
    :schema_type => XSD::QName.new(NsC_30, "FolderType")
  )

  LiteralRegistry.register(
    :class => Docusign::CreateEnvelope,
    :schema_name => XSD::QName.new(NsC_30, "CreateEnvelope"),
    :schema_element => [
      ["envelope", ["Docusign::Envelope", XSD::QName.new(NsC_30, "Envelope")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CreateEnvelopeResponse,
    :schema_name => XSD::QName.new(NsC_30, "CreateEnvelopeResponse"),
    :schema_element => [
      ["createEnvelopeResult", ["Docusign::EnvelopeStatus", XSD::QName.new(NsC_30, "CreateEnvelopeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CreateAndSendEnvelope,
    :schema_name => XSD::QName.new(NsC_30, "CreateAndSendEnvelope"),
    :schema_element => [
      ["envelope", ["Docusign::Envelope", XSD::QName.new(NsC_30, "Envelope")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CreateAndSendEnvelopeResponse,
    :schema_name => XSD::QName.new(NsC_30, "CreateAndSendEnvelopeResponse"),
    :schema_element => [
      ["createAndSendEnvelopeResult", ["Docusign::EnvelopeStatus", XSD::QName.new(NsC_30, "CreateAndSendEnvelopeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SendEnvelope,
    :schema_name => XSD::QName.new(NsC_30, "SendEnvelope"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SendEnvelopeResponse,
    :schema_name => XSD::QName.new(NsC_30, "SendEnvelopeResponse"),
    :schema_element => [
      ["sendEnvelopeResult", ["Docusign::EnvelopeStatus", XSD::QName.new(NsC_30, "SendEnvelopeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CorrectAndResendEnvelope,
    :schema_name => XSD::QName.new(NsC_30, "CorrectAndResendEnvelope"),
    :schema_element => [
      ["correction", ["Docusign::Correction", XSD::QName.new(NsC_30, "Correction")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CorrectAndResendEnvelopeResponse,
    :schema_name => XSD::QName.new(NsC_30, "CorrectAndResendEnvelopeResponse"),
    :schema_element => [
      ["correctAndResendEnvelopeResult", ["Docusign::CorrectionStatus", XSD::QName.new(NsC_30, "CorrectAndResendEnvelopeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestPDFNoWaterMark,
    :schema_name => XSD::QName.new(NsC_30, "RequestPDFNoWaterMark"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestPDFNoWaterMarkResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestPDFNoWaterMarkResponse"),
    :schema_element => [
      ["requestPDFNoWaterMarkResult", ["Docusign::EnvelopePDF", XSD::QName.new(NsC_30, "RequestPDFNoWaterMarkResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestPDF,
    :schema_name => XSD::QName.new(NsC_30, "RequestPDF"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestPDFResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestPDFResponse"),
    :schema_element => [
      ["requestPDFResult", ["Docusign::EnvelopePDF", XSD::QName.new(NsC_30, "RequestPDFResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestPDFWithCert,
    :schema_name => XSD::QName.new(NsC_30, "RequestPDFWithCert"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["addWaterMark", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AddWaterMark")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestPDFWithCertResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestPDFWithCertResponse"),
    :schema_element => [
      ["requestPDFWithCertResult", ["Docusign::EnvelopePDF", XSD::QName.new(NsC_30, "RequestPDFWithCertResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestDocumentPDFs,
    :schema_name => XSD::QName.new(NsC_30, "RequestDocumentPDFs"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestDocumentPDFsResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestDocumentPDFsResponse"),
    :schema_element => [
      ["requestDocumentPDFsResult", ["Docusign::DocumentPDFs", XSD::QName.new(NsC_30, "RequestDocumentPDFsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestDocumentPDFsEx,
    :schema_name => XSD::QName.new(NsC_30, "RequestDocumentPDFsEx"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestDocumentPDFsExResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestDocumentPDFsExResponse"),
    :schema_element => [
      ["requestDocumentPDFsExResult", ["Docusign::DocumentPDFs", XSD::QName.new(NsC_30, "RequestDocumentPDFsExResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestDocumentPDFsRecipientsView,
    :schema_name => XSD::QName.new(NsC_30, "RequestDocumentPDFsRecipientsView"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["recipientName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RecipientName")], [0, 1]],
      ["recipientEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RecipientEmail")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestDocumentPDFsRecipientsViewResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestDocumentPDFsRecipientsViewResponse"),
    :schema_element => [
      ["requestDocumentPDFsRecipientsViewResult", ["Docusign::DocumentPDFs", XSD::QName.new(NsC_30, "RequestDocumentPDFsRecipientsViewResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatusEx,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatusEx"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatusExResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatusExResponse"),
    :schema_element => [
      ["requestStatusExResult", ["Docusign::EnvelopeStatus", XSD::QName.new(NsC_30, "RequestStatusExResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatus,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatus"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatusResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatusResponse"),
    :schema_element => [
      ["requestStatusResult", ["Docusign::EnvelopeStatus", XSD::QName.new(NsC_30, "RequestStatusResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatusCodes,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatusCodes"),
    :schema_element => [
      ["envelopeStatusFilter", ["Docusign::EnvelopeStatusFilter", XSD::QName.new(NsC_30, "EnvelopeStatusFilter")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatusCodesResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatusCodesResponse"),
    :schema_element => [
      ["requestStatusCodesResult", ["Docusign::FilteredEnvelopeStatusChanges", XSD::QName.new(NsC_30, "RequestStatusCodesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatusChanges,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatusChanges"),
    :schema_element => [
      ["envelopeStatusChangeFilter", ["Docusign::EnvelopeStatusChangeFilter", XSD::QName.new(NsC_30, "EnvelopeStatusChangeFilter")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatusChangesResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatusChangesResponse"),
    :schema_element => [
      ["requestStatusChangesResult", ["Docusign::FilteredEnvelopeStatusChanges", XSD::QName.new(NsC_30, "RequestStatusChangesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatusesEx,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatusesEx"),
    :schema_element => [
      ["envelopeStatusFilter", ["Docusign::EnvelopeStatusFilter", XSD::QName.new(NsC_30, "EnvelopeStatusFilter")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatusesExResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatusesExResponse"),
    :schema_element => [
      ["requestStatusesExResult", ["Docusign::FilteredEnvelopeStatuses", XSD::QName.new(NsC_30, "RequestStatusesExResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatuses,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatuses"),
    :schema_element => [
      ["envelopeStatusFilter", ["Docusign::EnvelopeStatusFilter", XSD::QName.new(NsC_30, "EnvelopeStatusFilter")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestStatusesResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestStatusesResponse"),
    :schema_element => [
      ["requestStatusesResult", ["Docusign::FilteredEnvelopeStatuses", XSD::QName.new(NsC_30, "RequestStatusesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetRecipientEsignList,
    :schema_name => XSD::QName.new(NsC_30, "GetRecipientEsignList"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserName")], [0, 1]],
      ["senderEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SenderEmail")], [0, 1]],
      ["senderAccountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SenderAccountId")], [0, 1]],
      ["recipientEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RecipientEmail")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetRecipientEsignListResponse,
    :schema_name => XSD::QName.new(NsC_30, "GetRecipientEsignListResponse"),
    :schema_element => [
      ["getRecipientEsignListResult", ["Docusign::RecipientEsignList", XSD::QName.new(NsC_30, "GetRecipientEsignListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetRecipientList,
    :schema_name => XSD::QName.new(NsC_30, "GetRecipientList"),
    :schema_element => [
      ["senderAccountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "SenderAccountId")], [0, 1]],
      ["recipientEmail", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RecipientEmail")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetRecipientListResponse,
    :schema_name => XSD::QName.new(NsC_30, "GetRecipientListResponse"),
    :schema_element => [
      ["getRecipientListResult", ["Docusign::RecipientList", XSD::QName.new(NsC_30, "GetRecipientListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::VoidEnvelope,
    :schema_name => XSD::QName.new(NsC_30, "VoidEnvelope"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["reason", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Reason")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::VoidEnvelopeResponse,
    :schema_name => XSD::QName.new(NsC_30, "VoidEnvelopeResponse"),
    :schema_element => [
      ["voidEnvelopeResult", ["Docusign::VoidEnvelopeStatus", XSD::QName.new(NsC_30, "VoidEnvelopeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestRecipientToken,
    :schema_name => XSD::QName.new(NsC_30, "RequestRecipientToken"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["clientUserID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ClientUserID")], [0, 1]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Username")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["authenticationAssertion", ["Docusign::RequestRecipientTokenAuthenticationAssertion", XSD::QName.new(NsC_30, "AuthenticationAssertion")], [0, 1]],
      ["clientURLs", ["Docusign::RequestRecipientTokenClientURLs", XSD::QName.new(NsC_30, "ClientURLs")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestRecipientTokenResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestRecipientTokenResponse"),
    :schema_element => [
      ["requestRecipientTokenResult", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RequestRecipientTokenResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::TransferEnvelope,
    :schema_name => XSD::QName.new(NsC_30, "TransferEnvelope"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["accountID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountID")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "UserID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::TransferEnvelopeResponse,
    :schema_name => XSD::QName.new(NsC_30, "TransferEnvelopeResponse"),
    :schema_element => [
      ["transferEnvelopeResult", ["Docusign::TransferEnvelopeStatus", XSD::QName.new(NsC_30, "TransferEnvelopeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetAccountMembershipFeaturesList,
    :schema_name => XSD::QName.new(NsC_30, "GetAccountMembershipFeaturesList"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetAccountMembershipFeaturesListResponse,
    :schema_name => XSD::QName.new(NsC_30, "GetAccountMembershipFeaturesListResponse"),
    :schema_element => [
      ["getAccountMembershipFeaturesListResult", ["Docusign::AccountMembershipFeaturesList", XSD::QName.new(NsC_30, "GetAccountMembershipFeaturesListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetAccountSettingsList,
    :schema_name => XSD::QName.new(NsC_30, "GetAccountSettingsList"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetAccountSettingsListResponse,
    :schema_name => XSD::QName.new(NsC_30, "GetAccountSettingsListResponse"),
    :schema_element => [
      ["getAccountSettingsListResult", ["Docusign::AccountSettingsList", XSD::QName.new(NsC_30, "GetAccountSettingsListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AcknowledgeAuthoritativeCopyExport,
    :schema_name => XSD::QName.new(NsC_30, "AcknowledgeAuthoritativeCopyExport"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]],
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TransactionId")], [0, 1]],
      ["checkSumHash", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AcknowledgeAuthoritativeCopyExportResponse,
    :schema_name => XSD::QName.new(NsC_30, "AcknowledgeAuthoritativeCopyExportResponse"),
    :schema_element => [
      ["acknowledgeAuthoritativeCopyExportResult", ["Docusign::AuthoritativeCopyExportStatus", XSD::QName.new(NsC_30, "AcknowledgeAuthoritativeCopyExportResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ExportAuthoritativeCopy,
    :schema_name => XSD::QName.new(NsC_30, "ExportAuthoritativeCopy"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ExportAuthoritativeCopyResponse,
    :schema_name => XSD::QName.new(NsC_30, "ExportAuthoritativeCopyResponse"),
    :schema_element => [
      ["exportAuthoritativeCopyResult", ["Docusign::AuthoritativeCopyExportDocuments", XSD::QName.new(NsC_30, "ExportAuthoritativeCopyResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeAuditEvents,
    :schema_name => XSD::QName.new(NsC_30, "EnvelopeAuditEvents"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeAuditEventsResponse,
    :schema_name => XSD::QName.new(NsC_30, "EnvelopeAuditEventsResponse"),
    :schema_element => [
      ["envelopeAuditEventsResult", ["Docusign::EnvelopeAuditEventsResponse::EnvelopeAuditEventsResult", XSD::QName.new(NsC_30, "EnvelopeAuditEventsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::EnvelopeAuditEventsResponse::EnvelopeAuditEventsResult,
    :schema_name => XSD::QName.new(NsC_30, "EnvelopeAuditEventsResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Ping,
    :schema_name => XSD::QName.new(NsC_30, "Ping"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Docusign::PingResponse,
    :schema_name => XSD::QName.new(NsC_30, "PingResponse"),
    :schema_element => [
      ["pingResult", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "PingResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CreateEnvelopeFromTemplates,
    :schema_name => XSD::QName.new(NsC_30, "CreateEnvelopeFromTemplates"),
    :schema_element => [
      ["templateReferences", ["Docusign::ArrayOfTemplateReference", XSD::QName.new(NsC_30, "TemplateReferences")], [0, 1]],
      ["recipients", ["Docusign::ArrayOfRecipient1", XSD::QName.new(NsC_30, "Recipients")], [0, 1]],
      ["envelopeInformation", ["Docusign::EnvelopeInformation", XSD::QName.new(NsC_30, "EnvelopeInformation")], [0, 1]],
      ["activateEnvelope", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ActivateEnvelope")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CreateEnvelopeFromTemplatesResponse,
    :schema_name => XSD::QName.new(NsC_30, "CreateEnvelopeFromTemplatesResponse"),
    :schema_element => [
      ["createEnvelopeFromTemplatesResult", ["Docusign::EnvelopeStatus", XSD::QName.new(NsC_30, "CreateEnvelopeFromTemplatesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CreateEnvelopeFromTemplatesAndForms,
    :schema_name => XSD::QName.new(NsC_30, "CreateEnvelopeFromTemplatesAndForms"),
    :schema_element => [
      ["envelopeInformation", ["Docusign::EnvelopeInformation", XSD::QName.new(NsC_30, "EnvelopeInformation")], [0, 1]],
      ["compositeTemplates", ["Docusign::ArrayOfCompositeTemplate", XSD::QName.new(NsC_30, "CompositeTemplates")], [0, 1]],
      ["activateEnvelope", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ActivateEnvelope")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::CreateEnvelopeFromTemplatesAndFormsResponse,
    :schema_name => XSD::QName.new(NsC_30, "CreateEnvelopeFromTemplatesAndFormsResponse"),
    :schema_element => [
      ["createEnvelopeFromTemplatesAndFormsResult", ["Docusign::EnvelopeStatus", XSD::QName.new(NsC_30, "CreateEnvelopeFromTemplatesAndFormsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetStatusInDocuSignConnectFormat,
    :schema_name => XSD::QName.new(NsC_30, "GetStatusInDocuSignConnectFormat"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetStatusInDocuSignConnectFormatResponse,
    :schema_name => XSD::QName.new(NsC_30, "GetStatusInDocuSignConnectFormatResponse"),
    :schema_element => [
      ["getStatusInDocuSignConnectFormatResult", ["Docusign::DocuSignEnvelopeInformation", XSD::QName.new(NsC_30, "GetStatusInDocuSignConnectFormatResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::PurgeDocuments,
    :schema_name => XSD::QName.new(NsC_30, "PurgeDocuments"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::PurgeDocumentsResponse,
    :schema_name => XSD::QName.new(NsC_30, "PurgeDocumentsResponse"),
    :schema_element => [
      ["purgeDocumentsResult", ["Docusign::PurgeDocumentStatus", XSD::QName.new(NsC_30, "PurgeDocumentsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SaveTemplate,
    :schema_name => XSD::QName.new(NsC_30, "SaveTemplate"),
    :schema_element => [
      ["envelopeTemplate", ["Docusign::EnvelopeTemplate", XSD::QName.new(NsC_30, "EnvelopeTemplate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SaveTemplateResponse,
    :schema_name => XSD::QName.new(NsC_30, "SaveTemplateResponse"),
    :schema_element => [
      ["saveTemplateResult", ["Docusign::SaveTemplateResult", XSD::QName.new(NsC_30, "SaveTemplateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::UploadTemplate,
    :schema_name => XSD::QName.new(NsC_30, "UploadTemplate"),
    :schema_element => [
      ["templateXML", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateXML")], [0, 1]],
      ["accountID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountID")], [0, 1]],
      ["shared", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Shared")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::UploadTemplateResponse,
    :schema_name => XSD::QName.new(NsC_30, "UploadTemplateResponse"),
    :schema_element => [
      ["uploadTemplateResult", ["Docusign::SaveTemplateResult", XSD::QName.new(NsC_30, "UploadTemplateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestTemplates,
    :schema_name => XSD::QName.new(NsC_30, "RequestTemplates"),
    :schema_element => [
      ["accountID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountID")], [0, 1]],
      ["includeAdvancedTemplates", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "IncludeAdvancedTemplates")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestTemplatesResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestTemplatesResponse"),
    :schema_element => [
      ["requestTemplatesResult", ["Docusign::EnvelopeTemplates", XSD::QName.new(NsC_30, "RequestTemplatesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestTemplate,
    :schema_name => XSD::QName.new(NsC_30, "RequestTemplate"),
    :schema_element => [
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TemplateID")], [0, 1]],
      ["includeDocumentBytes", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "IncludeDocumentBytes")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestTemplateResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestTemplateResponse"),
    :schema_element => [
      ["requestTemplateResult", ["Docusign::EnvelopeTemplate", XSD::QName.new(NsC_30, "RequestTemplateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetAuthenticationToken,
    :schema_name => XSD::QName.new(NsC_30, "GetAuthenticationToken"),
    :schema_element => [
      ["goToEnvelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "GoToEnvelopeID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetAuthenticationTokenResponse,
    :schema_name => XSD::QName.new(NsC_30, "GetAuthenticationTokenResponse"),
    :schema_element => [
      ["getAuthenticationTokenResult", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "GetAuthenticationTokenResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetAddressBookItems,
    :schema_name => XSD::QName.new(NsC_30, "GetAddressBookItems"),
    :schema_element => [
      ["accountID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetAddressBookItemsResponse,
    :schema_name => XSD::QName.new(NsC_30, "GetAddressBookItemsResponse"),
    :schema_element => [
      ["getAddressBookItemsResult", ["Docusign::ArrayOfAddressBookItem", XSD::QName.new(NsC_30, "GetAddressBookItemsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::UpdateAddressBookItems,
    :schema_name => XSD::QName.new(NsC_30, "UpdateAddressBookItems"),
    :schema_element => [
      ["addressBookItems", ["Docusign::ArrayOfAddressBookItem", XSD::QName.new(NsC_30, "AddressBookItems")], [0, 1]],
      ["returnAddressBook", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReturnAddressBook")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::UpdateAddressBookItemsResponse,
    :schema_name => XSD::QName.new(NsC_30, "UpdateAddressBookItemsResponse"),
    :schema_element => [
      ["updateAddressBookItemsResult", ["Docusign::UpdateAddressBookResult", XSD::QName.new(NsC_30, "UpdateAddressBookItemsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RemoveAddressBookItems,
    :schema_name => XSD::QName.new(NsC_30, "RemoveAddressBookItems"),
    :schema_element => [
      ["addressBookRemoveItems", ["Docusign::ArrayOfAddressBookRemoveItem", XSD::QName.new(NsC_30, "AddressBookRemoveItems")], [0, 1]],
      ["returnAddressBook", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "ReturnAddressBook")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RemoveAddressBookItemsResponse,
    :schema_name => XSD::QName.new(NsC_30, "RemoveAddressBookItemsResponse"),
    :schema_element => [
      ["removeAddressBookItemsResult", ["Docusign::UpdateAddressBookResult", XSD::QName.new(NsC_30, "RemoveAddressBookItemsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SynchEnvelope,
    :schema_name => XSD::QName.new(NsC_30, "SynchEnvelope"),
    :schema_element => [
      ["transactionID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TransactionID")], [0, 1]],
      ["accountID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountID")], [0, 1]],
      ["block", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Block")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::SynchEnvelopeResponse,
    :schema_name => XSD::QName.new(NsC_30, "SynchEnvelopeResponse"),
    :schema_element => [
      ["synchEnvelopeResult", ["Docusign::SynchEnvelopeStatus", XSD::QName.new(NsC_30, "SynchEnvelopeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestSenderToken,
    :schema_name => XSD::QName.new(NsC_30, "RequestSenderToken"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["accountID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccountID")], [0, 1]],
      ["returnURL", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ReturnURL")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestSenderTokenResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestSenderTokenResponse"),
    :schema_element => [
      ["requestSenderTokenResult", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RequestSenderTokenResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestCorrectToken,
    :schema_name => XSD::QName.new(NsC_30, "RequestCorrectToken"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["suppressNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "SuppressNavigation")]],
      ["returnURL", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "ReturnURL")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestCorrectTokenResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestCorrectTokenResponse"),
    :schema_element => [
      ["requestCorrectTokenResult", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "RequestCorrectTokenResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetFolderItems,
    :schema_name => XSD::QName.new(NsC_30, "GetFolderItems"),
    :schema_element => [
      ["folderFilter", ["Docusign::FolderFilter", XSD::QName.new(NsC_30, "FolderFilter")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetFolderItemsResponse,
    :schema_name => XSD::QName.new(NsC_30, "GetFolderItemsResponse"),
    :schema_element => [
      ["getFolderItemsResult", ["Docusign::FolderResults", XSD::QName.new(NsC_30, "GetFolderItemsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetFolderList,
    :schema_name => XSD::QName.new(NsC_30, "GetFolderList"),
    :schema_element => [
      ["foldersFilter", ["Docusign::FoldersFilter", XSD::QName.new(NsC_30, "FoldersFilter")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::GetFolderListResponse,
    :schema_name => XSD::QName.new(NsC_30, "GetFolderListResponse"),
    :schema_element => [
      ["getFolderListResult", ["Docusign::AvailableFolders", XSD::QName.new(NsC_30, "GetFolderListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestEnvelope,
    :schema_name => XSD::QName.new(NsC_30, "RequestEnvelope"),
    :schema_element => [
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "EnvelopeID")], [0, 1]],
      ["includeDocumentBytes", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "IncludeDocumentBytes")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::RequestEnvelopeResponse,
    :schema_name => XSD::QName.new(NsC_30, "RequestEnvelopeResponse"),
    :schema_element => [
      ["requestEnvelopeResult", ["Docusign::Envelope", XSD::QName.new(NsC_30, "RequestEnvelopeResult")], [0, 1]]
    ]
  )
end

end
