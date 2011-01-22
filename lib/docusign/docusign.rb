require 'xsd/qname'

module Docusign


# {http://www.docusign.net/API/3.0}Envelope
#   transactionID - SOAP::SOAPString
#   asynchronous - SOAP::SOAPBoolean
#   accountId - SOAP::SOAPString
#   documents - Docusign::ArrayOfDocument
#   recipients - Docusign::ArrayOfRecipient
#   tabs - Docusign::ArrayOfTab
#   subject - SOAP::SOAPString
#   emailBlurb - SOAP::SOAPString
#   signingLocation - Docusign::SigningLocationCode
#   customFields - Docusign::ArrayOfCustomField
#   vaultingOptions - Docusign::VaultingOptions
#   autoNavigation - SOAP::SOAPBoolean
#   envelopeIdStamping - SOAP::SOAPBoolean
#   authoritativeCopy - SOAP::SOAPBoolean
#   notification - Docusign::Notification
#   envelopeAttachment - Docusign::ArrayOfAttachment
#   enforceSignerVisibility - SOAP::SOAPBoolean
#   enableWetSign - SOAP::SOAPBoolean
#   allowMarkup - SOAP::SOAPBoolean
#   eventNotification - Docusign::EventNotification
class Envelope
  attr_accessor :transactionID
  attr_accessor :asynchronous
  attr_accessor :accountId
  attr_accessor :documents
  attr_accessor :recipients
  attr_accessor :tabs
  attr_accessor :subject
  attr_accessor :emailBlurb
  attr_accessor :signingLocation
  attr_accessor :customFields
  attr_accessor :vaultingOptions
  attr_accessor :autoNavigation
  attr_accessor :envelopeIdStamping
  attr_accessor :authoritativeCopy
  attr_accessor :notification
  attr_accessor :envelopeAttachment
  attr_accessor :enforceSignerVisibility
  attr_accessor :enableWetSign
  attr_accessor :allowMarkup
  attr_accessor :eventNotification

  def initialize(transactionID = nil, asynchronous = nil, accountId = nil, documents = nil, recipients = nil, tabs = nil, subject = nil, emailBlurb = nil, signingLocation = nil, customFields = nil, vaultingOptions = nil, autoNavigation = nil, envelopeIdStamping = nil, authoritativeCopy = nil, notification = nil, envelopeAttachment = nil, enforceSignerVisibility = nil, enableWetSign = nil, allowMarkup = nil, eventNotification = nil)
    @transactionID = transactionID
    @asynchronous = asynchronous
    @accountId = accountId
    @documents = documents
    @recipients = recipients
    @tabs = tabs
    @subject = subject
    @emailBlurb = emailBlurb
    @signingLocation = signingLocation
    @customFields = customFields
    @vaultingOptions = vaultingOptions
    @autoNavigation = autoNavigation
    @envelopeIdStamping = envelopeIdStamping
    @authoritativeCopy = authoritativeCopy
    @notification = notification
    @envelopeAttachment = envelopeAttachment
    @enforceSignerVisibility = enforceSignerVisibility
    @enableWetSign = enableWetSign
    @allowMarkup = allowMarkup
    @eventNotification = eventNotification
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfDocument
class ArrayOfDocument < ::Array
end

# {http://www.docusign.net/API/3.0}Document
#   iD - SOAP::SOAPPositiveInteger
#   name - SOAP::SOAPString
#   pDFBytes - SOAP::SOAPBase64
#   password - SOAP::SOAPString
#   transformPdfFields - SOAP::SOAPBoolean
#   fileExtension - SOAP::SOAPString
#   matchBoxes - Docusign::ArrayOfMatchBox
#   attachmentDescription - SOAP::SOAPString
class Document
  attr_accessor :iD
  attr_accessor :name
  attr_accessor :pDFBytes
  attr_accessor :password
  attr_accessor :transformPdfFields
  attr_accessor :fileExtension
  attr_accessor :matchBoxes
  attr_accessor :attachmentDescription

  def initialize(iD = nil, name = nil, pDFBytes = nil, password = nil, transformPdfFields = nil, fileExtension = nil, matchBoxes = nil, attachmentDescription = nil)
    @iD = iD
    @name = name
    @pDFBytes = pDFBytes
    @password = password
    @transformPdfFields = transformPdfFields
    @fileExtension = fileExtension
    @matchBoxes = matchBoxes
    @attachmentDescription = attachmentDescription
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfMatchBox
class ArrayOfMatchBox < ::Array
end

# {http://www.docusign.net/API/3.0}MatchBox
#   pageNumber - SOAP::SOAPPositiveInteger
#   xPosition - SOAP::SOAPInt
#   yPosition - SOAP::SOAPInt
#   width - SOAP::SOAPInt
#   height - SOAP::SOAPInt
class MatchBox
  attr_accessor :pageNumber
  attr_accessor :xPosition
  attr_accessor :yPosition
  attr_accessor :width
  attr_accessor :height

  def initialize(pageNumber = nil, xPosition = nil, yPosition = nil, width = nil, height = nil)
    @pageNumber = pageNumber
    @xPosition = xPosition
    @yPosition = yPosition
    @width = width
    @height = height
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfRecipient
class ArrayOfRecipient < ::Array
end

# {http://www.docusign.net/API/3.0}Recipient
#   iD - SOAP::SOAPPositiveInteger
#   userName - SOAP::SOAPString
#   signerName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   type - Docusign::RecipientTypeCode
#   accessCode - SOAP::SOAPString
#   addAccessCodeToEmail - SOAP::SOAPBoolean
#   requireIDLookup - SOAP::SOAPBoolean
#   iDCheckConfigurationName - SOAP::SOAPString
#   phoneAuthentication - Docusign::RecipientPhoneAuthentication
#   signatureInfo - Docusign::RecipientSignatureInfo
#   captiveInfo - Docusign::RecipientCaptiveInfo
#   customFields - Docusign::ArrayOfString1
#   routingOrder - SOAP::SOAPUnsignedShort
#   iDCheckInformationInput - Docusign::IDCheckInformationInput
#   autoNavigation - SOAP::SOAPBoolean
#   recipientAttachment - Docusign::ArrayOfAttachment
#   note - SOAP::SOAPString
#   roleName - SOAP::SOAPString
#   templateLocked - SOAP::SOAPBoolean
#   templateRequired - SOAP::SOAPBoolean
#   templateAccessCodeRequired - SOAP::SOAPBoolean
#   defaultRecipient - SOAP::SOAPBoolean
class Recipient
  attr_accessor :iD
  attr_accessor :userName
  attr_accessor :signerName
  attr_accessor :email
  attr_accessor :type
  attr_accessor :accessCode
  attr_accessor :addAccessCodeToEmail
  attr_accessor :requireIDLookup
  attr_accessor :iDCheckConfigurationName
  attr_accessor :phoneAuthentication
  attr_accessor :signatureInfo
  attr_accessor :captiveInfo
  attr_accessor :customFields
  attr_accessor :routingOrder
  attr_accessor :iDCheckInformationInput
  attr_accessor :autoNavigation
  attr_accessor :recipientAttachment
  attr_accessor :note
  attr_accessor :roleName
  attr_accessor :templateLocked
  attr_accessor :templateRequired
  attr_accessor :templateAccessCodeRequired
  attr_accessor :defaultRecipient

  def initialize(iD = nil, userName = nil, signerName = nil, email = nil, type = nil, accessCode = nil, addAccessCodeToEmail = nil, requireIDLookup = nil, iDCheckConfigurationName = nil, phoneAuthentication = nil, signatureInfo = nil, captiveInfo = nil, customFields = nil, routingOrder = nil, iDCheckInformationInput = nil, autoNavigation = nil, recipientAttachment = nil, note = nil, roleName = nil, templateLocked = nil, templateRequired = nil, templateAccessCodeRequired = nil, defaultRecipient = nil)
    @iD = iD
    @userName = userName
    @signerName = signerName
    @email = email
    @type = type
    @accessCode = accessCode
    @addAccessCodeToEmail = addAccessCodeToEmail
    @requireIDLookup = requireIDLookup
    @iDCheckConfigurationName = iDCheckConfigurationName
    @phoneAuthentication = phoneAuthentication
    @signatureInfo = signatureInfo
    @captiveInfo = captiveInfo
    @customFields = customFields
    @routingOrder = routingOrder
    @iDCheckInformationInput = iDCheckInformationInput
    @autoNavigation = autoNavigation
    @recipientAttachment = recipientAttachment
    @note = note
    @roleName = roleName
    @templateLocked = templateLocked
    @templateRequired = templateRequired
    @templateAccessCodeRequired = templateAccessCodeRequired
    @defaultRecipient = defaultRecipient
  end
end

# {http://www.docusign.net/API/3.0}RecipientPhoneAuthentication
#   recipMayProvideNumber - SOAP::SOAPBoolean
#   validateRecipProvidedNumber - SOAP::SOAPBoolean
#   recordVoicePrint - SOAP::SOAPBoolean
#   senderProvidedNumbers - Docusign::ArrayOfString
class RecipientPhoneAuthentication
  attr_accessor :recipMayProvideNumber
  attr_accessor :validateRecipProvidedNumber
  attr_accessor :recordVoicePrint
  attr_accessor :senderProvidedNumbers

  def initialize(recipMayProvideNumber = nil, validateRecipProvidedNumber = nil, recordVoicePrint = nil, senderProvidedNumbers = nil)
    @recipMayProvideNumber = recipMayProvideNumber
    @validateRecipProvidedNumber = validateRecipProvidedNumber
    @recordVoicePrint = recordVoicePrint
    @senderProvidedNumbers = senderProvidedNumbers
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfString
class ArrayOfString < ::Array
end

# {http://www.docusign.net/API/3.0}RecipientSignatureInfo
#   signatureName - SOAP::SOAPString
#   signatureInitials - SOAP::SOAPString
#   fontStyle - Docusign::FontStyleCode
class RecipientSignatureInfo
  attr_accessor :signatureName
  attr_accessor :signatureInitials
  attr_accessor :fontStyle

  def initialize(signatureName = nil, signatureInitials = nil, fontStyle = nil)
    @signatureName = signatureName
    @signatureInitials = signatureInitials
    @fontStyle = fontStyle
  end
end

# {http://www.docusign.net/API/3.0}RecipientCaptiveInfo
#   clientUserId - SOAP::SOAPString
class RecipientCaptiveInfo
  attr_accessor :clientUserId

  def initialize(clientUserId = nil)
    @clientUserId = clientUserId
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfString1
class ArrayOfString1 < ::Array
end

# {http://www.docusign.net/API/3.0}IDCheckInformationInput
#   addressInformationInput - Docusign::AddressInformationInput
#   dOBInformationInput - Docusign::DOBInformationInput
#   sSN4InformationInput - Docusign::SSN4InformationInput
#   sSN9InformationInput - Docusign::SSN9InformationInput
class IDCheckInformationInput
  attr_accessor :addressInformationInput
  attr_accessor :dOBInformationInput
  attr_accessor :sSN4InformationInput
  attr_accessor :sSN9InformationInput

  def initialize(addressInformationInput = nil, dOBInformationInput = nil, sSN4InformationInput = nil, sSN9InformationInput = nil)
    @addressInformationInput = addressInformationInput
    @dOBInformationInput = dOBInformationInput
    @sSN4InformationInput = sSN4InformationInput
    @sSN9InformationInput = sSN9InformationInput
  end
end

# {http://www.docusign.net/API/3.0}AddressInformationInput
#   addressInformation - Docusign::AddressInformation
#   displayLevel - Docusign::DisplayLevelCode
#   receiveInResponse - SOAP::SOAPBoolean
class AddressInformationInput
  attr_accessor :addressInformation
  attr_accessor :displayLevel
  attr_accessor :receiveInResponse

  def initialize(addressInformation = nil, displayLevel = nil, receiveInResponse = nil)
    @addressInformation = addressInformation
    @displayLevel = displayLevel
    @receiveInResponse = receiveInResponse
  end
end

# {http://www.docusign.net/API/3.0}AddressInformation
#   street1 - SOAP::SOAPString
#   street2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zip - SOAP::SOAPString
#   zipPlus4 - SOAP::SOAPString
class AddressInformation
  attr_accessor :street1
  attr_accessor :street2
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zip
  attr_accessor :zipPlus4

  def initialize(street1 = nil, street2 = nil, city = nil, state = nil, zip = nil, zipPlus4 = nil)
    @street1 = street1
    @street2 = street2
    @city = city
    @state = state
    @zip = zip
    @zipPlus4 = zipPlus4
  end
end

# {http://www.docusign.net/API/3.0}DOBInformationInput
#   dOBInformation - Docusign::DOBInformation
#   displayLevel - Docusign::DisplayLevelCode
#   receiveInResponse - SOAP::SOAPBoolean
class DOBInformationInput
  attr_accessor :dOBInformation
  attr_accessor :displayLevel
  attr_accessor :receiveInResponse

  def initialize(dOBInformation = nil, displayLevel = nil, receiveInResponse = nil)
    @dOBInformation = dOBInformation
    @displayLevel = displayLevel
    @receiveInResponse = receiveInResponse
  end
end

# {http://www.docusign.net/API/3.0}DOBInformation
#   dOB - SOAP::SOAPDateTime
class DOBInformation
  attr_accessor :dOB

  def initialize(dOB = nil)
    @dOB = dOB
  end
end

# {http://www.docusign.net/API/3.0}SSN4InformationInput
#   sSN4Information - Docusign::SSN4Information
#   displayLevel - Docusign::DisplayLevelCode
#   receiveInResponse - SOAP::SOAPBoolean
class SSN4InformationInput
  attr_accessor :sSN4Information
  attr_accessor :displayLevel
  attr_accessor :receiveInResponse

  def initialize(sSN4Information = nil, displayLevel = nil, receiveInResponse = nil)
    @sSN4Information = sSN4Information
    @displayLevel = displayLevel
    @receiveInResponse = receiveInResponse
  end
end

# {http://www.docusign.net/API/3.0}SSN4Information
#   sSN4 - SOAP::SOAPString
class SSN4Information
  attr_accessor :sSN4

  def initialize(sSN4 = nil)
    @sSN4 = sSN4
  end
end

# {http://www.docusign.net/API/3.0}SSN9InformationInput
#   sSN9Information - Docusign::SSN9Information
#   displayLevel - Docusign::DisplayLevelCode
class SSN9InformationInput
  attr_accessor :sSN9Information
  attr_accessor :displayLevel

  def initialize(sSN9Information = nil, displayLevel = nil)
    @sSN9Information = sSN9Information
    @displayLevel = displayLevel
  end
end

# {http://www.docusign.net/API/3.0}SSN9Information
#   sSN9 - SOAP::SOAPString
class SSN9Information
  attr_accessor :sSN9

  def initialize(sSN9 = nil)
    @sSN9 = sSN9
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfAttachment
class ArrayOfAttachment < ::Array
end

# {http://www.docusign.net/API/3.0}Attachment
#   data - SOAP::SOAPBase64
#   label - SOAP::SOAPString
#   type - SOAP::SOAPString
class Attachment
  attr_accessor :data
  attr_accessor :label
  attr_accessor :type

  def initialize(data = nil, label = nil, type = nil)
    @data = data
    @label = label
    @type = type
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfTab
class ArrayOfTab < ::Array
end

# {http://www.docusign.net/API/3.0}Tab
#   documentID - SOAP::SOAPPositiveInteger
#   recipientID - SOAP::SOAPPositiveInteger
#   pageNumber - SOAP::SOAPNonNegativeInteger
#   xPosition - SOAP::SOAPNonNegativeInteger
#   yPosition - SOAP::SOAPNonNegativeInteger
#   scaleValue - SOAP::SOAPDecimal
#   anchorTabItem - Docusign::AnchorTab
#   type - Docusign::TabTypeCode
#   name - SOAP::SOAPString
#   tabLabel - SOAP::SOAPString
#   value - SOAP::SOAPString
#   customTabType - Docusign::CustomTabType
#   customTabWidth - SOAP::SOAPInt
#   customTabHeight - SOAP::SOAPInt
#   customTabRequired - SOAP::SOAPBoolean
#   customTabLocked - SOAP::SOAPBoolean
#   customTabDisableAutoSize - SOAP::SOAPBoolean
#   customTabListItems - SOAP::SOAPString
#   customTabListValues - SOAP::SOAPString
#   customTabListSelectedValue - SOAP::SOAPString
#   customTabRadioGroupName - SOAP::SOAPString
#   customTabValidationPattern - SOAP::SOAPString
#   customTabValidationMessage - SOAP::SOAPString
#   templateLocked - SOAP::SOAPBoolean
#   templateRequired - SOAP::SOAPBoolean
#   conditionalParentLabel - SOAP::SOAPString
#   conditionalParentValue - SOAP::SOAPString
#   sharedTab - SOAP::SOAPBoolean
#   requireInitialOnSharedTabChange - SOAP::SOAPBoolean
#   concealValueOnDocument - SOAP::SOAPBoolean
class Tab
  attr_accessor :documentID
  attr_accessor :recipientID
  attr_accessor :pageNumber
  attr_accessor :xPosition
  attr_accessor :yPosition
  attr_accessor :scaleValue
  attr_accessor :anchorTabItem
  attr_accessor :type
  attr_accessor :name
  attr_accessor :tabLabel
  attr_accessor :value
  attr_accessor :customTabType
  attr_accessor :customTabWidth
  attr_accessor :customTabHeight
  attr_accessor :customTabRequired
  attr_accessor :customTabLocked
  attr_accessor :customTabDisableAutoSize
  attr_accessor :customTabListItems
  attr_accessor :customTabListValues
  attr_accessor :customTabListSelectedValue
  attr_accessor :customTabRadioGroupName
  attr_accessor :customTabValidationPattern
  attr_accessor :customTabValidationMessage
  attr_accessor :templateLocked
  attr_accessor :templateRequired
  attr_accessor :conditionalParentLabel
  attr_accessor :conditionalParentValue
  attr_accessor :sharedTab
  attr_accessor :requireInitialOnSharedTabChange
  attr_accessor :concealValueOnDocument

  def initialize(documentID = nil, recipientID = nil, pageNumber = nil, xPosition = nil, yPosition = nil, scaleValue = nil, anchorTabItem = nil, type = nil, name = nil, tabLabel = nil, value = nil, customTabType = nil, customTabWidth = nil, customTabHeight = nil, customTabRequired = nil, customTabLocked = nil, customTabDisableAutoSize = nil, customTabListItems = nil, customTabListValues = nil, customTabListSelectedValue = nil, customTabRadioGroupName = nil, customTabValidationPattern = nil, customTabValidationMessage = nil, templateLocked = nil, templateRequired = nil, conditionalParentLabel = nil, conditionalParentValue = nil, sharedTab = nil, requireInitialOnSharedTabChange = nil, concealValueOnDocument = nil)
    @documentID = documentID
    @recipientID = recipientID
    @pageNumber = pageNumber
    @xPosition = xPosition
    @yPosition = yPosition
    @scaleValue = scaleValue
    @anchorTabItem = anchorTabItem
    @type = type
    @name = name
    @tabLabel = tabLabel
    @value = value
    @customTabType = customTabType
    @customTabWidth = customTabWidth
    @customTabHeight = customTabHeight
    @customTabRequired = customTabRequired
    @customTabLocked = customTabLocked
    @customTabDisableAutoSize = customTabDisableAutoSize
    @customTabListItems = customTabListItems
    @customTabListValues = customTabListValues
    @customTabListSelectedValue = customTabListSelectedValue
    @customTabRadioGroupName = customTabRadioGroupName
    @customTabValidationPattern = customTabValidationPattern
    @customTabValidationMessage = customTabValidationMessage
    @templateLocked = templateLocked
    @templateRequired = templateRequired
    @conditionalParentLabel = conditionalParentLabel
    @conditionalParentValue = conditionalParentValue
    @sharedTab = sharedTab
    @requireInitialOnSharedTabChange = requireInitialOnSharedTabChange
    @concealValueOnDocument = concealValueOnDocument
  end
end

# {http://www.docusign.net/API/3.0}AnchorTab
#   anchorTabString - SOAP::SOAPString
#   xOffset - SOAP::SOAPDouble
#   yOffset - SOAP::SOAPDouble
#   unit - Docusign::UnitTypeCode
#   ignoreIfNotPresent - SOAP::SOAPBoolean
class AnchorTab
  attr_accessor :anchorTabString
  attr_accessor :xOffset
  attr_accessor :yOffset
  attr_accessor :unit
  attr_accessor :ignoreIfNotPresent

  def initialize(anchorTabString = nil, xOffset = nil, yOffset = nil, unit = nil, ignoreIfNotPresent = nil)
    @anchorTabString = anchorTabString
    @xOffset = xOffset
    @yOffset = yOffset
    @unit = unit
    @ignoreIfNotPresent = ignoreIfNotPresent
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfCustomField
class ArrayOfCustomField < ::Array
end

# {http://www.docusign.net/API/3.0}CustomField
#   name - SOAP::SOAPString
#   show - SOAP::SOAPString
#   required - SOAP::SOAPString
#   value - SOAP::SOAPString
#   customFieldType - Docusign::CustomFieldType
#   listItems - SOAP::SOAPString
class CustomField
  attr_accessor :name
  attr_accessor :show
  attr_accessor :required
  attr_accessor :value
  attr_accessor :customFieldType
  attr_accessor :listItems

  def initialize(name = nil, show = nil, required = nil, value = nil, customFieldType = nil, listItems = nil)
    @name = name
    @show = show
    @required = required
    @value = value
    @customFieldType = customFieldType
    @listItems = listItems
  end
end

# {http://www.docusign.net/API/3.0}VaultingOptions
#   vaultingMode - Docusign::VaultingModeCode
#   eODTransactionName - SOAP::SOAPString
#   eODDocumentName - SOAP::SOAPString
#   eODDocumentDescription - SOAP::SOAPString
class VaultingOptions
  attr_accessor :vaultingMode
  attr_accessor :eODTransactionName
  attr_accessor :eODDocumentName
  attr_accessor :eODDocumentDescription

  def initialize(vaultingMode = nil, eODTransactionName = nil, eODDocumentName = nil, eODDocumentDescription = nil)
    @vaultingMode = vaultingMode
    @eODTransactionName = eODTransactionName
    @eODDocumentName = eODDocumentName
    @eODDocumentDescription = eODDocumentDescription
  end
end

# {http://www.docusign.net/API/3.0}Notification
#   useAccountDefaults - SOAP::SOAPBoolean
#   reminders - Docusign::Reminders
#   expirations - Docusign::Expirations
class Notification
  attr_accessor :useAccountDefaults
  attr_accessor :reminders
  attr_accessor :expirations

  def initialize(useAccountDefaults = nil, reminders = nil, expirations = nil)
    @useAccountDefaults = useAccountDefaults
    @reminders = reminders
    @expirations = expirations
  end
end

# {http://www.docusign.net/API/3.0}Reminders
#   reminderEnabled - SOAP::SOAPBoolean
#   reminderDelay - SOAP::SOAPNonNegativeInteger
#   reminderFrequency - SOAP::SOAPNonNegativeInteger
class Reminders
  attr_accessor :reminderEnabled
  attr_accessor :reminderDelay
  attr_accessor :reminderFrequency

  def initialize(reminderEnabled = nil, reminderDelay = nil, reminderFrequency = nil)
    @reminderEnabled = reminderEnabled
    @reminderDelay = reminderDelay
    @reminderFrequency = reminderFrequency
  end
end

# {http://www.docusign.net/API/3.0}Expirations
#   expireEnabled - SOAP::SOAPBoolean
#   expireAfter - SOAP::SOAPNonNegativeInteger
#   expireWarn - SOAP::SOAPNonNegativeInteger
class Expirations
  attr_accessor :expireEnabled
  attr_accessor :expireAfter
  attr_accessor :expireWarn

  def initialize(expireEnabled = nil, expireAfter = nil, expireWarn = nil)
    @expireEnabled = expireEnabled
    @expireAfter = expireAfter
    @expireWarn = expireWarn
  end
end

# {http://www.docusign.net/API/3.0}EventNotification
#   uRL - SOAP::SOAPString
#   loggingEnabled - SOAP::SOAPBoolean
#   envelopeEvents - Docusign::ArrayOfEnvelopeEvent
class EventNotification
  attr_accessor :uRL
  attr_accessor :loggingEnabled
  attr_accessor :envelopeEvents

  def initialize(uRL = nil, loggingEnabled = nil, envelopeEvents = nil)
    @uRL = uRL
    @loggingEnabled = loggingEnabled
    @envelopeEvents = envelopeEvents
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfEnvelopeEvent
class ArrayOfEnvelopeEvent < ::Array
end

# {http://www.docusign.net/API/3.0}EnvelopeEvent
#   envelopeEventStatusCode - Docusign::EnvelopeEventStatusCode
#   includeDocuments - SOAP::SOAPBoolean
class EnvelopeEvent
  attr_accessor :envelopeEventStatusCode
  attr_accessor :includeDocuments

  def initialize(envelopeEventStatusCode = nil, includeDocuments = nil)
    @envelopeEventStatusCode = envelopeEventStatusCode
    @includeDocuments = includeDocuments
  end
end

# {http://www.docusign.net/API/3.0}EnvelopeStatus
#   recipientStatuses - Docusign::ArrayOfRecipientStatus
#   timeGenerated - SOAP::SOAPDateTime
#   envelopeID - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   userName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   status - Docusign::EnvelopeStatusCode
#   created - SOAP::SOAPDateTime
#   deleted - SOAP::SOAPDateTime
#   sent - SOAP::SOAPDateTime
#   delivered - SOAP::SOAPDateTime
#   signed - SOAP::SOAPDateTime
#   completed - SOAP::SOAPDateTime
#   declined - SOAP::SOAPDateTime
#   timedOut - SOAP::SOAPDateTime
#   aCStatus - SOAP::SOAPString
#   aCStatusDate - SOAP::SOAPDateTime
#   aCHolder - SOAP::SOAPString
#   aCHolderEmail - SOAP::SOAPString
#   aCHolderLocation - SOAP::SOAPString
#   signingLocation - Docusign::SigningLocationCode
#   senderIPAddress - SOAP::SOAPString
#   envelopePDFHash - SOAP::SOAPString
#   customFields - Docusign::ArrayOfCustomField
#   vaultingDetails - Docusign::VaultingDetails
#   autoNavigation - SOAP::SOAPBoolean
#   envelopeIdStamping - SOAP::SOAPBoolean
#   authoritativeCopy - SOAP::SOAPBoolean
#   envelopeAttachment - Docusign::ArrayOfAttachment
#   documentStatuses - Docusign::ArrayOfDocumentStatus
#   formData - Docusign::FormData
class EnvelopeStatus
  attr_accessor :recipientStatuses
  attr_accessor :timeGenerated
  attr_accessor :envelopeID
  attr_accessor :subject
  attr_accessor :userName
  attr_accessor :email
  attr_accessor :status
  attr_accessor :created
  attr_accessor :deleted
  attr_accessor :sent
  attr_accessor :delivered
  attr_accessor :signed
  attr_accessor :completed
  attr_accessor :declined
  attr_accessor :timedOut
  attr_accessor :aCStatus
  attr_accessor :aCStatusDate
  attr_accessor :aCHolder
  attr_accessor :aCHolderEmail
  attr_accessor :aCHolderLocation
  attr_accessor :signingLocation
  attr_accessor :senderIPAddress
  attr_accessor :envelopePDFHash
  attr_accessor :customFields
  attr_accessor :vaultingDetails
  attr_accessor :autoNavigation
  attr_accessor :envelopeIdStamping
  attr_accessor :authoritativeCopy
  attr_accessor :envelopeAttachment
  attr_accessor :documentStatuses
  attr_accessor :formData

  def initialize(recipientStatuses = nil, timeGenerated = nil, envelopeID = nil, subject = nil, userName = nil, email = nil, status = nil, created = nil, deleted = nil, sent = nil, delivered = nil, signed = nil, completed = nil, declined = nil, timedOut = nil, aCStatus = nil, aCStatusDate = nil, aCHolder = nil, aCHolderEmail = nil, aCHolderLocation = nil, signingLocation = nil, senderIPAddress = nil, envelopePDFHash = nil, customFields = nil, vaultingDetails = nil, autoNavigation = nil, envelopeIdStamping = nil, authoritativeCopy = nil, envelopeAttachment = nil, documentStatuses = nil, formData = nil)
    @recipientStatuses = recipientStatuses
    @timeGenerated = timeGenerated
    @envelopeID = envelopeID
    @subject = subject
    @userName = userName
    @email = email
    @status = status
    @created = created
    @deleted = deleted
    @sent = sent
    @delivered = delivered
    @signed = signed
    @completed = completed
    @declined = declined
    @timedOut = timedOut
    @aCStatus = aCStatus
    @aCStatusDate = aCStatusDate
    @aCHolder = aCHolder
    @aCHolderEmail = aCHolderEmail
    @aCHolderLocation = aCHolderLocation
    @signingLocation = signingLocation
    @senderIPAddress = senderIPAddress
    @envelopePDFHash = envelopePDFHash
    @customFields = customFields
    @vaultingDetails = vaultingDetails
    @autoNavigation = autoNavigation
    @envelopeIdStamping = envelopeIdStamping
    @authoritativeCopy = authoritativeCopy
    @envelopeAttachment = envelopeAttachment
    @documentStatuses = documentStatuses
    @formData = formData
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfRecipientStatus
class ArrayOfRecipientStatus < ::Array
end

# {http://www.docusign.net/API/3.0}RecipientStatus
#   type - Docusign::RecipientTypeCode
#   email - SOAP::SOAPString
#   userName - SOAP::SOAPString
#   routingOrder - SOAP::SOAPUnsignedShort
#   sent - SOAP::SOAPDateTime
#   delivered - SOAP::SOAPDateTime
#   signed - SOAP::SOAPDateTime
#   declined - SOAP::SOAPDateTime
#   declineReason - SOAP::SOAPString
#   status - Docusign::RecipientStatusCode
#   recipientIPAddress - SOAP::SOAPString
#   clientUserId - SOAP::SOAPString
#   autoNavigation - SOAP::SOAPBoolean
#   iDCheckInformation - Docusign::IDCheckInformation
#   recipientAuthenticationStatus - Docusign::AuthenticationStatus
#   customFields - Docusign::ArrayOfString1
#   tabStatuses - Docusign::ArrayOfTabStatus
#   recipientAttachment - Docusign::ArrayOfAttachment
#   accountStatus - SOAP::SOAPString
#   esignAgreementInformation - Docusign::RecipientStatusEsignAgreementInformation
#   formData - Docusign::FormData
#   recipientId - SOAP::SOAPString
class RecipientStatus
  attr_accessor :type
  attr_accessor :email
  attr_accessor :userName
  attr_accessor :routingOrder
  attr_accessor :sent
  attr_accessor :delivered
  attr_accessor :signed
  attr_accessor :declined
  attr_accessor :declineReason
  attr_accessor :status
  attr_accessor :recipientIPAddress
  attr_accessor :clientUserId
  attr_accessor :autoNavigation
  attr_accessor :iDCheckInformation
  attr_accessor :recipientAuthenticationStatus
  attr_accessor :customFields
  attr_accessor :tabStatuses
  attr_accessor :recipientAttachment
  attr_accessor :accountStatus
  attr_accessor :esignAgreementInformation
  attr_accessor :formData
  attr_accessor :recipientId

  def initialize(type = nil, email = nil, userName = nil, routingOrder = nil, sent = nil, delivered = nil, signed = nil, declined = nil, declineReason = nil, status = nil, recipientIPAddress = nil, clientUserId = nil, autoNavigation = nil, iDCheckInformation = nil, recipientAuthenticationStatus = nil, customFields = nil, tabStatuses = nil, recipientAttachment = nil, accountStatus = nil, esignAgreementInformation = nil, formData = nil, recipientId = nil)
    @type = type
    @email = email
    @userName = userName
    @routingOrder = routingOrder
    @sent = sent
    @delivered = delivered
    @signed = signed
    @declined = declined
    @declineReason = declineReason
    @status = status
    @recipientIPAddress = recipientIPAddress
    @clientUserId = clientUserId
    @autoNavigation = autoNavigation
    @iDCheckInformation = iDCheckInformation
    @recipientAuthenticationStatus = recipientAuthenticationStatus
    @customFields = customFields
    @tabStatuses = tabStatuses
    @recipientAttachment = recipientAttachment
    @accountStatus = accountStatus
    @esignAgreementInformation = esignAgreementInformation
    @formData = formData
    @recipientId = recipientId
  end
end

# {http://www.docusign.net/API/3.0}IDCheckInformation
#   addressInformation - Docusign::AddressInformation
#   dOBInformation - Docusign::DOBInformation
#   sSN4Information - Docusign::SSN4Information
class IDCheckInformation
  attr_accessor :addressInformation
  attr_accessor :dOBInformation
  attr_accessor :sSN4Information

  def initialize(addressInformation = nil, dOBInformation = nil, sSN4Information = nil)
    @addressInformation = addressInformation
    @dOBInformation = dOBInformation
    @sSN4Information = sSN4Information
  end
end

# {http://www.docusign.net/API/3.0}AuthenticationStatus
#   accessCodeResult - Docusign::EventResult
#   iDQuestionsResult - Docusign::EventResult
#   iDLookupResult - Docusign::EventResult
#   ageVerifyResult - Docusign::EventResult
#   sTANPinResult - Docusign::EventResult
#   oFACResult - Docusign::EventResult
#   phoneAuthResult - Docusign::EventResult
class AuthenticationStatus
  attr_accessor :accessCodeResult
  attr_accessor :iDQuestionsResult
  attr_accessor :iDLookupResult
  attr_accessor :ageVerifyResult
  attr_accessor :sTANPinResult
  attr_accessor :oFACResult
  attr_accessor :phoneAuthResult

  def initialize(accessCodeResult = nil, iDQuestionsResult = nil, iDLookupResult = nil, ageVerifyResult = nil, sTANPinResult = nil, oFACResult = nil, phoneAuthResult = nil)
    @accessCodeResult = accessCodeResult
    @iDQuestionsResult = iDQuestionsResult
    @iDLookupResult = iDLookupResult
    @ageVerifyResult = ageVerifyResult
    @sTANPinResult = sTANPinResult
    @oFACResult = oFACResult
    @phoneAuthResult = phoneAuthResult
  end
end

# {http://www.docusign.net/API/3.0}EventResult
#   status - Docusign::EventStatusCode
#   eventTimestamp - SOAP::SOAPDateTime
class EventResult
  attr_accessor :status
  attr_accessor :eventTimestamp

  def initialize(status = nil, eventTimestamp = nil)
    @status = status
    @eventTimestamp = eventTimestamp
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfTabStatus
class ArrayOfTabStatus < ::Array
end

# {http://www.docusign.net/API/3.0}TabStatus
#   tabType - Docusign::TabTypeCode
#   status - SOAP::SOAPString
#   xPosition - SOAP::SOAPDouble
#   yPosition - SOAP::SOAPDouble
#   signed - SOAP::SOAPDateTime
#   tabLabel - SOAP::SOAPString
#   tabName - SOAP::SOAPString
#   tabValue - SOAP::SOAPString
#   documentID - SOAP::SOAPPositiveInteger
#   pageNumber - SOAP::SOAPNonNegativeInteger
#   originalValue - SOAP::SOAPString
#   validationPattern - SOAP::SOAPString
#   roleName - SOAP::SOAPString
#   listValues - SOAP::SOAPString
#   listSelectedValue - SOAP::SOAPString
#   scaleValue - SOAP::SOAPDecimal
#   customTabType - Docusign::CustomTabType
class TabStatus
  attr_accessor :tabType
  attr_accessor :status
  attr_accessor :xPosition
  attr_accessor :yPosition
  attr_accessor :signed
  attr_accessor :tabLabel
  attr_accessor :tabName
  attr_accessor :tabValue
  attr_accessor :documentID
  attr_accessor :pageNumber
  attr_accessor :originalValue
  attr_accessor :validationPattern
  attr_accessor :roleName
  attr_accessor :listValues
  attr_accessor :listSelectedValue
  attr_accessor :scaleValue
  attr_accessor :customTabType

  def initialize(tabType = nil, status = nil, xPosition = nil, yPosition = nil, signed = nil, tabLabel = nil, tabName = nil, tabValue = nil, documentID = nil, pageNumber = nil, originalValue = nil, validationPattern = nil, roleName = nil, listValues = nil, listSelectedValue = nil, scaleValue = nil, customTabType = nil)
    @tabType = tabType
    @status = status
    @xPosition = xPosition
    @yPosition = yPosition
    @signed = signed
    @tabLabel = tabLabel
    @tabName = tabName
    @tabValue = tabValue
    @documentID = documentID
    @pageNumber = pageNumber
    @originalValue = originalValue
    @validationPattern = validationPattern
    @roleName = roleName
    @listValues = listValues
    @listSelectedValue = listSelectedValue
    @scaleValue = scaleValue
    @customTabType = customTabType
  end
end

# {http://www.docusign.net/API/3.0}RecipientStatusEsignAgreementInformation
#   accountEsignId - SOAP::SOAPString
#   userEsignId - SOAP::SOAPString
#   agreementDate - SOAP::SOAPDateTime
class RecipientStatusEsignAgreementInformation
  attr_accessor :accountEsignId
  attr_accessor :userEsignId
  attr_accessor :agreementDate

  def initialize(accountEsignId = nil, userEsignId = nil, agreementDate = nil)
    @accountEsignId = accountEsignId
    @userEsignId = userEsignId
    @agreementDate = agreementDate
  end
end

# {http://www.docusign.net/API/3.0}FormData
#   xfdf - Docusign::FormDataXfdf
class FormData
  attr_accessor :xfdf

  def initialize(xfdf = nil)
    @xfdf = xfdf
  end
end

# {http://www.docusign.net/API/3.0}FormDataXfdf
#   fields - Docusign::ArrayOfFormDataXfdfField
class FormDataXfdf
  attr_accessor :fields

  def initialize(fields = nil)
    @fields = fields
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfFormDataXfdfField
class ArrayOfFormDataXfdfField < ::Array
end

# {http://www.docusign.net/API/3.0}FormDataXfdfField
#   value - SOAP::SOAPString
#   xmlattr_name - SOAP::SOAPString
class FormDataXfdfField
  AttrName = XSD::QName.new(nil, "name")

  attr_accessor :value

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_name
    __xmlattr[AttrName]
  end

  def xmlattr_name=(value)
    __xmlattr[AttrName] = value
  end

  def initialize(value = nil)
    @value = value
    @__xmlattr = {}
  end
end

# {http://www.docusign.net/API/3.0}VaultingDetails
#   eODTransactionName - SOAP::SOAPString
#   eODTransactionID - SOAP::SOAPString
#   eODDocumentProfileID - SOAP::SOAPString
class VaultingDetails
  attr_accessor :eODTransactionName
  attr_accessor :eODTransactionID
  attr_accessor :eODDocumentProfileID

  def initialize(eODTransactionName = nil, eODTransactionID = nil, eODDocumentProfileID = nil)
    @eODTransactionName = eODTransactionName
    @eODTransactionID = eODTransactionID
    @eODDocumentProfileID = eODDocumentProfileID
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfDocumentStatus
class ArrayOfDocumentStatus < ::Array
end

# {http://www.docusign.net/API/3.0}DocumentStatus
#   iD - SOAP::SOAPPositiveInteger
#   name - SOAP::SOAPString
#   templateName - SOAP::SOAPString
#   sequence - SOAP::SOAPPositiveInteger
class DocumentStatus
  attr_accessor :iD
  attr_accessor :name
  attr_accessor :templateName
  attr_accessor :sequence

  def initialize(iD = nil, name = nil, templateName = nil, sequence = nil)
    @iD = iD
    @name = name
    @templateName = templateName
    @sequence = sequence
  end
end

# {http://www.docusign.net/API/3.0}Correction
#   envelopeID - SOAP::SOAPString
#   envelopeSettingsCorrection - Docusign::EnvelopeSettings
#   recipientCorrections - Docusign::ArrayOfRecipientCorrection
class Correction
  attr_accessor :envelopeID
  attr_accessor :envelopeSettingsCorrection
  attr_accessor :recipientCorrections

  def initialize(envelopeID = nil, envelopeSettingsCorrection = nil, recipientCorrections = nil)
    @envelopeID = envelopeID
    @envelopeSettingsCorrection = envelopeSettingsCorrection
    @recipientCorrections = recipientCorrections
  end
end

# {http://www.docusign.net/API/3.0}EnvelopeSettings
#   autoNavigation - SOAP::SOAPBoolean
#   envelopeIdStamping - SOAP::SOAPBoolean
class EnvelopeSettings
  attr_accessor :autoNavigation
  attr_accessor :envelopeIdStamping

  def initialize(autoNavigation = nil, envelopeIdStamping = nil)
    @autoNavigation = autoNavigation
    @envelopeIdStamping = envelopeIdStamping
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfRecipientCorrection
class ArrayOfRecipientCorrection < ::Array
end

# {http://www.docusign.net/API/3.0}RecipientCorrection
#   previousUserName - SOAP::SOAPString
#   previousEmail - SOAP::SOAPString
#   previousRoutingOrder - SOAP::SOAPUnsignedShort
#   previousSignerName - SOAP::SOAPString
#   correctedUserName - SOAP::SOAPString
#   correctedSignerName - SOAP::SOAPString
#   correctedEmail - SOAP::SOAPString
#   correctedCaptiveInfo - Docusign::RecipientCorrectionCorrectedCaptiveInfo
#   correctedAccessCode - SOAP::SOAPString
#   correctedAccessCodeRequired - SOAP::SOAPBoolean
#   correctedRequireIDLookup - SOAP::SOAPBoolean
#   correctedIDCheckConfigurationName - SOAP::SOAPString
#   correctedRoutingOrder - SOAP::SOAPUnsignedShort
#   correctedAutoNavigation - SOAP::SOAPBoolean
#   correctedIDCheckInformationInput - Docusign::IDCheckInformationInput
#   resend - SOAP::SOAPBoolean
class RecipientCorrection
  attr_accessor :previousUserName
  attr_accessor :previousEmail
  attr_accessor :previousRoutingOrder
  attr_accessor :previousSignerName
  attr_accessor :correctedUserName
  attr_accessor :correctedSignerName
  attr_accessor :correctedEmail
  attr_accessor :correctedCaptiveInfo
  attr_accessor :correctedAccessCode
  attr_accessor :correctedAccessCodeRequired
  attr_accessor :correctedRequireIDLookup
  attr_accessor :correctedIDCheckConfigurationName
  attr_accessor :correctedRoutingOrder
  attr_accessor :correctedAutoNavigation
  attr_accessor :correctedIDCheckInformationInput
  attr_accessor :resend

  def initialize(previousUserName = nil, previousEmail = nil, previousRoutingOrder = nil, previousSignerName = nil, correctedUserName = nil, correctedSignerName = nil, correctedEmail = nil, correctedCaptiveInfo = nil, correctedAccessCode = nil, correctedAccessCodeRequired = nil, correctedRequireIDLookup = nil, correctedIDCheckConfigurationName = nil, correctedRoutingOrder = nil, correctedAutoNavigation = nil, correctedIDCheckInformationInput = nil, resend = nil)
    @previousUserName = previousUserName
    @previousEmail = previousEmail
    @previousRoutingOrder = previousRoutingOrder
    @previousSignerName = previousSignerName
    @correctedUserName = correctedUserName
    @correctedSignerName = correctedSignerName
    @correctedEmail = correctedEmail
    @correctedCaptiveInfo = correctedCaptiveInfo
    @correctedAccessCode = correctedAccessCode
    @correctedAccessCodeRequired = correctedAccessCodeRequired
    @correctedRequireIDLookup = correctedRequireIDLookup
    @correctedIDCheckConfigurationName = correctedIDCheckConfigurationName
    @correctedRoutingOrder = correctedRoutingOrder
    @correctedAutoNavigation = correctedAutoNavigation
    @correctedIDCheckInformationInput = correctedIDCheckInformationInput
    @resend = resend
  end
end

# {http://www.docusign.net/API/3.0}RecipientCorrectionCorrectedCaptiveInfo
#   clientUserId - SOAP::SOAPString
class RecipientCorrectionCorrectedCaptiveInfo
  attr_accessor :clientUserId

  def initialize(clientUserId = nil)
    @clientUserId = clientUserId
  end
end

# {http://www.docusign.net/API/3.0}CorrectionStatus
#   envelopeSettingsCorrectionStatus - Docusign::EnvelopeSettings
#   recipientCorrectionStatuses - Docusign::ArrayOfRecipientCorrectionStatus
class CorrectionStatus
  attr_accessor :envelopeSettingsCorrectionStatus
  attr_accessor :recipientCorrectionStatuses

  def initialize(envelopeSettingsCorrectionStatus = nil, recipientCorrectionStatuses = nil)
    @envelopeSettingsCorrectionStatus = envelopeSettingsCorrectionStatus
    @recipientCorrectionStatuses = recipientCorrectionStatuses
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfRecipientCorrectionStatus
class ArrayOfRecipientCorrectionStatus < ::Array
end

# {http://www.docusign.net/API/3.0}RecipientCorrectionStatus
#   correctionSucceeded - SOAP::SOAPBoolean
#   recipientCorrection - Docusign::RecipientCorrection
#   recipientStatus - Docusign::RecipientStatus
class RecipientCorrectionStatus
  attr_accessor :correctionSucceeded
  attr_accessor :recipientCorrection
  attr_accessor :recipientStatus

  def initialize(correctionSucceeded = nil, recipientCorrection = nil, recipientStatus = nil)
    @correctionSucceeded = correctionSucceeded
    @recipientCorrection = recipientCorrection
    @recipientStatus = recipientStatus
  end
end

# {http://www.docusign.net/API/3.0}EnvelopePDF
#   envelopeID - SOAP::SOAPString
#   pDFBytes - SOAP::SOAPBase64
class EnvelopePDF
  attr_accessor :envelopeID
  attr_accessor :pDFBytes

  def initialize(envelopeID = nil, pDFBytes = nil)
    @envelopeID = envelopeID
    @pDFBytes = pDFBytes
  end
end

# {http://www.docusign.net/API/3.0}DocumentPDFs
#   envelopeId - SOAP::SOAPString
#   documentPDF - Docusign::DocumentPDF
class DocumentPDFs
  attr_accessor :envelopeId
  attr_accessor :documentPDF

  def initialize(envelopeId = nil, documentPDF = [])
    @envelopeId = envelopeId
    @documentPDF = documentPDF
  end
end

# {http://www.docusign.net/API/3.0}DocumentPDF
#   name - SOAP::SOAPString
#   pDFBytes - SOAP::SOAPBase64
#   documentID - SOAP::SOAPPositiveInteger
#   documentType - Docusign::DocumentType
class DocumentPDF
  attr_accessor :name
  attr_accessor :pDFBytes
  attr_accessor :documentID
  attr_accessor :documentType

  def initialize(name = nil, pDFBytes = nil, documentID = nil, documentType = nil)
    @name = name
    @pDFBytes = pDFBytes
    @documentID = documentID
    @documentType = documentType
  end
end

# {http://www.docusign.net/API/3.0}EnvelopeStatusFilter
#   userInfo - Docusign::UserInfo
#   accountId - SOAP::SOAPString
#   beginDateTime - Docusign::EnvelopeStatusFilterBeginDateTime
#   endDateTime - SOAP::SOAPDateTime
#   statuses - Docusign::ArrayOfEnvelopeStatusCode
#   envelopeIds - Docusign::ArrayOfString2
#   startAtIndex - SOAP::SOAPNonNegativeInteger
#   aCStatus - Docusign::EnvelopeACStatusCode
class EnvelopeStatusFilter
  attr_accessor :userInfo
  attr_accessor :accountId
  attr_accessor :beginDateTime
  attr_accessor :endDateTime
  attr_accessor :statuses
  attr_accessor :envelopeIds
  attr_accessor :startAtIndex
  attr_accessor :aCStatus

  def initialize(userInfo = nil, accountId = nil, beginDateTime = nil, endDateTime = nil, statuses = nil, envelopeIds = nil, startAtIndex = nil, aCStatus = nil)
    @userInfo = userInfo
    @accountId = accountId
    @beginDateTime = beginDateTime
    @endDateTime = endDateTime
    @statuses = statuses
    @envelopeIds = envelopeIds
    @startAtIndex = startAtIndex
    @aCStatus = aCStatus
  end
end

# {http://www.docusign.net/API/3.0}UserInfo
#   userName - SOAP::SOAPString
#   email - SOAP::SOAPString
class UserInfo
  attr_accessor :userName
  attr_accessor :email

  def initialize(userName = nil, email = nil)
    @userName = userName
    @email = email
  end
end

# {http://www.docusign.net/API/3.0}EnvelopeStatusFilterBeginDateTime
#   xmlattr_statusQualifier - SOAP::SOAPString
class EnvelopeStatusFilterBeginDateTime < ::String
  AttrStatusQualifier = XSD::QName.new(nil, "statusQualifier")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_statusQualifier
    __xmlattr[AttrStatusQualifier]
  end

  def xmlattr_statusQualifier=(value)
    __xmlattr[AttrStatusQualifier] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfEnvelopeStatusCode
class ArrayOfEnvelopeStatusCode < ::Array
end

# {http://www.docusign.net/API/3.0}ArrayOfString2
class ArrayOfString2 < ::Array
end

# {http://www.docusign.net/API/3.0}FilteredEnvelopeStatusChanges
#   resultSetSize - SOAP::SOAPInt
#   envelopeStatusChanges - Docusign::ArrayOfEnvelopeStatusChange
class FilteredEnvelopeStatusChanges
  attr_accessor :resultSetSize
  attr_accessor :envelopeStatusChanges

  def initialize(resultSetSize = nil, envelopeStatusChanges = nil)
    @resultSetSize = resultSetSize
    @envelopeStatusChanges = envelopeStatusChanges
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfEnvelopeStatusChange
class ArrayOfEnvelopeStatusChange < ::Array
end

# {http://www.docusign.net/API/3.0}EnvelopeStatusChange
#   envelopeID - SOAP::SOAPString
#   status - Docusign::EnvelopeStatusCode
#   statusChanged - SOAP::SOAPDateTime
class EnvelopeStatusChange
  attr_accessor :envelopeID
  attr_accessor :status
  attr_accessor :statusChanged

  def initialize(envelopeID = nil, status = nil, statusChanged = nil)
    @envelopeID = envelopeID
    @status = status
    @statusChanged = statusChanged
  end
end

# {http://www.docusign.net/API/3.0}EnvelopeStatusChangeFilter
#   accountId - SOAP::SOAPString
#   userInfo - Docusign::UserInfo
#   statusChangedSince - SOAP::SOAPDateTime
#   statuses - Docusign::ArrayOfEnvelopeStatusCode
class EnvelopeStatusChangeFilter
  attr_accessor :accountId
  attr_accessor :userInfo
  attr_accessor :statusChangedSince
  attr_accessor :statuses

  def initialize(accountId = nil, userInfo = nil, statusChangedSince = nil, statuses = nil)
    @accountId = accountId
    @userInfo = userInfo
    @statusChangedSince = statusChangedSince
    @statuses = statuses
  end
end

# {http://www.docusign.net/API/3.0}FilteredEnvelopeStatuses
#   resultSetSize - SOAP::SOAPInt
#   envelopeStatusFilter - Docusign::EnvelopeStatusFilter
#   envelopeStatuses - Docusign::ArrayOfEnvelopeStatus
class FilteredEnvelopeStatuses
  attr_accessor :resultSetSize
  attr_accessor :envelopeStatusFilter
  attr_accessor :envelopeStatuses

  def initialize(resultSetSize = nil, envelopeStatusFilter = nil, envelopeStatuses = nil)
    @resultSetSize = resultSetSize
    @envelopeStatusFilter = envelopeStatusFilter
    @envelopeStatuses = envelopeStatuses
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfEnvelopeStatus
class ArrayOfEnvelopeStatus < ::Array
end

# {http://www.docusign.net/API/3.0}RecipientEsignList
#   accountId - SOAP::SOAPString
#   recipientEsign - Docusign::ArrayOfRecipientEsign
class RecipientEsignList
  attr_accessor :accountId
  attr_accessor :recipientEsign

  def initialize(accountId = nil, recipientEsign = nil)
    @accountId = accountId
    @recipientEsign = recipientEsign
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfRecipientEsign
class ArrayOfRecipientEsign < ::Array
end

# {http://www.docusign.net/API/3.0}RecipientEsign
#   userName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   esign - SOAP::SOAPBoolean
#   reservedRecipientEmail - SOAP::SOAPBoolean
#   reservedRecipientNames - SOAP::SOAPString
class RecipientEsign
  attr_accessor :userName
  attr_accessor :email
  attr_accessor :esign
  attr_accessor :reservedRecipientEmail
  attr_accessor :reservedRecipientNames

  def initialize(userName = nil, email = nil, esign = nil, reservedRecipientEmail = nil, reservedRecipientNames = nil)
    @userName = userName
    @email = email
    @esign = esign
    @reservedRecipientEmail = reservedRecipientEmail
    @reservedRecipientNames = reservedRecipientNames
  end
end

# {http://www.docusign.net/API/3.0}RecipientList
#   reservedRecipientEmail - SOAP::SOAPBoolean
#   multipleUsers - SOAP::SOAPBoolean
#   recipientName - Docusign::ArrayOfString3
class RecipientList
  attr_accessor :reservedRecipientEmail
  attr_accessor :multipleUsers
  attr_accessor :recipientName

  def initialize(reservedRecipientEmail = nil, multipleUsers = nil, recipientName = nil)
    @reservedRecipientEmail = reservedRecipientEmail
    @multipleUsers = multipleUsers
    @recipientName = recipientName
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfString3
class ArrayOfString3 < ::Array
end

# {http://www.docusign.net/API/3.0}VoidEnvelopeStatus
#   voidSuccess - SOAP::SOAPBoolean
class VoidEnvelopeStatus
  attr_accessor :voidSuccess

  def initialize(voidSuccess = nil)
    @voidSuccess = voidSuccess
  end
end

# {http://www.docusign.net/API/3.0}RequestRecipientTokenAuthenticationAssertion
#   assertionID - SOAP::SOAPString
#   authenticationInstant - SOAP::SOAPDateTime
#   authenticationMethod - Docusign::RequestRecipientTokenAuthenticationAssertionAuthenticationMethod
#   securityDomain - SOAP::SOAPString
class RequestRecipientTokenAuthenticationAssertion
  attr_accessor :assertionID
  attr_accessor :authenticationInstant
  attr_accessor :authenticationMethod
  attr_accessor :securityDomain

  def initialize(assertionID = nil, authenticationInstant = nil, authenticationMethod = nil, securityDomain = nil)
    @assertionID = assertionID
    @authenticationInstant = authenticationInstant
    @authenticationMethod = authenticationMethod
    @securityDomain = securityDomain
  end
end

# {http://www.docusign.net/API/3.0}RequestRecipientTokenClientURLs
#   onSigningComplete - SOAP::SOAPString
#   onViewingComplete - SOAP::SOAPString
#   onCancel - SOAP::SOAPString
#   onDecline - SOAP::SOAPString
#   onSessionTimeout - SOAP::SOAPString
#   onTTLExpired - SOAP::SOAPString
#   onException - SOAP::SOAPString
#   onAccessCodeFailed - SOAP::SOAPString
#   onIdCheckFailed - SOAP::SOAPString
#   onFaxPending - SOAP::SOAPString
#   generateSignedDocumentAsynch - SOAP::SOAPBoolean
class RequestRecipientTokenClientURLs
  attr_accessor :onSigningComplete
  attr_accessor :onViewingComplete
  attr_accessor :onCancel
  attr_accessor :onDecline
  attr_accessor :onSessionTimeout
  attr_accessor :onTTLExpired
  attr_accessor :onException
  attr_accessor :onAccessCodeFailed
  attr_accessor :onIdCheckFailed
  attr_accessor :onFaxPending
  attr_accessor :generateSignedDocumentAsynch

  def initialize(onSigningComplete = nil, onViewingComplete = nil, onCancel = nil, onDecline = nil, onSessionTimeout = nil, onTTLExpired = nil, onException = nil, onAccessCodeFailed = nil, onIdCheckFailed = nil, onFaxPending = nil, generateSignedDocumentAsynch = nil)
    @onSigningComplete = onSigningComplete
    @onViewingComplete = onViewingComplete
    @onCancel = onCancel
    @onDecline = onDecline
    @onSessionTimeout = onSessionTimeout
    @onTTLExpired = onTTLExpired
    @onException = onException
    @onAccessCodeFailed = onAccessCodeFailed
    @onIdCheckFailed = onIdCheckFailed
    @onFaxPending = onFaxPending
    @generateSignedDocumentAsynch = generateSignedDocumentAsynch
  end
end

# {http://www.docusign.net/API/3.0}TransferEnvelopeStatus
#   transferEnvelopeSuccess - SOAP::SOAPBoolean
class TransferEnvelopeStatus
  attr_accessor :transferEnvelopeSuccess

  def initialize(transferEnvelopeSuccess = nil)
    @transferEnvelopeSuccess = transferEnvelopeSuccess
  end
end

# {http://www.docusign.net/API/3.0}AccountMembershipFeaturesList
#   email - SOAP::SOAPString
#   userName - SOAP::SOAPString
#   enabledFeaturesSet - Docusign::ArrayOfString4
class AccountMembershipFeaturesList
  attr_accessor :email
  attr_accessor :userName
  attr_accessor :enabledFeaturesSet

  def initialize(email = nil, userName = nil, enabledFeaturesSet = nil)
    @email = email
    @userName = userName
    @enabledFeaturesSet = enabledFeaturesSet
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfString4
class ArrayOfString4 < ::Array
end

# {http://www.docusign.net/API/3.0}AccountSettingsList
class AccountSettingsList < ::Array
end

# {http://www.docusign.net/API/3.0}AccountSetting
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
#   type - SOAP::SOAPString
#   testSetting - SOAP::SOAPString
class AccountSetting
  attr_accessor :name
  attr_accessor :value
  attr_accessor :type
  attr_accessor :testSetting

  def initialize(name = nil, value = nil, type = nil, testSetting = nil)
    @name = name
    @value = value
    @type = type
    @testSetting = testSetting
  end
end

# {http://www.docusign.net/API/3.0}AuthoritativeCopyExportStatus
#   authoritativeCopyExportSuccess - SOAP::SOAPBoolean
#   envelopeId - SOAP::SOAPString
#   exportKey - SOAP::SOAPString
class AuthoritativeCopyExportStatus
  attr_accessor :authoritativeCopyExportSuccess
  attr_accessor :envelopeId
  attr_accessor :exportKey

  def initialize(authoritativeCopyExportSuccess = nil, envelopeId = nil, exportKey = nil)
    @authoritativeCopyExportSuccess = authoritativeCopyExportSuccess
    @envelopeId = envelopeId
    @exportKey = exportKey
  end
end

# {http://www.docusign.net/API/3.0}AuthoritativeCopyExportDocuments
#   envelopeId - SOAP::SOAPString
#   transactionId - SOAP::SOAPString
#   count - SOAP::SOAPInt
#   documentPDF - Docusign::DocumentPDF
class AuthoritativeCopyExportDocuments
  attr_accessor :envelopeId
  attr_accessor :transactionId
  attr_accessor :count
  attr_accessor :documentPDF

  def initialize(envelopeId = nil, transactionId = nil, count = nil, documentPDF = [])
    @envelopeId = envelopeId
    @transactionId = transactionId
    @count = count
    @documentPDF = documentPDF
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfTemplateReference
class ArrayOfTemplateReference < ::Array
end

# {http://www.docusign.net/API/3.0}TemplateReference
#   templateLocation - Docusign::TemplateLocationCode
#   template - SOAP::SOAPString
#   document - Docusign::Document
#   roleAssignments - Docusign::ArrayOfTemplateReferenceRoleAssignment
#   fieldData - Docusign::TemplateReferenceFieldData
#   additionalTabs - Docusign::ArrayOfTab
#   sequence - SOAP::SOAPPositiveInteger
#   templateAttachments - Docusign::ArrayOfAttachment
class TemplateReference
  attr_accessor :templateLocation
  attr_accessor :template
  attr_accessor :document
  attr_accessor :roleAssignments
  attr_accessor :fieldData
  attr_accessor :additionalTabs
  attr_accessor :sequence
  attr_accessor :templateAttachments

  def initialize(templateLocation = nil, template = nil, document = nil, roleAssignments = nil, fieldData = nil, additionalTabs = nil, sequence = nil, templateAttachments = nil)
    @templateLocation = templateLocation
    @template = template
    @document = document
    @roleAssignments = roleAssignments
    @fieldData = fieldData
    @additionalTabs = additionalTabs
    @sequence = sequence
    @templateAttachments = templateAttachments
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfTemplateReferenceRoleAssignment
class ArrayOfTemplateReferenceRoleAssignment < ::Array
end

# {http://www.docusign.net/API/3.0}TemplateReferenceRoleAssignment
#   roleName - SOAP::SOAPString
#   recipientID - SOAP::SOAPPositiveInteger
class TemplateReferenceRoleAssignment
  attr_accessor :roleName
  attr_accessor :recipientID

  def initialize(roleName = nil, recipientID = nil)
    @roleName = roleName
    @recipientID = recipientID
  end
end

# {http://www.docusign.net/API/3.0}TemplateReferenceFieldData
#   dataValues - Docusign::ArrayOfTemplateReferenceFieldDataDataValue
class TemplateReferenceFieldData
  attr_accessor :dataValues

  def initialize(dataValues = nil)
    @dataValues = dataValues
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfTemplateReferenceFieldDataDataValue
class ArrayOfTemplateReferenceFieldDataDataValue < ::Array
end

# {http://www.docusign.net/API/3.0}TemplateReferenceFieldDataDataValue
#   tabLabel - SOAP::SOAPString
#   value - SOAP::SOAPString
class TemplateReferenceFieldDataDataValue
  attr_accessor :tabLabel
  attr_accessor :value

  def initialize(tabLabel = nil, value = nil)
    @tabLabel = tabLabel
    @value = value
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfRecipient1
class ArrayOfRecipient1 < ::Array
end

# {http://www.docusign.net/API/3.0}EnvelopeInformation
#   transactionID - SOAP::SOAPString
#   asynchronous - SOAP::SOAPBoolean
#   accountId - SOAP::SOAPString
#   emailBlurb - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   signingLocation - Docusign::SigningLocationCode
#   customFields - Docusign::ArrayOfCustomField
#   vaultingOptions - Docusign::VaultingOptions
#   autoNavigation - SOAP::SOAPBoolean
#   envelopeIdStamping - SOAP::SOAPBoolean
#   authoritativeCopy - SOAP::SOAPBoolean
#   notification - Docusign::Notification
#   enforceSignerVisibility - SOAP::SOAPBoolean
#   enableWetSign - SOAP::SOAPBoolean
#   allowRecipientRecursion - SOAP::SOAPBoolean
#   allowMarkup - SOAP::SOAPBoolean
#   eventNotification - Docusign::EventNotification
class EnvelopeInformation
  attr_accessor :transactionID
  attr_accessor :asynchronous
  attr_accessor :accountId
  attr_accessor :emailBlurb
  attr_accessor :subject
  attr_accessor :signingLocation
  attr_accessor :customFields
  attr_accessor :vaultingOptions
  attr_accessor :autoNavigation
  attr_accessor :envelopeIdStamping
  attr_accessor :authoritativeCopy
  attr_accessor :notification
  attr_accessor :enforceSignerVisibility
  attr_accessor :enableWetSign
  attr_accessor :allowRecipientRecursion
  attr_accessor :allowMarkup
  attr_accessor :eventNotification

  def initialize(transactionID = nil, asynchronous = nil, accountId = nil, emailBlurb = nil, subject = nil, signingLocation = nil, customFields = nil, vaultingOptions = nil, autoNavigation = nil, envelopeIdStamping = nil, authoritativeCopy = nil, notification = nil, enforceSignerVisibility = nil, enableWetSign = nil, allowRecipientRecursion = nil, allowMarkup = nil, eventNotification = nil)
    @transactionID = transactionID
    @asynchronous = asynchronous
    @accountId = accountId
    @emailBlurb = emailBlurb
    @subject = subject
    @signingLocation = signingLocation
    @customFields = customFields
    @vaultingOptions = vaultingOptions
    @autoNavigation = autoNavigation
    @envelopeIdStamping = envelopeIdStamping
    @authoritativeCopy = authoritativeCopy
    @notification = notification
    @enforceSignerVisibility = enforceSignerVisibility
    @enableWetSign = enableWetSign
    @allowRecipientRecursion = allowRecipientRecursion
    @allowMarkup = allowMarkup
    @eventNotification = eventNotification
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfCompositeTemplate
class ArrayOfCompositeTemplate < ::Array
end

# {http://www.docusign.net/API/3.0}CompositeTemplate
#   serverTemplates - Docusign::ArrayOfServerTemplate
#   inlineTemplates - Docusign::ArrayOfInlineTemplate
#   pDFMetaDataTemplate - Docusign::PDFMetaDataTemplate
#   document - Docusign::Document
class CompositeTemplate
  attr_accessor :serverTemplates
  attr_accessor :inlineTemplates
  attr_accessor :pDFMetaDataTemplate
  attr_accessor :document

  def initialize(serverTemplates = nil, inlineTemplates = nil, pDFMetaDataTemplate = nil, document = nil)
    @serverTemplates = serverTemplates
    @inlineTemplates = inlineTemplates
    @pDFMetaDataTemplate = pDFMetaDataTemplate
    @document = document
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfServerTemplate
class ArrayOfServerTemplate < ::Array
end

# {http://www.docusign.net/API/3.0}ServerTemplate
#   sequence - SOAP::SOAPPositiveInteger
#   templateID - SOAP::SOAPString
class ServerTemplate
  attr_accessor :sequence
  attr_accessor :templateID

  def initialize(sequence = nil, templateID = nil)
    @sequence = sequence
    @templateID = templateID
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfInlineTemplate
class ArrayOfInlineTemplate < ::Array
end

# {http://www.docusign.net/API/3.0}InlineTemplate
#   sequence - SOAP::SOAPPositiveInteger
#   envelope - Docusign::Envelope
class InlineTemplate
  attr_accessor :sequence
  attr_accessor :envelope

  def initialize(sequence = nil, envelope = nil)
    @sequence = sequence
    @envelope = envelope
  end
end

# {http://www.docusign.net/API/3.0}PDFMetaDataTemplate
#   sequence - SOAP::SOAPPositiveInteger
class PDFMetaDataTemplate
  attr_accessor :sequence

  def initialize(sequence = nil)
    @sequence = sequence
  end
end

# {http://www.docusign.net/API/3.0}DocuSignEnvelopeInformation
#   envelopeStatus - Docusign::EnvelopeStatus
#   documentPDFs - Docusign::ArrayOfDocumentPDF
class DocuSignEnvelopeInformation
  attr_accessor :envelopeStatus
  attr_accessor :documentPDFs

  def initialize(envelopeStatus = nil, documentPDFs = nil)
    @envelopeStatus = envelopeStatus
    @documentPDFs = documentPDFs
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfDocumentPDF
class ArrayOfDocumentPDF < ::Array
end

# {http://www.docusign.net/API/3.0}PurgeDocumentStatus
#   purgeDocumentSuccess - SOAP::SOAPBoolean
#   purgeDocumentError - SOAP::SOAPString
class PurgeDocumentStatus
  attr_accessor :purgeDocumentSuccess
  attr_accessor :purgeDocumentError

  def initialize(purgeDocumentSuccess = nil, purgeDocumentError = nil)
    @purgeDocumentSuccess = purgeDocumentSuccess
    @purgeDocumentError = purgeDocumentError
  end
end

# {http://www.docusign.net/API/3.0}EnvelopeTemplate
#   envelopeTemplateDefinition - Docusign::EnvelopeTemplateDefinition
#   envelope - Docusign::Envelope
class EnvelopeTemplate
  attr_accessor :envelopeTemplateDefinition
  attr_accessor :envelope

  def initialize(envelopeTemplateDefinition = nil, envelope = nil)
    @envelopeTemplateDefinition = envelopeTemplateDefinition
    @envelope = envelope
  end
end

# {http://www.docusign.net/API/3.0}EnvelopeTemplateDefinition
#   templateID - SOAP::SOAPString
#   name - SOAP::SOAPString
#   shared - SOAP::SOAPBoolean
#   templatePassword - SOAP::SOAPString
#   templateDescription - SOAP::SOAPString
#   lastModified - SOAP::SOAPDateTime
#   pageCount - SOAP::SOAPInt
class EnvelopeTemplateDefinition
  attr_accessor :templateID
  attr_accessor :name
  attr_accessor :shared
  attr_accessor :templatePassword
  attr_accessor :templateDescription
  attr_accessor :lastModified
  attr_accessor :pageCount

  def initialize(templateID = nil, name = nil, shared = nil, templatePassword = nil, templateDescription = nil, lastModified = nil, pageCount = nil)
    @templateID = templateID
    @name = name
    @shared = shared
    @templatePassword = templatePassword
    @templateDescription = templateDescription
    @lastModified = lastModified
    @pageCount = pageCount
  end
end

# {http://www.docusign.net/API/3.0}SaveTemplateResult
#   success - SOAP::SOAPBoolean
#   templateID - SOAP::SOAPString
#   name - SOAP::SOAPString
class SaveTemplateResult
  attr_accessor :success
  attr_accessor :templateID
  attr_accessor :name

  def initialize(success = nil, templateID = nil, name = nil)
    @success = success
    @templateID = templateID
    @name = name
  end
end

# {http://www.docusign.net/API/3.0}EnvelopeTemplates
class EnvelopeTemplates < ::Array
end

# {http://www.docusign.net/API/3.0}ArrayOfAddressBookItem
class ArrayOfAddressBookItem < ::Array
end

# {http://www.docusign.net/API/3.0}AddressBookItem
#   addressBookID - SOAP::SOAPString
#   email - SOAP::SOAPString
#   userName - SOAP::SOAPString
#   accountName - SOAP::SOAPString
#   shared - SOAP::SOAPBoolean
#   created - SOAP::SOAPDateTime
#   owner - SOAP::SOAPBoolean
#   phone1 - Docusign::AddressBookPhoneNumber
#   phone2 - Docusign::AddressBookPhoneNumber
#   phone3 - Docusign::AddressBookPhoneNumber
#   phone4 - Docusign::AddressBookPhoneNumber
class AddressBookItem
  attr_accessor :addressBookID
  attr_accessor :email
  attr_accessor :userName
  attr_accessor :accountName
  attr_accessor :shared
  attr_accessor :created
  attr_accessor :owner
  attr_accessor :phone1
  attr_accessor :phone2
  attr_accessor :phone3
  attr_accessor :phone4

  def initialize(addressBookID = nil, email = nil, userName = nil, accountName = nil, shared = nil, created = nil, owner = nil, phone1 = nil, phone2 = nil, phone3 = nil, phone4 = nil)
    @addressBookID = addressBookID
    @email = email
    @userName = userName
    @accountName = accountName
    @shared = shared
    @created = created
    @owner = owner
    @phone1 = phone1
    @phone2 = phone2
    @phone3 = phone3
    @phone4 = phone4
  end
end

# {http://www.docusign.net/API/3.0}AddressBookPhoneNumber
#   phoneNumber - SOAP::SOAPString
#   designation - Docusign::PhoneNumberDesignation
class AddressBookPhoneNumber
  attr_accessor :phoneNumber
  attr_accessor :designation

  def initialize(phoneNumber = nil, designation = nil)
    @phoneNumber = phoneNumber
    @designation = designation
  end
end

# {http://www.docusign.net/API/3.0}UpdateAddressBookResult
#   success - SOAP::SOAPBoolean
#   addressBookItems - Docusign::ArrayOfAddressBookItem1
class UpdateAddressBookResult
  attr_accessor :success
  attr_accessor :addressBookItems

  def initialize(success = nil, addressBookItems = nil)
    @success = success
    @addressBookItems = addressBookItems
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfAddressBookItem1
class ArrayOfAddressBookItem1 < ::Array
end

# {http://www.docusign.net/API/3.0}ArrayOfAddressBookRemoveItem
class ArrayOfAddressBookRemoveItem < ::Array
end

# {http://www.docusign.net/API/3.0}AddressBookRemoveItem
#   addressBookID - SOAP::SOAPString
class AddressBookRemoveItem
  attr_accessor :addressBookID

  def initialize(addressBookID = nil)
    @addressBookID = addressBookID
  end
end

# {http://www.docusign.net/API/3.0}SynchEnvelopeStatus
#   envelopeStatus - Docusign::EnvelopeStatusCode
#   envelopeID - SOAP::SOAPString
class SynchEnvelopeStatus
  attr_accessor :envelopeStatus
  attr_accessor :envelopeID

  def initialize(envelopeStatus = nil, envelopeID = nil)
    @envelopeStatus = envelopeStatus
    @envelopeID = envelopeID
  end
end

# {http://www.docusign.net/API/3.0}FolderFilter
#   accountId - SOAP::SOAPString
#   folderOwner - Docusign::UserInfo
#   folderTypeInfo - Docusign::FolderTypeInfo
#   startPosition - SOAP::SOAPInt
#   fromDate - SOAP::SOAPDateTime
#   toDate - SOAP::SOAPDateTime
#   searchText - SOAP::SOAPString
#   status - Docusign::EnvelopeStatusCode
class FolderFilter
  attr_accessor :accountId
  attr_accessor :folderOwner
  attr_accessor :folderTypeInfo
  attr_accessor :startPosition
  attr_accessor :fromDate
  attr_accessor :toDate
  attr_accessor :searchText
  attr_accessor :status

  def initialize(accountId = nil, folderOwner = nil, folderTypeInfo = nil, startPosition = nil, fromDate = nil, toDate = nil, searchText = nil, status = nil)
    @accountId = accountId
    @folderOwner = folderOwner
    @folderTypeInfo = folderTypeInfo
    @startPosition = startPosition
    @fromDate = fromDate
    @toDate = toDate
    @searchText = searchText
    @status = status
  end
end

# {http://www.docusign.net/API/3.0}FolderTypeInfo
#   folderType - Docusign::FolderType
#   folderName - SOAP::SOAPString
class FolderTypeInfo
  attr_accessor :folderType
  attr_accessor :folderName

  def initialize(folderType = nil, folderName = nil)
    @folderType = folderType
    @folderName = folderName
  end
end

# {http://www.docusign.net/API/3.0}FolderResults
#   resultSetSize - SOAP::SOAPInt
#   startPosition - SOAP::SOAPInt
#   endPosition - SOAP::SOAPInt
#   folderTypeInfo - Docusign::FolderTypeInfo
#   folderItems - Docusign::ArrayOfFolderItem
class FolderResults
  attr_accessor :resultSetSize
  attr_accessor :startPosition
  attr_accessor :endPosition
  attr_accessor :folderTypeInfo
  attr_accessor :folderItems

  def initialize(resultSetSize = nil, startPosition = nil, endPosition = nil, folderTypeInfo = nil, folderItems = nil)
    @resultSetSize = resultSetSize
    @startPosition = startPosition
    @endPosition = endPosition
    @folderTypeInfo = folderTypeInfo
    @folderItems = folderItems
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfFolderItem
class ArrayOfFolderItem < ::Array
end

# {http://www.docusign.net/API/3.0}FolderItem
#   envelopeId - SOAP::SOAPString
#   status - Docusign::EnvelopeStatusCode
#   owner - SOAP::SOAPString
#   senderName - SOAP::SOAPString
#   senderEmail - SOAP::SOAPString
#   senderCompany - SOAP::SOAPString
#   recipientStatuses - Docusign::ArrayOfRecipientStatus
#   customFields - Docusign::ArrayOfCustomField
#   created - SOAP::SOAPDateTime
#   sent - SOAP::SOAPDateTime
#   completed - SOAP::SOAPDateTime
#   subject - SOAP::SOAPString
class FolderItem
  attr_accessor :envelopeId
  attr_accessor :status
  attr_accessor :owner
  attr_accessor :senderName
  attr_accessor :senderEmail
  attr_accessor :senderCompany
  attr_accessor :recipientStatuses
  attr_accessor :customFields
  attr_accessor :created
  attr_accessor :sent
  attr_accessor :completed
  attr_accessor :subject

  def initialize(envelopeId = nil, status = nil, owner = nil, senderName = nil, senderEmail = nil, senderCompany = nil, recipientStatuses = nil, customFields = nil, created = nil, sent = nil, completed = nil, subject = nil)
    @envelopeId = envelopeId
    @status = status
    @owner = owner
    @senderName = senderName
    @senderEmail = senderEmail
    @senderCompany = senderCompany
    @recipientStatuses = recipientStatuses
    @customFields = customFields
    @created = created
    @sent = sent
    @completed = completed
    @subject = subject
  end
end

# {http://www.docusign.net/API/3.0}FoldersFilter
#   accountId - SOAP::SOAPString
class FoldersFilter
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/3.0}AvailableFolders
#   folders - Docusign::ArrayOfFolder
class AvailableFolders
  attr_accessor :folders

  def initialize(folders = nil)
    @folders = folders
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfFolder
class ArrayOfFolder < ::Array
end

# {http://www.docusign.net/API/3.0}Folder
#   folderOwner - Docusign::UserInfo
#   folderTypeInfo - Docusign::FolderTypeInfo
class Folder
  attr_accessor :folderOwner
  attr_accessor :folderTypeInfo

  def initialize(folderOwner = nil, folderTypeInfo = nil)
    @folderOwner = folderOwner
    @folderTypeInfo = folderTypeInfo
  end
end

# {http://www.docusign.net/API/3.0}RecipientTypeCode
class RecipientTypeCode < ::String
  Agent = RecipientTypeCode.new("Agent")
  CarbonCopy = RecipientTypeCode.new("CarbonCopy")
  CertifiedDelivery = RecipientTypeCode.new("CertifiedDelivery")
  Editor = RecipientTypeCode.new("Editor")
  InPersonSigner = RecipientTypeCode.new("InPersonSigner")
  Signer = RecipientTypeCode.new("Signer")
end

# {http://www.docusign.net/API/3.0}FontStyleCode
class FontStyleCode < ::String
  BradleyHandITC = FontStyleCode.new("BradleyHandITC")
  DocuSign1 = FontStyleCode.new("DocuSign1")
  DocuSign2 = FontStyleCode.new("DocuSign2")
  DocuSign3 = FontStyleCode.new("DocuSign3")
  DocuSign4 = FontStyleCode.new("DocuSign4")
  DocuSign5 = FontStyleCode.new("DocuSign5")
  DocuSign6 = FontStyleCode.new("DocuSign6")
  DocuSign7 = FontStyleCode.new("DocuSign7")
  DocuSign8 = FontStyleCode.new("DocuSign8")
  Freehand575 = FontStyleCode.new("Freehand575")
  KaufmannBT = FontStyleCode.new("KaufmannBT")
  LuciaBT = FontStyleCode.new("LuciaBT")
  Mistral = FontStyleCode.new("Mistral")
  RageItalic = FontStyleCode.new("RageItalic")
end

# {http://www.docusign.net/API/3.0}DisplayLevelCode
class DisplayLevelCode < ::String
  DoNotDisplay = DisplayLevelCode.new("DoNotDisplay")
  Editable = DisplayLevelCode.new("Editable")
  ReadOnly = DisplayLevelCode.new("ReadOnly")
end

# {http://www.docusign.net/API/3.0}UnitTypeCode
class UnitTypeCode < ::String
  Cms = UnitTypeCode.new("Cms")
  Inches = UnitTypeCode.new("Inches")
  Mms = UnitTypeCode.new("Mms")
  Pixels = UnitTypeCode.new("Pixels")
end

# {http://www.docusign.net/API/3.0}TabTypeCode
class TabTypeCode < ::String
  Company = TabTypeCode.new("Company")
  Custom = TabTypeCode.new("Custom")
  DateSigned = TabTypeCode.new("DateSigned")
  EnvelopeID = TabTypeCode.new("EnvelopeID")
  FullName = TabTypeCode.new("FullName")
  InitialHere = TabTypeCode.new("InitialHere")
  InitialHereOptional = TabTypeCode.new("InitialHereOptional")
  SignHere = TabTypeCode.new("SignHere")
  SignHereOptional = TabTypeCode.new("SignHereOptional")
  SignerAttachment = TabTypeCode.new("SignerAttachment")
  Title = TabTypeCode.new("Title")
end

# {http://www.docusign.net/API/3.0}CustomTabType
class CustomTabType < ::String
  Checkbox = CustomTabType.new("Checkbox")
  Date = CustomTabType.new("Date")
  Email = CustomTabType.new("Email")
  List = CustomTabType.new("List")
  Number = CustomTabType.new("Number")
  Radio = CustomTabType.new("Radio")
  SSN = CustomTabType.new("SSN")
  Text = CustomTabType.new("Text")
  ZIP5 = CustomTabType.new("ZIP5")
  ZIP5DASH4 = CustomTabType.new("ZIP5DASH4")
end

# {http://www.docusign.net/API/3.0}SigningLocationCode
class SigningLocationCode < ::String
  InPerson = SigningLocationCode.new("InPerson")
  Online = SigningLocationCode.new("Online")
end

# {http://www.docusign.net/API/3.0}CustomFieldType
class CustomFieldType < ::String
  List = CustomFieldType.new("List")
  Text = CustomFieldType.new("Text")
end

# {http://www.docusign.net/API/3.0}VaultingModeCode
class VaultingModeCode < ::String
  EODAuthoritativeCopy = VaultingModeCode.new("EODAuthoritativeCopy")
  EODeStore = VaultingModeCode.new("EODeStore")
  None = VaultingModeCode.new("None")
end

# {http://www.docusign.net/API/3.0}EnvelopeEventStatusCode
class EnvelopeEventStatusCode < ::String
  Completed = EnvelopeEventStatusCode.new("Completed")
  Declined = EnvelopeEventStatusCode.new("Declined")
  Delivered = EnvelopeEventStatusCode.new("Delivered")
  Sent = EnvelopeEventStatusCode.new("Sent")
  Voided = EnvelopeEventStatusCode.new("Voided")
end

# {http://www.docusign.net/API/3.0}RecipientStatusCode
class RecipientStatusCode < ::String
  Completed = RecipientStatusCode.new("Completed")
  Created = RecipientStatusCode.new("Created")
  Declined = RecipientStatusCode.new("Declined")
  Delivered = RecipientStatusCode.new("Delivered")
  FaxPending = RecipientStatusCode.new("FaxPending")
  Sent = RecipientStatusCode.new("Sent")
  Signed = RecipientStatusCode.new("Signed")
end

# {http://www.docusign.net/API/3.0}EventStatusCode
class EventStatusCode < ::String
  Failed = EventStatusCode.new("Failed")
  Passed = EventStatusCode.new("Passed")
end

# {http://www.docusign.net/API/3.0}EnvelopeStatusCode
class EnvelopeStatusCode < ::String
  Any = EnvelopeStatusCode.new("Any")
  Completed = EnvelopeStatusCode.new("Completed")
  Created = EnvelopeStatusCode.new("Created")
  Declined = EnvelopeStatusCode.new("Declined")
  Deleted = EnvelopeStatusCode.new("Deleted")
  Delivered = EnvelopeStatusCode.new("Delivered")
  Processing = EnvelopeStatusCode.new("Processing")
  Sent = EnvelopeStatusCode.new("Sent")
  Signed = EnvelopeStatusCode.new("Signed")
  Template = EnvelopeStatusCode.new("Template")
  TimedOut = EnvelopeStatusCode.new("TimedOut")
  Voided = EnvelopeStatusCode.new("Voided")
end

# {http://www.docusign.net/API/3.0}DocumentType
class DocumentType < ::String
  CONTENT = DocumentType.new("CONTENT")
  SUMMARY = DocumentType.new("SUMMARY")
end

# {http://www.docusign.net/API/3.0}EnvelopeACStatusCode
class EnvelopeACStatusCode < ::String
  AuthoritativeCopy = EnvelopeACStatusCode.new("AuthoritativeCopy")
  AuthoritativeCopyExportPending = EnvelopeACStatusCode.new("AuthoritativeCopyExportPending")
  AuthoritativeCopyExported = EnvelopeACStatusCode.new("AuthoritativeCopyExported")
  DepositFailed = EnvelopeACStatusCode.new("DepositFailed")
  DepositPending = EnvelopeACStatusCode.new("DepositPending")
  Deposited = EnvelopeACStatusCode.new("Deposited")
  DepositedEO = EnvelopeACStatusCode.new("DepositedEO")
  Original = EnvelopeACStatusCode.new("Original")
  Transferred = EnvelopeACStatusCode.new("Transferred")
  Unknown = EnvelopeACStatusCode.new("Unknown")
end

# {http://www.docusign.net/API/3.0}RequestRecipientTokenAuthenticationAssertionAuthenticationMethod
class RequestRecipientTokenAuthenticationAssertionAuthenticationMethod < ::String
  Biometric = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("Biometric")
  Email = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("Email")
  HTTPBasicAuth = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("HTTPBasicAuth")
  Kerberos = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("Kerberos")
  KnowledgeBasedAuth = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("KnowledgeBasedAuth")
  None = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("None")
  PaperDocuments = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("PaperDocuments")
  Password = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("Password")
  RSASecureID = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("RSASecureID")
  SSLMutualAuth = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("SSLMutualAuth")
  SingleSignOn_CASiteminder = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("SingleSignOn_CASiteminder")
  SingleSignOn_InfoCard = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("SingleSignOn_InfoCard")
  SingleSignOn_MicrosoftActiveDirectory = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("SingleSignOn_MicrosoftActiveDirectory")
  SingleSignOn_Other = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("SingleSignOn_Other")
  SingleSignOn_Passport = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("SingleSignOn_Passport")
  SingleSignOn_SAML = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("SingleSignOn_SAML")
  Smartcard = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("Smartcard")
  X509Certificate = RequestRecipientTokenAuthenticationAssertionAuthenticationMethod.new("X509Certificate")
end

# {http://www.docusign.net/API/3.0}TemplateLocationCode
class TemplateLocationCode < ::String
  PDFMetaData = TemplateLocationCode.new("PDFMetaData")
  SOAP = TemplateLocationCode.new("SOAP")
  Server = TemplateLocationCode.new("Server")
end

# {http://www.docusign.net/API/3.0}PhoneNumberDesignation
class PhoneNumberDesignation < ::String
  Home = PhoneNumberDesignation.new("Home")
  Mobile = PhoneNumberDesignation.new("Mobile")
  Other = PhoneNumberDesignation.new("Other")
  Work = PhoneNumberDesignation.new("Work")
end

# {http://www.docusign.net/API/3.0}FolderType
class FolderType < ::String
  Draft = FolderType.new("Draft")
  Inbox = FolderType.new("Inbox")
  Normal = FolderType.new("Normal")
  RecycleBin = FolderType.new("RecycleBin")
  SentItems = FolderType.new("SentItems")
end

# {http://www.docusign.net/API/3.0}CreateEnvelope
#   envelope - Docusign::Envelope
class CreateEnvelope
  attr_accessor :envelope

  def initialize(envelope = nil)
    @envelope = envelope
  end
end

# {http://www.docusign.net/API/3.0}CreateEnvelopeResponse
#   createEnvelopeResult - Docusign::EnvelopeStatus
class CreateEnvelopeResponse
  attr_accessor :createEnvelopeResult

  def initialize(createEnvelopeResult = nil)
    @createEnvelopeResult = createEnvelopeResult
  end
end

# {http://www.docusign.net/API/3.0}CreateAndSendEnvelope
#   envelope - Docusign::Envelope
class CreateAndSendEnvelope
  attr_accessor :envelope

  def initialize(envelope = nil)
    @envelope = envelope
  end
end

# {http://www.docusign.net/API/3.0}CreateAndSendEnvelopeResponse
#   createAndSendEnvelopeResult - Docusign::EnvelopeStatus
class CreateAndSendEnvelopeResponse
  attr_accessor :createAndSendEnvelopeResult

  def initialize(createAndSendEnvelopeResult = nil)
    @createAndSendEnvelopeResult = createAndSendEnvelopeResult
  end
end

# {http://www.docusign.net/API/3.0}SendEnvelope
#   envelopeId - SOAP::SOAPString
#   accountId - SOAP::SOAPString
class SendEnvelope
  attr_accessor :envelopeId
  attr_accessor :accountId

  def initialize(envelopeId = nil, accountId = nil)
    @envelopeId = envelopeId
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/3.0}SendEnvelopeResponse
#   sendEnvelopeResult - Docusign::EnvelopeStatus
class SendEnvelopeResponse
  attr_accessor :sendEnvelopeResult

  def initialize(sendEnvelopeResult = nil)
    @sendEnvelopeResult = sendEnvelopeResult
  end
end

# {http://www.docusign.net/API/3.0}CorrectAndResendEnvelope
#   correction - Docusign::Correction
class CorrectAndResendEnvelope
  attr_accessor :correction

  def initialize(correction = nil)
    @correction = correction
  end
end

# {http://www.docusign.net/API/3.0}CorrectAndResendEnvelopeResponse
#   correctAndResendEnvelopeResult - Docusign::CorrectionStatus
class CorrectAndResendEnvelopeResponse
  attr_accessor :correctAndResendEnvelopeResult

  def initialize(correctAndResendEnvelopeResult = nil)
    @correctAndResendEnvelopeResult = correctAndResendEnvelopeResult
  end
end

# {http://www.docusign.net/API/3.0}RequestPDFNoWaterMark
#   envelopeID - SOAP::SOAPString
class RequestPDFNoWaterMark
  attr_accessor :envelopeID

  def initialize(envelopeID = nil)
    @envelopeID = envelopeID
  end
end

# {http://www.docusign.net/API/3.0}RequestPDFNoWaterMarkResponse
#   requestPDFNoWaterMarkResult - Docusign::EnvelopePDF
class RequestPDFNoWaterMarkResponse
  attr_accessor :requestPDFNoWaterMarkResult

  def initialize(requestPDFNoWaterMarkResult = nil)
    @requestPDFNoWaterMarkResult = requestPDFNoWaterMarkResult
  end
end

# {http://www.docusign.net/API/3.0}RequestPDF
#   envelopeID - SOAP::SOAPString
class RequestPDF
  attr_accessor :envelopeID

  def initialize(envelopeID = nil)
    @envelopeID = envelopeID
  end
end

# {http://www.docusign.net/API/3.0}RequestPDFResponse
#   requestPDFResult - Docusign::EnvelopePDF
class RequestPDFResponse
  attr_accessor :requestPDFResult

  def initialize(requestPDFResult = nil)
    @requestPDFResult = requestPDFResult
  end
end

# {http://www.docusign.net/API/3.0}RequestPDFWithCert
#   envelopeID - SOAP::SOAPString
#   addWaterMark - SOAP::SOAPBoolean
class RequestPDFWithCert
  attr_accessor :envelopeID
  attr_accessor :addWaterMark

  def initialize(envelopeID = nil, addWaterMark = nil)
    @envelopeID = envelopeID
    @addWaterMark = addWaterMark
  end
end

# {http://www.docusign.net/API/3.0}RequestPDFWithCertResponse
#   requestPDFWithCertResult - Docusign::EnvelopePDF
class RequestPDFWithCertResponse
  attr_accessor :requestPDFWithCertResult

  def initialize(requestPDFWithCertResult = nil)
    @requestPDFWithCertResult = requestPDFWithCertResult
  end
end

# {http://www.docusign.net/API/3.0}RequestDocumentPDFs
#   envelopeID - SOAP::SOAPString
class RequestDocumentPDFs
  attr_accessor :envelopeID

  def initialize(envelopeID = nil)
    @envelopeID = envelopeID
  end
end

# {http://www.docusign.net/API/3.0}RequestDocumentPDFsResponse
#   requestDocumentPDFsResult - Docusign::DocumentPDFs
class RequestDocumentPDFsResponse
  attr_accessor :requestDocumentPDFsResult

  def initialize(requestDocumentPDFsResult = nil)
    @requestDocumentPDFsResult = requestDocumentPDFsResult
  end
end

# {http://www.docusign.net/API/3.0}RequestDocumentPDFsEx
#   envelopeID - SOAP::SOAPString
class RequestDocumentPDFsEx
  attr_accessor :envelopeID

  def initialize(envelopeID = nil)
    @envelopeID = envelopeID
  end
end

# {http://www.docusign.net/API/3.0}RequestDocumentPDFsExResponse
#   requestDocumentPDFsExResult - Docusign::DocumentPDFs
class RequestDocumentPDFsExResponse
  attr_accessor :requestDocumentPDFsExResult

  def initialize(requestDocumentPDFsExResult = nil)
    @requestDocumentPDFsExResult = requestDocumentPDFsExResult
  end
end

# {http://www.docusign.net/API/3.0}RequestDocumentPDFsRecipientsView
#   envelopeID - SOAP::SOAPString
#   recipientName - SOAP::SOAPString
#   recipientEmail - SOAP::SOAPString
class RequestDocumentPDFsRecipientsView
  attr_accessor :envelopeID
  attr_accessor :recipientName
  attr_accessor :recipientEmail

  def initialize(envelopeID = nil, recipientName = nil, recipientEmail = nil)
    @envelopeID = envelopeID
    @recipientName = recipientName
    @recipientEmail = recipientEmail
  end
end

# {http://www.docusign.net/API/3.0}RequestDocumentPDFsRecipientsViewResponse
#   requestDocumentPDFsRecipientsViewResult - Docusign::DocumentPDFs
class RequestDocumentPDFsRecipientsViewResponse
  attr_accessor :requestDocumentPDFsRecipientsViewResult

  def initialize(requestDocumentPDFsRecipientsViewResult = nil)
    @requestDocumentPDFsRecipientsViewResult = requestDocumentPDFsRecipientsViewResult
  end
end

# {http://www.docusign.net/API/3.0}RequestStatusEx
#   envelopeID - SOAP::SOAPString
class RequestStatusEx
  attr_accessor :envelopeID

  def initialize(envelopeID = nil)
    @envelopeID = envelopeID
  end
end

# {http://www.docusign.net/API/3.0}RequestStatusExResponse
#   requestStatusExResult - Docusign::EnvelopeStatus
class RequestStatusExResponse
  attr_accessor :requestStatusExResult

  def initialize(requestStatusExResult = nil)
    @requestStatusExResult = requestStatusExResult
  end
end

# {http://www.docusign.net/API/3.0}RequestStatus
#   envelopeID - SOAP::SOAPString
class RequestStatus
  attr_accessor :envelopeID

  def initialize(envelopeID = nil)
    @envelopeID = envelopeID
  end
end

# {http://www.docusign.net/API/3.0}RequestStatusResponse
#   requestStatusResult - Docusign::EnvelopeStatus
class RequestStatusResponse
  attr_accessor :requestStatusResult

  def initialize(requestStatusResult = nil)
    @requestStatusResult = requestStatusResult
  end
end

# {http://www.docusign.net/API/3.0}RequestStatusCodes
#   envelopeStatusFilter - Docusign::EnvelopeStatusFilter
class RequestStatusCodes
  attr_accessor :envelopeStatusFilter

  def initialize(envelopeStatusFilter = nil)
    @envelopeStatusFilter = envelopeStatusFilter
  end
end

# {http://www.docusign.net/API/3.0}RequestStatusCodesResponse
#   requestStatusCodesResult - Docusign::FilteredEnvelopeStatusChanges
class RequestStatusCodesResponse
  attr_accessor :requestStatusCodesResult

  def initialize(requestStatusCodesResult = nil)
    @requestStatusCodesResult = requestStatusCodesResult
  end
end

# {http://www.docusign.net/API/3.0}RequestStatusChanges
#   envelopeStatusChangeFilter - Docusign::EnvelopeStatusChangeFilter
class RequestStatusChanges
  attr_accessor :envelopeStatusChangeFilter

  def initialize(envelopeStatusChangeFilter = nil)
    @envelopeStatusChangeFilter = envelopeStatusChangeFilter
  end
end

# {http://www.docusign.net/API/3.0}RequestStatusChangesResponse
#   requestStatusChangesResult - Docusign::FilteredEnvelopeStatusChanges
class RequestStatusChangesResponse
  attr_accessor :requestStatusChangesResult

  def initialize(requestStatusChangesResult = nil)
    @requestStatusChangesResult = requestStatusChangesResult
  end
end

# {http://www.docusign.net/API/3.0}RequestStatusesEx
#   envelopeStatusFilter - Docusign::EnvelopeStatusFilter
class RequestStatusesEx
  attr_accessor :envelopeStatusFilter

  def initialize(envelopeStatusFilter = nil)
    @envelopeStatusFilter = envelopeStatusFilter
  end
end

# {http://www.docusign.net/API/3.0}RequestStatusesExResponse
#   requestStatusesExResult - Docusign::FilteredEnvelopeStatuses
class RequestStatusesExResponse
  attr_accessor :requestStatusesExResult

  def initialize(requestStatusesExResult = nil)
    @requestStatusesExResult = requestStatusesExResult
  end
end

# {http://www.docusign.net/API/3.0}RequestStatuses
#   envelopeStatusFilter - Docusign::EnvelopeStatusFilter
class RequestStatuses
  attr_accessor :envelopeStatusFilter

  def initialize(envelopeStatusFilter = nil)
    @envelopeStatusFilter = envelopeStatusFilter
  end
end

# {http://www.docusign.net/API/3.0}RequestStatusesResponse
#   requestStatusesResult - Docusign::FilteredEnvelopeStatuses
class RequestStatusesResponse
  attr_accessor :requestStatusesResult

  def initialize(requestStatusesResult = nil)
    @requestStatusesResult = requestStatusesResult
  end
end

# {http://www.docusign.net/API/3.0}GetRecipientEsignList
#   userName - SOAP::SOAPString
#   senderEmail - SOAP::SOAPString
#   senderAccountId - SOAP::SOAPString
#   recipientEmail - SOAP::SOAPString
class GetRecipientEsignList
  attr_accessor :userName
  attr_accessor :senderEmail
  attr_accessor :senderAccountId
  attr_accessor :recipientEmail

  def initialize(userName = nil, senderEmail = nil, senderAccountId = nil, recipientEmail = nil)
    @userName = userName
    @senderEmail = senderEmail
    @senderAccountId = senderAccountId
    @recipientEmail = recipientEmail
  end
end

# {http://www.docusign.net/API/3.0}GetRecipientEsignListResponse
#   getRecipientEsignListResult - Docusign::RecipientEsignList
class GetRecipientEsignListResponse
  attr_accessor :getRecipientEsignListResult

  def initialize(getRecipientEsignListResult = nil)
    @getRecipientEsignListResult = getRecipientEsignListResult
  end
end

# {http://www.docusign.net/API/3.0}GetRecipientList
#   senderAccountId - SOAP::SOAPString
#   recipientEmail - SOAP::SOAPString
class GetRecipientList
  attr_accessor :senderAccountId
  attr_accessor :recipientEmail

  def initialize(senderAccountId = nil, recipientEmail = nil)
    @senderAccountId = senderAccountId
    @recipientEmail = recipientEmail
  end
end

# {http://www.docusign.net/API/3.0}GetRecipientListResponse
#   getRecipientListResult - Docusign::RecipientList
class GetRecipientListResponse
  attr_accessor :getRecipientListResult

  def initialize(getRecipientListResult = nil)
    @getRecipientListResult = getRecipientListResult
  end
end

# {http://www.docusign.net/API/3.0}VoidEnvelope
#   envelopeID - SOAP::SOAPString
#   reason - SOAP::SOAPString
class VoidEnvelope
  attr_accessor :envelopeID
  attr_accessor :reason

  def initialize(envelopeID = nil, reason = nil)
    @envelopeID = envelopeID
    @reason = reason
  end
end

# {http://www.docusign.net/API/3.0}VoidEnvelopeResponse
#   voidEnvelopeResult - Docusign::VoidEnvelopeStatus
class VoidEnvelopeResponse
  attr_accessor :voidEnvelopeResult

  def initialize(voidEnvelopeResult = nil)
    @voidEnvelopeResult = voidEnvelopeResult
  end
end

# {http://www.docusign.net/API/3.0}RequestRecipientToken
#   envelopeID - SOAP::SOAPString
#   clientUserID - SOAP::SOAPString
#   username - SOAP::SOAPString
#   email - SOAP::SOAPString
#   authenticationAssertion - Docusign::RequestRecipientTokenAuthenticationAssertion
#   clientURLs - Docusign::RequestRecipientTokenClientURLs
class RequestRecipientToken
  attr_accessor :envelopeID
  attr_accessor :clientUserID
  attr_accessor :username
  attr_accessor :email
  attr_accessor :authenticationAssertion
  attr_accessor :clientURLs

  def initialize(envelopeID = nil, clientUserID = nil, username = nil, email = nil, authenticationAssertion = nil, clientURLs = nil)
    @envelopeID = envelopeID
    @clientUserID = clientUserID
    @username = username
    @email = email
    @authenticationAssertion = authenticationAssertion
    @clientURLs = clientURLs
  end
end

# {http://www.docusign.net/API/3.0}RequestRecipientTokenResponse
#   requestRecipientTokenResult - SOAP::SOAPString
class RequestRecipientTokenResponse
  attr_accessor :requestRecipientTokenResult

  def initialize(requestRecipientTokenResult = nil)
    @requestRecipientTokenResult = requestRecipientTokenResult
  end
end

# {http://www.docusign.net/API/3.0}TransferEnvelope
#   envelopeID - SOAP::SOAPString
#   accountID - SOAP::SOAPString
#   userID - SOAP::SOAPString
class TransferEnvelope
  attr_accessor :envelopeID
  attr_accessor :accountID
  attr_accessor :userID

  def initialize(envelopeID = nil, accountID = nil, userID = nil)
    @envelopeID = envelopeID
    @accountID = accountID
    @userID = userID
  end
end

# {http://www.docusign.net/API/3.0}TransferEnvelopeResponse
#   transferEnvelopeResult - Docusign::TransferEnvelopeStatus
class TransferEnvelopeResponse
  attr_accessor :transferEnvelopeResult

  def initialize(transferEnvelopeResult = nil)
    @transferEnvelopeResult = transferEnvelopeResult
  end
end

# {http://www.docusign.net/API/3.0}GetAccountMembershipFeaturesList
#   accountId - SOAP::SOAPString
class GetAccountMembershipFeaturesList
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/3.0}GetAccountMembershipFeaturesListResponse
#   getAccountMembershipFeaturesListResult - Docusign::AccountMembershipFeaturesList
class GetAccountMembershipFeaturesListResponse
  attr_accessor :getAccountMembershipFeaturesListResult

  def initialize(getAccountMembershipFeaturesListResult = nil)
    @getAccountMembershipFeaturesListResult = getAccountMembershipFeaturesListResult
  end
end

# {http://www.docusign.net/API/3.0}GetAccountSettingsList
#   accountId - SOAP::SOAPString
class GetAccountSettingsList
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/3.0}GetAccountSettingsListResponse
#   getAccountSettingsListResult - Docusign::AccountSettingsList
class GetAccountSettingsListResponse
  attr_accessor :getAccountSettingsListResult

  def initialize(getAccountSettingsListResult = nil)
    @getAccountSettingsListResult = getAccountSettingsListResult
  end
end

# {http://www.docusign.net/API/3.0}AcknowledgeAuthoritativeCopyExport
#   envelopeId - SOAP::SOAPString
#   transactionId - SOAP::SOAPString
#   checkSumHash - SOAP::SOAPBase64
class AcknowledgeAuthoritativeCopyExport
  attr_accessor :envelopeId
  attr_accessor :transactionId
  attr_accessor :checkSumHash

  def initialize(envelopeId = nil, transactionId = nil, checkSumHash = nil)
    @envelopeId = envelopeId
    @transactionId = transactionId
    @checkSumHash = checkSumHash
  end
end

# {http://www.docusign.net/API/3.0}AcknowledgeAuthoritativeCopyExportResponse
#   acknowledgeAuthoritativeCopyExportResult - Docusign::AuthoritativeCopyExportStatus
class AcknowledgeAuthoritativeCopyExportResponse
  attr_accessor :acknowledgeAuthoritativeCopyExportResult

  def initialize(acknowledgeAuthoritativeCopyExportResult = nil)
    @acknowledgeAuthoritativeCopyExportResult = acknowledgeAuthoritativeCopyExportResult
  end
end

# {http://www.docusign.net/API/3.0}ExportAuthoritativeCopy
#   envelopeId - SOAP::SOAPString
class ExportAuthoritativeCopy
  attr_accessor :envelopeId

  def initialize(envelopeId = nil)
    @envelopeId = envelopeId
  end
end

# {http://www.docusign.net/API/3.0}ExportAuthoritativeCopyResponse
#   exportAuthoritativeCopyResult - Docusign::AuthoritativeCopyExportDocuments
class ExportAuthoritativeCopyResponse
  attr_accessor :exportAuthoritativeCopyResult

  def initialize(exportAuthoritativeCopyResult = nil)
    @exportAuthoritativeCopyResult = exportAuthoritativeCopyResult
  end
end

# {http://www.docusign.net/API/3.0}EnvelopeAuditEvents
#   envelopeId - SOAP::SOAPString
class EnvelopeAuditEvents
  attr_accessor :envelopeId

  def initialize(envelopeId = nil)
    @envelopeId = envelopeId
  end
end

# {http://www.docusign.net/API/3.0}EnvelopeAuditEventsResponse
#   envelopeAuditEventsResult - Docusign::EnvelopeAuditEventsResponse::EnvelopeAuditEventsResult
class EnvelopeAuditEventsResponse

  # inner class for member: EnvelopeAuditEventsResult
  # {http://www.docusign.net/API/3.0}EnvelopeAuditEventsResult
  class EnvelopeAuditEventsResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :envelopeAuditEventsResult

  def initialize(envelopeAuditEventsResult = nil)
    @envelopeAuditEventsResult = envelopeAuditEventsResult
  end
end

# {http://www.docusign.net/API/3.0}Ping
class Ping
  def initialize
  end
end

# {http://www.docusign.net/API/3.0}PingResponse
#   pingResult - SOAP::SOAPBoolean
class PingResponse
  attr_accessor :pingResult

  def initialize(pingResult = nil)
    @pingResult = pingResult
  end
end

# {http://www.docusign.net/API/3.0}CreateEnvelopeFromTemplates
#   templateReferences - Docusign::ArrayOfTemplateReference
#   recipients - Docusign::ArrayOfRecipient1
#   envelopeInformation - Docusign::EnvelopeInformation
#   activateEnvelope - SOAP::SOAPBoolean
class CreateEnvelopeFromTemplates
  attr_accessor :templateReferences
  attr_accessor :recipients
  attr_accessor :envelopeInformation
  attr_accessor :activateEnvelope

  def initialize(templateReferences = nil, recipients = nil, envelopeInformation = nil, activateEnvelope = nil)
    @templateReferences = templateReferences
    @recipients = recipients
    @envelopeInformation = envelopeInformation
    @activateEnvelope = activateEnvelope
  end
end

# {http://www.docusign.net/API/3.0}CreateEnvelopeFromTemplatesResponse
#   createEnvelopeFromTemplatesResult - Docusign::EnvelopeStatus
class CreateEnvelopeFromTemplatesResponse
  attr_accessor :createEnvelopeFromTemplatesResult

  def initialize(createEnvelopeFromTemplatesResult = nil)
    @createEnvelopeFromTemplatesResult = createEnvelopeFromTemplatesResult
  end
end

# {http://www.docusign.net/API/3.0}CreateEnvelopeFromTemplatesAndForms
#   envelopeInformation - Docusign::EnvelopeInformation
#   compositeTemplates - Docusign::ArrayOfCompositeTemplate
#   activateEnvelope - SOAP::SOAPBoolean
class CreateEnvelopeFromTemplatesAndForms
  attr_accessor :envelopeInformation
  attr_accessor :compositeTemplates
  attr_accessor :activateEnvelope

  def initialize(envelopeInformation = nil, compositeTemplates = nil, activateEnvelope = nil)
    @envelopeInformation = envelopeInformation
    @compositeTemplates = compositeTemplates
    @activateEnvelope = activateEnvelope
  end
end

# {http://www.docusign.net/API/3.0}CreateEnvelopeFromTemplatesAndFormsResponse
#   createEnvelopeFromTemplatesAndFormsResult - Docusign::EnvelopeStatus
class CreateEnvelopeFromTemplatesAndFormsResponse
  attr_accessor :createEnvelopeFromTemplatesAndFormsResult

  def initialize(createEnvelopeFromTemplatesAndFormsResult = nil)
    @createEnvelopeFromTemplatesAndFormsResult = createEnvelopeFromTemplatesAndFormsResult
  end
end

# {http://www.docusign.net/API/3.0}GetStatusInDocuSignConnectFormat
#   envelopeID - SOAP::SOAPString
class GetStatusInDocuSignConnectFormat
  attr_accessor :envelopeID

  def initialize(envelopeID = nil)
    @envelopeID = envelopeID
  end
end

# {http://www.docusign.net/API/3.0}GetStatusInDocuSignConnectFormatResponse
#   getStatusInDocuSignConnectFormatResult - Docusign::DocuSignEnvelopeInformation
class GetStatusInDocuSignConnectFormatResponse
  attr_accessor :getStatusInDocuSignConnectFormatResult

  def initialize(getStatusInDocuSignConnectFormatResult = nil)
    @getStatusInDocuSignConnectFormatResult = getStatusInDocuSignConnectFormatResult
  end
end

# {http://www.docusign.net/API/3.0}PurgeDocuments
#   envelopeID - SOAP::SOAPString
class PurgeDocuments
  attr_accessor :envelopeID

  def initialize(envelopeID = nil)
    @envelopeID = envelopeID
  end
end

# {http://www.docusign.net/API/3.0}PurgeDocumentsResponse
#   purgeDocumentsResult - Docusign::PurgeDocumentStatus
class PurgeDocumentsResponse
  attr_accessor :purgeDocumentsResult

  def initialize(purgeDocumentsResult = nil)
    @purgeDocumentsResult = purgeDocumentsResult
  end
end

# {http://www.docusign.net/API/3.0}SaveTemplate
#   envelopeTemplate - Docusign::EnvelopeTemplate
class SaveTemplate
  attr_accessor :envelopeTemplate

  def initialize(envelopeTemplate = nil)
    @envelopeTemplate = envelopeTemplate
  end
end

# {http://www.docusign.net/API/3.0}SaveTemplateResponse
#   saveTemplateResult - Docusign::SaveTemplateResult
class SaveTemplateResponse
  attr_accessor :saveTemplateResult

  def initialize(saveTemplateResult = nil)
    @saveTemplateResult = saveTemplateResult
  end
end

# {http://www.docusign.net/API/3.0}UploadTemplate
#   templateXML - SOAP::SOAPString
#   accountID - SOAP::SOAPString
#   shared - SOAP::SOAPBoolean
class UploadTemplate
  attr_accessor :templateXML
  attr_accessor :accountID
  attr_accessor :shared

  def initialize(templateXML = nil, accountID = nil, shared = nil)
    @templateXML = templateXML
    @accountID = accountID
    @shared = shared
  end
end

# {http://www.docusign.net/API/3.0}UploadTemplateResponse
#   uploadTemplateResult - Docusign::SaveTemplateResult
class UploadTemplateResponse
  attr_accessor :uploadTemplateResult

  def initialize(uploadTemplateResult = nil)
    @uploadTemplateResult = uploadTemplateResult
  end
end

# {http://www.docusign.net/API/3.0}RequestTemplates
#   accountID - SOAP::SOAPString
#   includeAdvancedTemplates - SOAP::SOAPBoolean
class RequestTemplates
  attr_accessor :accountID
  attr_accessor :includeAdvancedTemplates

  def initialize(accountID = nil, includeAdvancedTemplates = nil)
    @accountID = accountID
    @includeAdvancedTemplates = includeAdvancedTemplates
  end
end

# {http://www.docusign.net/API/3.0}RequestTemplatesResponse
#   requestTemplatesResult - Docusign::EnvelopeTemplates
class RequestTemplatesResponse
  attr_accessor :requestTemplatesResult

  def initialize(requestTemplatesResult = nil)
    @requestTemplatesResult = requestTemplatesResult
  end
end

# {http://www.docusign.net/API/3.0}RequestTemplate
#   templateID - SOAP::SOAPString
#   includeDocumentBytes - SOAP::SOAPBoolean
class RequestTemplate
  attr_accessor :templateID
  attr_accessor :includeDocumentBytes

  def initialize(templateID = nil, includeDocumentBytes = nil)
    @templateID = templateID
    @includeDocumentBytes = includeDocumentBytes
  end
end

# {http://www.docusign.net/API/3.0}RequestTemplateResponse
#   requestTemplateResult - Docusign::EnvelopeTemplate
class RequestTemplateResponse
  attr_accessor :requestTemplateResult

  def initialize(requestTemplateResult = nil)
    @requestTemplateResult = requestTemplateResult
  end
end

# {http://www.docusign.net/API/3.0}GetAuthenticationToken
#   goToEnvelopeID - SOAP::SOAPString
class GetAuthenticationToken
  attr_accessor :goToEnvelopeID

  def initialize(goToEnvelopeID = nil)
    @goToEnvelopeID = goToEnvelopeID
  end
end

# {http://www.docusign.net/API/3.0}GetAuthenticationTokenResponse
#   getAuthenticationTokenResult - SOAP::SOAPString
class GetAuthenticationTokenResponse
  attr_accessor :getAuthenticationTokenResult

  def initialize(getAuthenticationTokenResult = nil)
    @getAuthenticationTokenResult = getAuthenticationTokenResult
  end
end

# {http://www.docusign.net/API/3.0}GetAddressBookItems
#   accountID - SOAP::SOAPString
class GetAddressBookItems
  attr_accessor :accountID

  def initialize(accountID = nil)
    @accountID = accountID
  end
end

# {http://www.docusign.net/API/3.0}GetAddressBookItemsResponse
#   getAddressBookItemsResult - Docusign::ArrayOfAddressBookItem
class GetAddressBookItemsResponse
  attr_accessor :getAddressBookItemsResult

  def initialize(getAddressBookItemsResult = nil)
    @getAddressBookItemsResult = getAddressBookItemsResult
  end
end

# {http://www.docusign.net/API/3.0}UpdateAddressBookItems
#   addressBookItems - Docusign::ArrayOfAddressBookItem
#   returnAddressBook - SOAP::SOAPBoolean
class UpdateAddressBookItems
  attr_accessor :addressBookItems
  attr_accessor :returnAddressBook

  def initialize(addressBookItems = nil, returnAddressBook = nil)
    @addressBookItems = addressBookItems
    @returnAddressBook = returnAddressBook
  end
end

# {http://www.docusign.net/API/3.0}UpdateAddressBookItemsResponse
#   updateAddressBookItemsResult - Docusign::UpdateAddressBookResult
class UpdateAddressBookItemsResponse
  attr_accessor :updateAddressBookItemsResult

  def initialize(updateAddressBookItemsResult = nil)
    @updateAddressBookItemsResult = updateAddressBookItemsResult
  end
end

# {http://www.docusign.net/API/3.0}RemoveAddressBookItems
#   addressBookRemoveItems - Docusign::ArrayOfAddressBookRemoveItem
#   returnAddressBook - SOAP::SOAPBoolean
class RemoveAddressBookItems
  attr_accessor :addressBookRemoveItems
  attr_accessor :returnAddressBook

  def initialize(addressBookRemoveItems = nil, returnAddressBook = nil)
    @addressBookRemoveItems = addressBookRemoveItems
    @returnAddressBook = returnAddressBook
  end
end

# {http://www.docusign.net/API/3.0}RemoveAddressBookItemsResponse
#   removeAddressBookItemsResult - Docusign::UpdateAddressBookResult
class RemoveAddressBookItemsResponse
  attr_accessor :removeAddressBookItemsResult

  def initialize(removeAddressBookItemsResult = nil)
    @removeAddressBookItemsResult = removeAddressBookItemsResult
  end
end

# {http://www.docusign.net/API/3.0}SynchEnvelope
#   transactionID - SOAP::SOAPString
#   accountID - SOAP::SOAPString
#   block - SOAP::SOAPBoolean
class SynchEnvelope
  attr_accessor :transactionID
  attr_accessor :accountID
  attr_accessor :block

  def initialize(transactionID = nil, accountID = nil, block = nil)
    @transactionID = transactionID
    @accountID = accountID
    @block = block
  end
end

# {http://www.docusign.net/API/3.0}SynchEnvelopeResponse
#   synchEnvelopeResult - Docusign::SynchEnvelopeStatus
class SynchEnvelopeResponse
  attr_accessor :synchEnvelopeResult

  def initialize(synchEnvelopeResult = nil)
    @synchEnvelopeResult = synchEnvelopeResult
  end
end

# {http://www.docusign.net/API/3.0}RequestSenderToken
#   envelopeID - SOAP::SOAPString
#   accountID - SOAP::SOAPString
#   returnURL - SOAP::SOAPString
class RequestSenderToken
  attr_accessor :envelopeID
  attr_accessor :accountID
  attr_accessor :returnURL

  def initialize(envelopeID = nil, accountID = nil, returnURL = nil)
    @envelopeID = envelopeID
    @accountID = accountID
    @returnURL = returnURL
  end
end

# {http://www.docusign.net/API/3.0}RequestSenderTokenResponse
#   requestSenderTokenResult - SOAP::SOAPString
class RequestSenderTokenResponse
  attr_accessor :requestSenderTokenResult

  def initialize(requestSenderTokenResult = nil)
    @requestSenderTokenResult = requestSenderTokenResult
  end
end

# {http://www.docusign.net/API/3.0}RequestCorrectToken
#   envelopeID - SOAP::SOAPString
#   suppressNavigation - SOAP::SOAPBoolean
#   returnURL - SOAP::SOAPString
class RequestCorrectToken
  attr_accessor :envelopeID
  attr_accessor :suppressNavigation
  attr_accessor :returnURL

  def initialize(envelopeID = nil, suppressNavigation = nil, returnURL = nil)
    @envelopeID = envelopeID
    @suppressNavigation = suppressNavigation
    @returnURL = returnURL
  end
end

# {http://www.docusign.net/API/3.0}RequestCorrectTokenResponse
#   requestCorrectTokenResult - SOAP::SOAPString
class RequestCorrectTokenResponse
  attr_accessor :requestCorrectTokenResult

  def initialize(requestCorrectTokenResult = nil)
    @requestCorrectTokenResult = requestCorrectTokenResult
  end
end

# {http://www.docusign.net/API/3.0}GetFolderItems
#   folderFilter - Docusign::FolderFilter
class GetFolderItems
  attr_accessor :folderFilter

  def initialize(folderFilter = nil)
    @folderFilter = folderFilter
  end
end

# {http://www.docusign.net/API/3.0}GetFolderItemsResponse
#   getFolderItemsResult - Docusign::FolderResults
class GetFolderItemsResponse
  attr_accessor :getFolderItemsResult

  def initialize(getFolderItemsResult = nil)
    @getFolderItemsResult = getFolderItemsResult
  end
end

# {http://www.docusign.net/API/3.0}GetFolderList
#   foldersFilter - Docusign::FoldersFilter
class GetFolderList
  attr_accessor :foldersFilter

  def initialize(foldersFilter = nil)
    @foldersFilter = foldersFilter
  end
end

# {http://www.docusign.net/API/3.0}GetFolderListResponse
#   getFolderListResult - Docusign::AvailableFolders
class GetFolderListResponse
  attr_accessor :getFolderListResult

  def initialize(getFolderListResult = nil)
    @getFolderListResult = getFolderListResult
  end
end

# {http://www.docusign.net/API/3.0}RequestEnvelope
#   envelopeID - SOAP::SOAPString
#   includeDocumentBytes - SOAP::SOAPBoolean
class RequestEnvelope
  attr_accessor :envelopeID
  attr_accessor :includeDocumentBytes

  def initialize(envelopeID = nil, includeDocumentBytes = nil)
    @envelopeID = envelopeID
    @includeDocumentBytes = includeDocumentBytes
  end
end

# {http://www.docusign.net/API/3.0}RequestEnvelopeResponse
#   requestEnvelopeResult - Docusign::Envelope
class RequestEnvelopeResponse
  attr_accessor :requestEnvelopeResult

  def initialize(requestEnvelopeResult = nil)
    @requestEnvelopeResult = requestEnvelopeResult
  end
end


end
