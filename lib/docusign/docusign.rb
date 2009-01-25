require 'xsd/qname'

module Docusign


# {http://www.docusign.net/API/3.0}Envelope
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
class Envelope
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

  def initialize(accountId = nil, documents = nil, recipients = nil, tabs = nil, subject = nil, emailBlurb = nil, signingLocation = nil, customFields = nil, vaultingOptions = nil, autoNavigation = nil, envelopeIdStamping = nil, authoritativeCopy = nil, notification = nil, envelopeAttachment = nil)
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
class Document
  attr_accessor :iD
  attr_accessor :name
  attr_accessor :pDFBytes
  attr_accessor :password

  def initialize(iD = nil, name = nil, pDFBytes = nil, password = nil)
    @iD = iD
    @name = name
    @pDFBytes = pDFBytes
    @password = password
  end
end

# {http://www.docusign.net/API/3.0}ArrayOfRecipient
class ArrayOfRecipient < ::Array
end

# {http://www.docusign.net/API/3.0}Recipient
#   iD - SOAP::SOAPPositiveInteger
#   userName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   type - Docusign::RecipientTypeCode
#   accessCode - SOAP::SOAPString
#   addAccessCodeToEmail - SOAP::SOAPBoolean
#   requireIDLookup - SOAP::SOAPBoolean
#   iDCheckConfigurationName - SOAP::SOAPString
#   signatureInfo - Docusign::RecipientSignatureInfo
#   captiveInfo - Docusign::RecipientCaptiveInfo
#   customFields - Docusign::ArrayOfString
#   routingOrder - SOAP::SOAPUnsignedShort
#   iDCheckInformationInput - Docusign::IDCheckInformationInput
#   autoNavigation - SOAP::SOAPBoolean
#   recipientAttachment - Docusign::ArrayOfAttachment
#   note - SOAP::SOAPString
class Recipient
  attr_accessor :iD
  attr_accessor :userName
  attr_accessor :email
  attr_accessor :type
  attr_accessor :accessCode
  attr_accessor :addAccessCodeToEmail
  attr_accessor :requireIDLookup
  attr_accessor :iDCheckConfigurationName
  attr_accessor :signatureInfo
  attr_accessor :captiveInfo
  attr_accessor :customFields
  attr_accessor :routingOrder
  attr_accessor :iDCheckInformationInput
  attr_accessor :autoNavigation
  attr_accessor :recipientAttachment
  attr_accessor :note

  def initialize(iD = nil, userName = nil, email = nil, type = nil, accessCode = nil, addAccessCodeToEmail = nil, requireIDLookup = nil, iDCheckConfigurationName = nil, signatureInfo = nil, captiveInfo = nil, customFields = nil, routingOrder = nil, iDCheckInformationInput = nil, autoNavigation = nil, recipientAttachment = nil, note = nil)
    @iD = iD
    @userName = userName
    @email = email
    @type = type
    @accessCode = accessCode
    @addAccessCodeToEmail = addAccessCodeToEmail
    @requireIDLookup = requireIDLookup
    @iDCheckConfigurationName = iDCheckConfigurationName
    @signatureInfo = signatureInfo
    @captiveInfo = captiveInfo
    @customFields = customFields
    @routingOrder = routingOrder
    @iDCheckInformationInput = iDCheckInformationInput
    @autoNavigation = autoNavigation
    @recipientAttachment = recipientAttachment
    @note = note
  end
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

# {http://www.docusign.net/API/3.0}ArrayOfString
class ArrayOfString < ::Array
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
#   customTabRadioGroupName - SOAP::SOAPString
class Tab
  attr_accessor :documentID
  attr_accessor :recipientID
  attr_accessor :pageNumber
  attr_accessor :xPosition
  attr_accessor :yPosition
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
  attr_accessor :customTabRadioGroupName

  def initialize(documentID = nil, recipientID = nil, pageNumber = nil, xPosition = nil, yPosition = nil, anchorTabItem = nil, type = nil, name = nil, tabLabel = nil, value = nil, customTabType = nil, customTabWidth = nil, customTabHeight = nil, customTabRequired = nil, customTabLocked = nil, customTabDisableAutoSize = nil, customTabListItems = nil, customTabRadioGroupName = nil)
    @documentID = documentID
    @recipientID = recipientID
    @pageNumber = pageNumber
    @xPosition = xPosition
    @yPosition = yPosition
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
    @customTabRadioGroupName = customTabRadioGroupName
  end
end

# {http://www.docusign.net/API/3.0}AnchorTab
#   anchorTabString - SOAP::SOAPString
#   xOffset - SOAP::SOAPDouble
#   yOffset - SOAP::SOAPDouble
#   unit - Docusign::UnitTypeCode
class AnchorTab
  attr_accessor :anchorTabString
  attr_accessor :xOffset
  attr_accessor :yOffset
  attr_accessor :unit

  def initialize(anchorTabString = nil, xOffset = nil, yOffset = nil, unit = nil)
    @anchorTabString = anchorTabString
    @xOffset = xOffset
    @yOffset = yOffset
    @unit = unit
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
class CustomField
  attr_accessor :name
  attr_accessor :show
  attr_accessor :required
  attr_accessor :value

  def initialize(name = nil, show = nil, required = nil, value = nil)
    @name = name
    @show = show
    @required = required
    @value = value
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

  def initialize(recipientStatuses = nil, timeGenerated = nil, envelopeID = nil, subject = nil, userName = nil, email = nil, status = nil, created = nil, deleted = nil, sent = nil, delivered = nil, signed = nil, completed = nil, declined = nil, timedOut = nil, aCStatus = nil, aCStatusDate = nil, aCHolder = nil, aCHolderEmail = nil, aCHolderLocation = nil, signingLocation = nil, senderIPAddress = nil, envelopePDFHash = nil, customFields = nil, vaultingDetails = nil, autoNavigation = nil, envelopeIdStamping = nil, authoritativeCopy = nil, envelopeAttachment = nil)
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
#   customFields - Docusign::ArrayOfString
#   tabStatuses - Docusign::ArrayOfTabStatus
#   recipientAttachment - Docusign::ArrayOfAttachment
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

  def initialize(type = nil, email = nil, userName = nil, routingOrder = nil, sent = nil, delivered = nil, signed = nil, declined = nil, declineReason = nil, status = nil, recipientIPAddress = nil, clientUserId = nil, autoNavigation = nil, iDCheckInformation = nil, recipientAuthenticationStatus = nil, customFields = nil, tabStatuses = nil, recipientAttachment = nil)
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
class AuthenticationStatus
  attr_accessor :accessCodeResult
  attr_accessor :iDQuestionsResult
  attr_accessor :iDLookupResult
  attr_accessor :ageVerifyResult
  attr_accessor :sTANPinResult
  attr_accessor :oFACResult

  def initialize(accessCodeResult = nil, iDQuestionsResult = nil, iDLookupResult = nil, ageVerifyResult = nil, sTANPinResult = nil, oFACResult = nil)
    @accessCodeResult = accessCodeResult
    @iDQuestionsResult = iDQuestionsResult
    @iDLookupResult = iDLookupResult
    @ageVerifyResult = ageVerifyResult
    @sTANPinResult = sTANPinResult
    @oFACResult = oFACResult
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
class TabStatus
  attr_accessor :tabType
  attr_accessor :status
  attr_accessor :xPosition
  attr_accessor :yPosition
  attr_accessor :signed
  attr_accessor :tabLabel
  attr_accessor :tabName
  attr_accessor :tabValue

  def initialize(tabType = nil, status = nil, xPosition = nil, yPosition = nil, signed = nil, tabLabel = nil, tabName = nil, tabValue = nil)
    @tabType = tabType
    @status = status
    @xPosition = xPosition
    @yPosition = yPosition
    @signed = signed
    @tabLabel = tabLabel
    @tabName = tabName
    @tabValue = tabValue
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
#   correctedUserName - SOAP::SOAPString
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
  attr_accessor :correctedUserName
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

  def initialize(previousUserName = nil, previousEmail = nil, previousRoutingOrder = nil, correctedUserName = nil, correctedEmail = nil, correctedCaptiveInfo = nil, correctedAccessCode = nil, correctedAccessCodeRequired = nil, correctedRequireIDLookup = nil, correctedIDCheckConfigurationName = nil, correctedRoutingOrder = nil, correctedAutoNavigation = nil, correctedIDCheckInformationInput = nil, resend = nil)
    @previousUserName = previousUserName
    @previousEmail = previousEmail
    @previousRoutingOrder = previousRoutingOrder
    @correctedUserName = correctedUserName
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
class DocumentPDF
  attr_accessor :name
  attr_accessor :pDFBytes

  def initialize(name = nil, pDFBytes = nil)
    @name = name
    @pDFBytes = pDFBytes
  end
end

# {http://www.docusign.net/API/3.0}EnvelopeStatusFilter
#   userInfo - Docusign::UserInfo
#   accountId - SOAP::SOAPString
#   beginDateTime - Docusign::EnvelopeStatusFilterBeginDateTime
#   endDateTime - SOAP::SOAPDateTime
#   statuses - Docusign::ArrayOfEnvelopeStatusCode
#   envelopeIds - Docusign::ArrayOfString1
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

# {http://www.docusign.net/API/3.0}ArrayOfString1
class ArrayOfString1 < ::Array
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
class RecipientEsign
  attr_accessor :userName
  attr_accessor :email
  attr_accessor :esign

  def initialize(userName = nil, email = nil, esign = nil)
    @userName = userName
    @email = email
    @esign = esign
  end
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

  def initialize(onSigningComplete = nil, onViewingComplete = nil, onCancel = nil, onDecline = nil, onSessionTimeout = nil, onTTLExpired = nil, onException = nil, onAccessCodeFailed = nil, onIdCheckFailed = nil)
    @onSigningComplete = onSigningComplete
    @onViewingComplete = onViewingComplete
    @onCancel = onCancel
    @onDecline = onDecline
    @onSessionTimeout = onSessionTimeout
    @onTTLExpired = onTTLExpired
    @onException = onException
    @onAccessCodeFailed = onAccessCodeFailed
    @onIdCheckFailed = onIdCheckFailed
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
#   enabledFeaturesSet - Docusign::ArrayOfString2
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

# {http://www.docusign.net/API/3.0}ArrayOfString2
class ArrayOfString2 < ::Array
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

# {http://www.docusign.net/API/3.0}RecipientTypeCode
class RecipientTypeCode < ::String
  CarbonCopy = RecipientTypeCode.new("CarbonCopy")
  CertifiedDelivery = RecipientTypeCode.new("CertifiedDelivery")
  Signer = RecipientTypeCode.new("Signer")
end

# {http://www.docusign.net/API/3.0}FontStyleCode
class FontStyleCode < ::String
  BradleyHandITC = FontStyleCode.new("BradleyHandITC")
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

# {http://www.docusign.net/API/3.0}VaultingModeCode
class VaultingModeCode < ::String
  EODAuthoritativeCopy = VaultingModeCode.new("EODAuthoritativeCopy")
  EODeStore = VaultingModeCode.new("EODeStore")
  None = VaultingModeCode.new("None")
end

# {http://www.docusign.net/API/3.0}RecipientStatusCode
class RecipientStatusCode < ::String
  Completed = RecipientStatusCode.new("Completed")
  Created = RecipientStatusCode.new("Created")
  Declined = RecipientStatusCode.new("Declined")
  Delivered = RecipientStatusCode.new("Delivered")
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
  Sent = EnvelopeStatusCode.new("Sent")
  Signed = EnvelopeStatusCode.new("Signed")
  TimedOut = EnvelopeStatusCode.new("TimedOut")
  Voided = EnvelopeStatusCode.new("Voided")
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


end
