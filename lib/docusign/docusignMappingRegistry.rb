require 'soap/mapping'
require 'docusign'
# require File.expand_path(File.dirname(__FILE__) + '/docusign')

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
      ["envelopeAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "EnvelopeAttachment")], [0, 1]]
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
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Password")], [0, 1]]
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
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["type", ["Docusign::RecipientTypeCode", XSD::QName.new(NsC_30, "Type")]],
      ["accessCode", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccessCode")]],
      ["addAccessCodeToEmail", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AddAccessCodeToEmail")], [0, 1]],
      ["requireIDLookup", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "RequireIDLookup")]],
      ["iDCheckConfigurationName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "IDCheckConfigurationName")], [0, 1]],
      ["signatureInfo", ["Docusign::RecipientSignatureInfo", XSD::QName.new(NsC_30, "SignatureInfo")], [0, 1]],
      ["captiveInfo", ["Docusign::RecipientCaptiveInfo", XSD::QName.new(NsC_30, "CaptiveInfo")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfString", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["routingOrder", ["SOAP::SOAPUnsignedShort", XSD::QName.new(NsC_30, "RoutingOrder")], [0, 1]],
      ["iDCheckInformationInput", ["Docusign::IDCheckInformationInput", XSD::QName.new(NsC_30, "IDCheckInformationInput")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["recipientAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "RecipientAttachment")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Note")], [0, 1]]
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
    :class => Docusign::ArrayOfString,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString"),
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
      ["customTabRadioGroupName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabRadioGroupName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AnchorTab,
    :schema_type => XSD::QName.new(NsC_30, "AnchorTab"),
    :schema_element => [
      ["anchorTabString", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AnchorTabString")], [0, 1]],
      ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "XOffset")], [0, 1]],
      ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "YOffset")], [0, 1]],
      ["unit", ["Docusign::UnitTypeCode", XSD::QName.new(NsC_30, "Unit")], [0, 1]]
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
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Value")], [0, 1]]
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
      ["envelopeAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "EnvelopeAttachment")], [0, 1]]
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
      ["customFields", ["Docusign::ArrayOfString", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["tabStatuses", ["Docusign::ArrayOfTabStatus", XSD::QName.new(NsC_30, "TabStatuses")], [0, 1]],
      ["recipientAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "RecipientAttachment")], [0, 1]]
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
      ["oFACResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "OFACResult")], [0, 1]]
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
      ["tabValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabValue")], [0, 1]]
    ]
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
      ["correctedUserName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedUserName")], [0, 1]],
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
      ["pDFBytes", ["SOAP::SOAPBase64", XSD::QName.new(NsC_30, "PDFBytes")], [0, 1]]
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
      ["envelopeIds", ["Docusign::ArrayOfString1", XSD::QName.new(NsC_30, "EnvelopeIds")], [0, 1]],
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
    :class => Docusign::ArrayOfString1,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString1"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "EnvelopeId")], [0, nil]]
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
      ["esign", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Esign")]]
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
      ["onIdCheckFailed", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnIdCheckFailed")], [0, 1]]
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
      ["enabledFeaturesSet", ["Docusign::ArrayOfString2", XSD::QName.new(NsC_30, "EnabledFeaturesSet")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::ArrayOfString2,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString2"),
    :schema_element => [
      ["enabledFeatures", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "EnabledFeatures")], [0, nil]]
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
    :class => Docusign::VaultingModeCode,
    :schema_type => XSD::QName.new(NsC_30, "VaultingModeCode")
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
    :class => Docusign::EnvelopeACStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeACStatusCode")
  )

  EncodedRegistry.register(
    :class => Docusign::RequestRecipientTokenAuthenticationAssertionAuthenticationMethod,
    :schema_type => XSD::QName.new(NsC_30, "RequestRecipientTokenAuthenticationAssertionAuthenticationMethod")
  )

  LiteralRegistry.register(
    :class => Docusign::Envelope,
    :schema_type => XSD::QName.new(NsC_30, "Envelope"),
    :schema_element => [
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
      ["envelopeAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "EnvelopeAttachment")], [0, 1]]
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
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Password")], [0, 1]]
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
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Email")], [0, 1]],
      ["type", ["Docusign::RecipientTypeCode", XSD::QName.new(NsC_30, "Type")]],
      ["accessCode", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AccessCode")]],
      ["addAccessCodeToEmail", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AddAccessCodeToEmail")], [0, 1]],
      ["requireIDLookup", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "RequireIDLookup")]],
      ["iDCheckConfigurationName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "IDCheckConfigurationName")], [0, 1]],
      ["signatureInfo", ["Docusign::RecipientSignatureInfo", XSD::QName.new(NsC_30, "SignatureInfo")], [0, 1]],
      ["captiveInfo", ["Docusign::RecipientCaptiveInfo", XSD::QName.new(NsC_30, "CaptiveInfo")], [0, 1]],
      ["customFields", ["Docusign::ArrayOfString", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["routingOrder", ["SOAP::SOAPUnsignedShort", XSD::QName.new(NsC_30, "RoutingOrder")], [0, 1]],
      ["iDCheckInformationInput", ["Docusign::IDCheckInformationInput", XSD::QName.new(NsC_30, "IDCheckInformationInput")], [0, 1]],
      ["autoNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "AutoNavigation")], [0, 1]],
      ["recipientAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "RecipientAttachment")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Note")], [0, 1]]
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
    :class => Docusign::ArrayOfString,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString"),
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
      ["customTabRadioGroupName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CustomTabRadioGroupName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AnchorTab,
    :schema_type => XSD::QName.new(NsC_30, "AnchorTab"),
    :schema_element => [
      ["anchorTabString", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "AnchorTabString")], [0, 1]],
      ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "XOffset")], [0, 1]],
      ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(NsC_30, "YOffset")], [0, 1]],
      ["unit", ["Docusign::UnitTypeCode", XSD::QName.new(NsC_30, "Unit")], [0, 1]]
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
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "Value")], [0, 1]]
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
      ["envelopeAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "EnvelopeAttachment")], [0, 1]]
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
      ["customFields", ["Docusign::ArrayOfString", XSD::QName.new(NsC_30, "CustomFields")], [0, 1]],
      ["tabStatuses", ["Docusign::ArrayOfTabStatus", XSD::QName.new(NsC_30, "TabStatuses")], [0, 1]],
      ["recipientAttachment", ["Docusign::ArrayOfAttachment", XSD::QName.new(NsC_30, "RecipientAttachment")], [0, 1]]
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
      ["oFACResult", ["Docusign::EventResult", XSD::QName.new(NsC_30, "OFACResult")], [0, 1]]
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
      ["tabValue", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "TabValue")], [0, 1]]
    ]
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
      ["correctedUserName", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "CorrectedUserName")], [0, 1]],
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
      ["pDFBytes", ["SOAP::SOAPBase64", XSD::QName.new(NsC_30, "PDFBytes")], [0, 1]]
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
      ["envelopeIds", ["Docusign::ArrayOfString1", XSD::QName.new(NsC_30, "EnvelopeIds")], [0, 1]],
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
    :class => Docusign::ArrayOfString1,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString1"),
    :schema_element => [
      ["envelopeId", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "EnvelopeId")], [0, nil]]
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
      ["esign", ["SOAP::SOAPBoolean", XSD::QName.new(NsC_30, "Esign")]]
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
      ["onIdCheckFailed", ["SOAP::SOAPString", XSD::QName.new(NsC_30, "OnIdCheckFailed")], [0, 1]]
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
      ["enabledFeaturesSet", ["Docusign::ArrayOfString2", XSD::QName.new(NsC_30, "EnabledFeaturesSet")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::ArrayOfString2,
    :schema_type => XSD::QName.new(NsC_30, "ArrayOfString2"),
    :schema_element => [
      ["enabledFeatures", ["SOAP::SOAPString[]", XSD::QName.new(NsC_30, "EnabledFeatures")], [0, nil]]
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
    :class => Docusign::VaultingModeCode,
    :schema_type => XSD::QName.new(NsC_30, "VaultingModeCode")
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
    :class => Docusign::EnvelopeACStatusCode,
    :schema_type => XSD::QName.new(NsC_30, "EnvelopeACStatusCode")
  )

  LiteralRegistry.register(
    :class => Docusign::RequestRecipientTokenAuthenticationAssertionAuthenticationMethod,
    :schema_type => XSD::QName.new(NsC_30, "RequestRecipientTokenAuthenticationAssertionAuthenticationMethod")
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
end

end
