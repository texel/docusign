require 'xsd/qname'

module Docusign; module AccountManagement


# {http://www.docusign.net/API/AccountManagement}CreditCardInformation
#   ccNumber - SOAP::SOAPString
#   ccExpirationMonth - SOAP::SOAPString
#   ccExpirationYear - SOAP::SOAPString
#   ccUserName - SOAP::SOAPString
#   ccType - SOAP::SOAPString
class CreditCardInformation
  attr_accessor :ccNumber
  attr_accessor :ccExpirationMonth
  attr_accessor :ccExpirationYear
  attr_accessor :ccUserName
  attr_accessor :ccType

  def initialize(ccNumber = nil, ccExpirationMonth = nil, ccExpirationYear = nil, ccUserName = nil, ccType = nil)
    @ccNumber = ccNumber
    @ccExpirationMonth = ccExpirationMonth
    @ccExpirationYear = ccExpirationYear
    @ccUserName = ccUserName
    @ccType = ccType
  end
end

# {http://www.docusign.net/API/AccountManagement}ReferralInformation
#   enableSupport - SOAP::SOAPBoolean
#   includedSeats - SOAP::SOAPPositiveInteger
#   saleDiscountPercent - SOAP::SOAPDecimal
#   planStartMonth - SOAP::SOAPPositiveInteger
#   referrerName - SOAP::SOAPString
#   referralCode - SOAP::SOAPString
#   advertisementID - SOAP::SOAPString
#   publisherID - SOAP::SOAPString
#   shopperID - SOAP::SOAPString
#   promoCode - SOAP::SOAPString
#   groupMemberID - SOAP::SOAPString
#   idType - SOAP::SOAPString
#   industry - SOAP::SOAPString
class ReferralInformation
  attr_accessor :enableSupport
  attr_accessor :includedSeats
  attr_accessor :saleDiscountPercent
  attr_accessor :planStartMonth
  attr_accessor :referrerName
  attr_accessor :referralCode
  attr_accessor :advertisementID
  attr_accessor :publisherID
  attr_accessor :shopperID
  attr_accessor :promoCode
  attr_accessor :groupMemberID
  attr_accessor :idType
  attr_accessor :industry

  def initialize(enableSupport = nil, includedSeats = nil, saleDiscountPercent = nil, planStartMonth = nil, referrerName = nil, referralCode = nil, advertisementID = nil, publisherID = nil, shopperID = nil, promoCode = nil, groupMemberID = nil, idType = nil, industry = nil)
    @enableSupport = enableSupport
    @includedSeats = includedSeats
    @saleDiscountPercent = saleDiscountPercent
    @planStartMonth = planStartMonth
    @referrerName = referrerName
    @referralCode = referralCode
    @advertisementID = advertisementID
    @publisherID = publisherID
    @shopperID = shopperID
    @promoCode = promoCode
    @groupMemberID = groupMemberID
    @idType = idType
    @industry = industry
  end
end

# {http://www.docusign.net/API/AccountManagement}AccountSettings
#   usesAPI - SOAP::SOAPBoolean
#   enableDSPro - SOAP::SOAPBoolean
#   enableVaulting - SOAP::SOAPBoolean
#   enableSendToManage - SOAP::SOAPBoolean
#   enableSendToAgent - SOAP::SOAPBoolean
#   enableEnvelopeStampingByAccountAdmin - SOAP::SOAPBoolean
#   envelopeStampingDefaultValue - SOAP::SOAPBoolean
#   signerMustHaveAccount - SOAP::SOAPBoolean
#   signerMustLoginToSign - SOAP::SOAPBoolean
#   signerCanCreateAccount - SOAP::SOAPBoolean
#   allowInPerson - SOAP::SOAPBoolean
#   enablePowerForm - SOAP::SOAPBoolean
#   allowSignerReassign - SOAP::SOAPBoolean
#   enableReservedDomain - SOAP::SOAPBoolean
#   enableSequentialSigningAPI - SOAP::SOAPBoolean
#   enableSequentialSigningUI - SOAP::SOAPBoolean
#   enableAutoNav - SOAP::SOAPBoolean
#   autoNavRule - SOAP::SOAPString
#   enableTransactionPoint - SOAP::SOAPBoolean
#   envelopeIntegrationAllowed - SOAP::SOAPString
#   envelopeIntegrationEnabled - SOAP::SOAPBoolean
#   canSelfBrandSend - SOAP::SOAPBoolean
#   canSelfBrandSign - SOAP::SOAPBoolean
#   iDCheckRequired - SOAP::SOAPString
#   iDCheckExpire - SOAP::SOAPString
#   iDCheckExpireDays - SOAP::SOAPInteger
#   signDateFormat - SOAP::SOAPString
#   pKISignDownloadedPDFDocs - SOAP::SOAPString
#   inPersonIDCheckQuestion - SOAP::SOAPString
#   sessionTimeout - SOAP::SOAPInteger
#   attachCompletedEnvelope - SOAP::SOAPBoolean
#   signerCanSignOnMobile - SOAP::SOAPBoolean
#   signerShowSecureFieldInitialValues - SOAP::SOAPBoolean
#   signerAttachCertificateToEnvelopePDF - SOAP::SOAPBoolean
#   enableSignOnPaper - SOAP::SOAPBoolean
#   enableSignOnPaperOverride - SOAP::SOAPBoolean
#   enableSignerAttachments - SOAP::SOAPBoolean
#   useAccountLevelEmail - SOAP::SOAPBoolean
#   promo - SOAP::SOAPBoolean
class AccountSettings
  attr_accessor :usesAPI
  attr_accessor :enableDSPro
  attr_accessor :enableVaulting
  attr_accessor :enableSendToManage
  attr_accessor :enableSendToAgent
  attr_accessor :enableEnvelopeStampingByAccountAdmin
  attr_accessor :envelopeStampingDefaultValue
  attr_accessor :signerMustHaveAccount
  attr_accessor :signerMustLoginToSign
  attr_accessor :signerCanCreateAccount
  attr_accessor :allowInPerson
  attr_accessor :enablePowerForm
  attr_accessor :allowSignerReassign
  attr_accessor :enableReservedDomain
  attr_accessor :enableSequentialSigningAPI
  attr_accessor :enableSequentialSigningUI
  attr_accessor :enableAutoNav
  attr_accessor :autoNavRule
  attr_accessor :enableTransactionPoint
  attr_accessor :envelopeIntegrationAllowed
  attr_accessor :envelopeIntegrationEnabled
  attr_accessor :canSelfBrandSend
  attr_accessor :canSelfBrandSign
  attr_accessor :iDCheckRequired
  attr_accessor :iDCheckExpire
  attr_accessor :iDCheckExpireDays
  attr_accessor :signDateFormat
  attr_accessor :pKISignDownloadedPDFDocs
  attr_accessor :inPersonIDCheckQuestion
  attr_accessor :sessionTimeout
  attr_accessor :attachCompletedEnvelope
  attr_accessor :signerCanSignOnMobile
  attr_accessor :signerShowSecureFieldInitialValues
  attr_accessor :signerAttachCertificateToEnvelopePDF
  attr_accessor :enableSignOnPaper
  attr_accessor :enableSignOnPaperOverride
  attr_accessor :enableSignerAttachments
  attr_accessor :useAccountLevelEmail
  attr_accessor :promo

  def initialize(usesAPI = nil, enableDSPro = nil, enableVaulting = nil, enableSendToManage = nil, enableSendToAgent = nil, enableEnvelopeStampingByAccountAdmin = nil, envelopeStampingDefaultValue = nil, signerMustHaveAccount = nil, signerMustLoginToSign = nil, signerCanCreateAccount = nil, allowInPerson = nil, enablePowerForm = nil, allowSignerReassign = nil, enableReservedDomain = nil, enableSequentialSigningAPI = nil, enableSequentialSigningUI = nil, enableAutoNav = nil, autoNavRule = nil, enableTransactionPoint = nil, envelopeIntegrationAllowed = nil, envelopeIntegrationEnabled = nil, canSelfBrandSend = nil, canSelfBrandSign = nil, iDCheckRequired = nil, iDCheckExpire = nil, iDCheckExpireDays = nil, signDateFormat = nil, pKISignDownloadedPDFDocs = nil, inPersonIDCheckQuestion = nil, sessionTimeout = nil, attachCompletedEnvelope = nil, signerCanSignOnMobile = nil, signerShowSecureFieldInitialValues = nil, signerAttachCertificateToEnvelopePDF = nil, enableSignOnPaper = nil, enableSignOnPaperOverride = nil, enableSignerAttachments = nil, useAccountLevelEmail = nil, promo = nil)
    @usesAPI = usesAPI
    @enableDSPro = enableDSPro
    @enableVaulting = enableVaulting
    @enableSendToManage = enableSendToManage
    @enableSendToAgent = enableSendToAgent
    @enableEnvelopeStampingByAccountAdmin = enableEnvelopeStampingByAccountAdmin
    @envelopeStampingDefaultValue = envelopeStampingDefaultValue
    @signerMustHaveAccount = signerMustHaveAccount
    @signerMustLoginToSign = signerMustLoginToSign
    @signerCanCreateAccount = signerCanCreateAccount
    @allowInPerson = allowInPerson
    @enablePowerForm = enablePowerForm
    @allowSignerReassign = allowSignerReassign
    @enableReservedDomain = enableReservedDomain
    @enableSequentialSigningAPI = enableSequentialSigningAPI
    @enableSequentialSigningUI = enableSequentialSigningUI
    @enableAutoNav = enableAutoNav
    @autoNavRule = autoNavRule
    @enableTransactionPoint = enableTransactionPoint
    @envelopeIntegrationAllowed = envelopeIntegrationAllowed
    @envelopeIntegrationEnabled = envelopeIntegrationEnabled
    @canSelfBrandSend = canSelfBrandSend
    @canSelfBrandSign = canSelfBrandSign
    @iDCheckRequired = iDCheckRequired
    @iDCheckExpire = iDCheckExpire
    @iDCheckExpireDays = iDCheckExpireDays
    @signDateFormat = signDateFormat
    @pKISignDownloadedPDFDocs = pKISignDownloadedPDFDocs
    @inPersonIDCheckQuestion = inPersonIDCheckQuestion
    @sessionTimeout = sessionTimeout
    @attachCompletedEnvelope = attachCompletedEnvelope
    @signerCanSignOnMobile = signerCanSignOnMobile
    @signerShowSecureFieldInitialValues = signerShowSecureFieldInitialValues
    @signerAttachCertificateToEnvelopePDF = signerAttachCertificateToEnvelopePDF
    @enableSignOnPaper = enableSignOnPaper
    @enableSignOnPaperOverride = enableSignOnPaperOverride
    @enableSignerAttachments = enableSignerAttachments
    @useAccountLevelEmail = useAccountLevelEmail
    @promo = promo
  end
end

# {http://www.docusign.net/API/AccountManagement}AddressInformation
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zip - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   country - SOAP::SOAPString
class AddressInformation
  attr_accessor :address1
  attr_accessor :address2
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zip
  attr_accessor :phone
  attr_accessor :fax
  attr_accessor :country

  def initialize(address1 = nil, address2 = nil, city = nil, state = nil, zip = nil, phone = nil, fax = nil, country = nil)
    @address1 = address1
    @address2 = address2
    @city = city
    @state = state
    @zip = zip
    @phone = phone
    @fax = fax
    @country = country
  end
end

# {http://www.docusign.net/API/AccountManagement}RequestError
#   errorCode - Docusign::AccountManagement::ErrorCode
#   description - SOAP::SOAPString
class RequestError
  attr_accessor :errorCode
  attr_accessor :description

  def initialize(errorCode = nil, description = nil)
    @errorCode = errorCode
    @description = description
  end
end

# {http://www.docusign.net/API/AccountManagement}Member
#   memberEmailAddress - SOAP::SOAPString
#   memberUserName - SOAP::SOAPString
#   memberPassword - SOAP::SOAPString
#   memberForgottenPasswordQuestion - SOAP::SOAPString
#   memberForgottenPasswordAnswer - SOAP::SOAPString
#   memberTitle - SOAP::SOAPString
#   memberFirstName - SOAP::SOAPString
#   memberMiddleName - SOAP::SOAPString
#   memberLastName - SOAP::SOAPString
#   memberSuffix - SOAP::SOAPString
#   enableConnectForUser - SOAP::SOAPBoolean
#   memberSettings - Docusign::AccountManagement::MemberSettings
#   returnEncryptedPassword - SOAP::SOAPBoolean
#   memberForgottenPasswordQuestion2 - SOAP::SOAPString
#   memberForgottenPasswordAnswer2 - SOAP::SOAPString
#   memberForgottenPasswordQuestion3 - SOAP::SOAPString
#   memberForgottenPasswordAnswer3 - SOAP::SOAPString
#   memberForgottenPasswordQuestion4 - SOAP::SOAPString
#   memberForgottenPasswordAnswer4 - SOAP::SOAPString
class Member
  attr_accessor :memberEmailAddress
  attr_accessor :memberUserName
  attr_accessor :memberPassword
  attr_accessor :memberForgottenPasswordQuestion
  attr_accessor :memberForgottenPasswordAnswer
  attr_accessor :memberTitle
  attr_accessor :memberFirstName
  attr_accessor :memberMiddleName
  attr_accessor :memberLastName
  attr_accessor :memberSuffix
  attr_accessor :enableConnectForUser
  attr_accessor :memberSettings
  attr_accessor :returnEncryptedPassword
  attr_accessor :memberForgottenPasswordQuestion2
  attr_accessor :memberForgottenPasswordAnswer2
  attr_accessor :memberForgottenPasswordQuestion3
  attr_accessor :memberForgottenPasswordAnswer3
  attr_accessor :memberForgottenPasswordQuestion4
  attr_accessor :memberForgottenPasswordAnswer4

  def initialize(memberEmailAddress = nil, memberUserName = nil, memberPassword = nil, memberForgottenPasswordQuestion = nil, memberForgottenPasswordAnswer = nil, memberTitle = nil, memberFirstName = nil, memberMiddleName = nil, memberLastName = nil, memberSuffix = nil, enableConnectForUser = nil, memberSettings = nil, returnEncryptedPassword = nil, memberForgottenPasswordQuestion2 = nil, memberForgottenPasswordAnswer2 = nil, memberForgottenPasswordQuestion3 = nil, memberForgottenPasswordAnswer3 = nil, memberForgottenPasswordQuestion4 = nil, memberForgottenPasswordAnswer4 = nil)
    @memberEmailAddress = memberEmailAddress
    @memberUserName = memberUserName
    @memberPassword = memberPassword
    @memberForgottenPasswordQuestion = memberForgottenPasswordQuestion
    @memberForgottenPasswordAnswer = memberForgottenPasswordAnswer
    @memberTitle = memberTitle
    @memberFirstName = memberFirstName
    @memberMiddleName = memberMiddleName
    @memberLastName = memberLastName
    @memberSuffix = memberSuffix
    @enableConnectForUser = enableConnectForUser
    @memberSettings = memberSettings
    @returnEncryptedPassword = returnEncryptedPassword
    @memberForgottenPasswordQuestion2 = memberForgottenPasswordQuestion2
    @memberForgottenPasswordAnswer2 = memberForgottenPasswordAnswer2
    @memberForgottenPasswordQuestion3 = memberForgottenPasswordQuestion3
    @memberForgottenPasswordAnswer3 = memberForgottenPasswordAnswer3
    @memberForgottenPasswordQuestion4 = memberForgottenPasswordQuestion4
    @memberForgottenPasswordAnswer4 = memberForgottenPasswordAnswer4
  end
end

# {http://www.docusign.net/API/AccountManagement}MemberSettings
#   canManageAccount - SOAP::SOAPBoolean
#   canSendEnvelope - SOAP::SOAPBoolean
#   canSendAPIRequests - SOAP::SOAPBoolean
#   aPIAccountWideAccess - SOAP::SOAPBoolean
#   enableVaulting - SOAP::SOAPBoolean
#   vaultingMode - SOAP::SOAPString
#   enableTransactionPoint - SOAP::SOAPBoolean
#   enableSequentialSigningAPI - SOAP::SOAPBoolean
#   enableSequentialSigningUI - SOAP::SOAPBoolean
#   enableDSPro - SOAP::SOAPBoolean
#   powerFormAdmin - SOAP::SOAPBoolean
#   powerFormUser - SOAP::SOAPBoolean
#   canEditSharedAddressBook - SOAP::SOAPString
#   canManageTemplates - SOAP::SOAPString
#   enableSignOnPaperOverride - SOAP::SOAPBoolean
#   enableSignerAttachments - SOAP::SOAPBoolean
#   allowSendOnBehalfOf - SOAP::SOAPBoolean
class MemberSettings
  attr_accessor :canManageAccount
  attr_accessor :canSendEnvelope
  attr_accessor :canSendAPIRequests
  attr_accessor :aPIAccountWideAccess
  attr_accessor :enableVaulting
  attr_accessor :vaultingMode
  attr_accessor :enableTransactionPoint
  attr_accessor :enableSequentialSigningAPI
  attr_accessor :enableSequentialSigningUI
  attr_accessor :enableDSPro
  attr_accessor :powerFormAdmin
  attr_accessor :powerFormUser
  attr_accessor :canEditSharedAddressBook
  attr_accessor :canManageTemplates
  attr_accessor :enableSignOnPaperOverride
  attr_accessor :enableSignerAttachments
  attr_accessor :allowSendOnBehalfOf

  def initialize(canManageAccount = nil, canSendEnvelope = nil, canSendAPIRequests = nil, aPIAccountWideAccess = nil, enableVaulting = nil, vaultingMode = nil, enableTransactionPoint = nil, enableSequentialSigningAPI = nil, enableSequentialSigningUI = nil, enableDSPro = nil, powerFormAdmin = nil, powerFormUser = nil, canEditSharedAddressBook = nil, canManageTemplates = nil, enableSignOnPaperOverride = nil, enableSignerAttachments = nil, allowSendOnBehalfOf = nil)
    @canManageAccount = canManageAccount
    @canSendEnvelope = canSendEnvelope
    @canSendAPIRequests = canSendAPIRequests
    @aPIAccountWideAccess = aPIAccountWideAccess
    @enableVaulting = enableVaulting
    @vaultingMode = vaultingMode
    @enableTransactionPoint = enableTransactionPoint
    @enableSequentialSigningAPI = enableSequentialSigningAPI
    @enableSequentialSigningUI = enableSequentialSigningUI
    @enableDSPro = enableDSPro
    @powerFormAdmin = powerFormAdmin
    @powerFormUser = powerFormUser
    @canEditSharedAddressBook = canEditSharedAddressBook
    @canManageTemplates = canManageTemplates
    @enableSignOnPaperOverride = enableSignOnPaperOverride
    @enableSignerAttachments = enableSignerAttachments
    @allowSendOnBehalfOf = allowSendOnBehalfOf
  end
end

# {http://www.docusign.net/API/AccountManagement}ArrayOfMember
class ArrayOfMember < ::Array
end

# {http://www.docusign.net/API/AccountManagement}ArrayOfMemberResult
class ArrayOfMemberResult < ::Array
end

# {http://www.docusign.net/API/AccountManagement}MemberResult
#   userId - SOAP::SOAPString
#   encryptedPassword - SOAP::SOAPString
#   membershipId - SOAP::SOAPString
#   success - SOAP::SOAPBoolean
#   error - Docusign::AccountManagement::RequestError
class MemberResult
  attr_accessor :userId
  attr_accessor :encryptedPassword
  attr_accessor :membershipId
  attr_accessor :success
  attr_accessor :error

  def initialize(userId = nil, encryptedPassword = nil, membershipId = nil, success = nil, error = nil)
    @userId = userId
    @encryptedPassword = encryptedPassword
    @membershipId = membershipId
    @success = success
    @error = error
  end
end

# {http://www.docusign.net/API/AccountManagement}Plan
#   planName - SOAP::SOAPString
#   paymentCycle - Docusign::AccountManagement::PaymentCycle
#   paymentMethod - Docusign::AccountManagement::PaymentMethod
#   perSeatPrice - SOAP::SOAPDecimal
#   otherDiscountPercent - SOAP::SOAPDecimal
#   supportIncidentFee - SOAP::SOAPDecimal
#   supportPlanFee - SOAP::SOAPDecimal
#   includedSeats - SOAP::SOAPInteger
#   enableSupport - SOAP::SOAPBoolean
#   pgpId - SOAP::SOAPString
#   seatDiscounts - Docusign::AccountManagement::ArrayOfSeatDiscount
class Plan
  attr_accessor :planName
  attr_accessor :paymentCycle
  attr_accessor :paymentMethod
  attr_accessor :perSeatPrice
  attr_accessor :otherDiscountPercent
  attr_accessor :supportIncidentFee
  attr_accessor :supportPlanFee
  attr_accessor :includedSeats
  attr_accessor :enableSupport
  attr_accessor :pgpId
  attr_accessor :seatDiscounts

  def initialize(planName = nil, paymentCycle = nil, paymentMethod = nil, perSeatPrice = nil, otherDiscountPercent = nil, supportIncidentFee = nil, supportPlanFee = nil, includedSeats = nil, enableSupport = nil, pgpId = nil, seatDiscounts = nil)
    @planName = planName
    @paymentCycle = paymentCycle
    @paymentMethod = paymentMethod
    @perSeatPrice = perSeatPrice
    @otherDiscountPercent = otherDiscountPercent
    @supportIncidentFee = supportIncidentFee
    @supportPlanFee = supportPlanFee
    @includedSeats = includedSeats
    @enableSupport = enableSupport
    @pgpId = pgpId
    @seatDiscounts = seatDiscounts
  end
end

# {http://www.docusign.net/API/AccountManagement}ArrayOfSeatDiscount
class ArrayOfSeatDiscount < ::Array
end

# {http://www.docusign.net/API/AccountManagement}SeatDiscount
#   beginSeatCount - SOAP::SOAPInteger
#   endSeatCount - SOAP::SOAPInteger
#   seatDiscountPercent - SOAP::SOAPDecimal
class SeatDiscount
  attr_accessor :beginSeatCount
  attr_accessor :endSeatCount
  attr_accessor :seatDiscountPercent

  def initialize(beginSeatCount = nil, endSeatCount = nil, seatDiscountPercent = nil)
    @beginSeatCount = beginSeatCount
    @endSeatCount = endSeatCount
    @seatDiscountPercent = seatDiscountPercent
  end
end

# {http://www.docusign.net/API/AccountManagement}ArrayOfPlan
class ArrayOfPlan < ::Array
end

# {http://www.docusign.net/API/AccountManagement}ArrayOfPlanGroup
class ArrayOfPlanGroup < ::Array
end

# {http://www.docusign.net/API/AccountManagement}PlanGroup
#   planGroupName - SOAP::SOAPString
#   planGroupPlans - Docusign::AccountManagement::ArrayOfPlanGroupPlan
class PlanGroup
  attr_accessor :planGroupName
  attr_accessor :planGroupPlans

  def initialize(planGroupName = nil, planGroupPlans = nil)
    @planGroupName = planGroupName
    @planGroupPlans = planGroupPlans
  end
end

# {http://www.docusign.net/API/AccountManagement}ArrayOfPlanGroupPlan
class ArrayOfPlanGroupPlan < ::Array
end

# {http://www.docusign.net/API/AccountManagement}PlanGroupPlan
#   planName - SOAP::SOAPString
#   pgp - SOAP::SOAPString
#   paymentMethod - Docusign::AccountManagement::PaymentMethod
class PlanGroupPlan
  attr_accessor :planName
  attr_accessor :pgp
  attr_accessor :paymentMethod

  def initialize(planName = nil, pgp = nil, paymentMethod = nil)
    @planName = planName
    @pgp = pgp
    @paymentMethod = paymentMethod
  end
end

# {http://www.docusign.net/API/AccountManagement}ArrayOfMembershipSummary
class ArrayOfMembershipSummary < ::Array
end

# {http://www.docusign.net/API/AccountManagement}MembershipSummary
#   accountName - SOAP::SOAPString
#   accountId - SOAP::SOAPString
#   userName - SOAP::SOAPString
#   userId - SOAP::SOAPString
#   userType - Docusign::AccountManagement::UserType
#   userStatus - Docusign::AccountManagement::UserStatus
#   planName - SOAP::SOAPString
#   pgp - SOAP::SOAPString
class MembershipSummary
  attr_accessor :accountName
  attr_accessor :accountId
  attr_accessor :userName
  attr_accessor :userId
  attr_accessor :userType
  attr_accessor :userStatus
  attr_accessor :planName
  attr_accessor :pgp

  def initialize(accountName = nil, accountId = nil, userName = nil, userId = nil, userType = nil, userStatus = nil, planName = nil, pgp = nil)
    @accountName = accountName
    @accountId = accountId
    @userName = userName
    @userId = userId
    @userType = userType
    @userStatus = userStatus
    @planName = planName
    @pgp = pgp
  end
end

# {http://www.docusign.net/API/AccountManagement}ArrayOfString
class ArrayOfString < ::Array
end

# {http://www.docusign.net/API/AccountManagement}ChangePasswordArg
#   emailAddress - SOAP::SOAPString
#   oldPassword - SOAP::SOAPString
#   newPassword - SOAP::SOAPString
#   forgottenPasswordQuestion - SOAP::SOAPString
#   forgottenPasswordAnswer - SOAP::SOAPString
#   forgottenPasswordQuestion2 - SOAP::SOAPString
#   forgottenPasswordAnswer2 - SOAP::SOAPString
#   forgottenPasswordQuestion3 - SOAP::SOAPString
#   forgottenPasswordAnswer3 - SOAP::SOAPString
#   forgottenPasswordQuestion4 - SOAP::SOAPString
#   forgottenPasswordAnswer4 - SOAP::SOAPString
class ChangePasswordArg
  attr_accessor :emailAddress
  attr_accessor :oldPassword
  attr_accessor :newPassword
  attr_accessor :forgottenPasswordQuestion
  attr_accessor :forgottenPasswordAnswer
  attr_accessor :forgottenPasswordQuestion2
  attr_accessor :forgottenPasswordAnswer2
  attr_accessor :forgottenPasswordQuestion3
  attr_accessor :forgottenPasswordAnswer3
  attr_accessor :forgottenPasswordQuestion4
  attr_accessor :forgottenPasswordAnswer4

  def initialize(emailAddress = nil, oldPassword = nil, newPassword = nil, forgottenPasswordQuestion = nil, forgottenPasswordAnswer = nil, forgottenPasswordQuestion2 = nil, forgottenPasswordAnswer2 = nil, forgottenPasswordQuestion3 = nil, forgottenPasswordAnswer3 = nil, forgottenPasswordQuestion4 = nil, forgottenPasswordAnswer4 = nil)
    @emailAddress = emailAddress
    @oldPassword = oldPassword
    @newPassword = newPassword
    @forgottenPasswordQuestion = forgottenPasswordQuestion
    @forgottenPasswordAnswer = forgottenPasswordAnswer
    @forgottenPasswordQuestion2 = forgottenPasswordQuestion2
    @forgottenPasswordAnswer2 = forgottenPasswordAnswer2
    @forgottenPasswordQuestion3 = forgottenPasswordQuestion3
    @forgottenPasswordAnswer3 = forgottenPasswordAnswer3
    @forgottenPasswordQuestion4 = forgottenPasswordQuestion4
    @forgottenPasswordAnswer4 = forgottenPasswordAnswer4
  end
end

# {http://www.docusign.net/API/AccountManagement}GetSignaturesArg
#   includeBytes - SOAP::SOAPBoolean
class GetSignaturesArg
  attr_accessor :includeBytes

  def initialize(includeBytes = nil)
    @includeBytes = includeBytes
  end
end

# {http://www.docusign.net/API/AccountManagement}ArrayOfSignature
class ArrayOfSignature < ::Array
end

# {http://www.docusign.net/API/AccountManagement}Signature
#   stampFont - SOAP::SOAPString
#   signatureType - Docusign::AccountManagement::SignatureType
#   signatureName - SOAP::SOAPString
#   signatureText - SOAP::SOAPString
#   signatureImage - Docusign::AccountManagement::Image
#   initialsText - SOAP::SOAPString
#   initialsImage - Docusign::AccountManagement::Image
#   created - SOAP::SOAPDateTime
#   adopted - SOAP::SOAPDateTime
class Signature
  attr_accessor :stampFont
  attr_accessor :signatureType
  attr_accessor :signatureName
  attr_accessor :signatureText
  attr_accessor :signatureImage
  attr_accessor :initialsText
  attr_accessor :initialsImage
  attr_accessor :created
  attr_accessor :adopted

  def initialize(stampFont = nil, signatureType = nil, signatureName = nil, signatureText = nil, signatureImage = nil, initialsText = nil, initialsImage = nil, created = nil, adopted = nil)
    @stampFont = stampFont
    @signatureType = signatureType
    @signatureName = signatureName
    @signatureText = signatureText
    @signatureImage = signatureImage
    @initialsText = initialsText
    @initialsImage = initialsImage
    @created = created
    @adopted = adopted
  end
end

# {http://www.docusign.net/API/AccountManagement}Image
#   mimeType - SOAP::SOAPString
#   imageData - SOAP::SOAPBase64
class Image
  attr_accessor :mimeType
  attr_accessor :imageData

  def initialize(mimeType = nil, imageData = nil)
    @mimeType = mimeType
    @imageData = imageData
  end
end

# {http://www.docusign.net/API/AccountManagement}SetSignatureImagesArg
#   signatureName - SOAP::SOAPString
#   signatureImage - Docusign::AccountManagement::Image
#   initialsImage - Docusign::AccountManagement::Image
class SetSignatureImagesArg
  attr_accessor :signatureName
  attr_accessor :signatureImage
  attr_accessor :initialsImage

  def initialize(signatureName = nil, signatureImage = nil, initialsImage = nil)
    @signatureName = signatureName
    @signatureImage = signatureImage
    @initialsImage = initialsImage
  end
end

# {http://www.docusign.net/API/AccountManagement}ErrorCode
class ErrorCode < ::String
  Account_Is_Already_Activated_For_Salesforce = ErrorCode.new("Account_Is_Already_Activated_For_Salesforce")
  Account_Requires_User_Name_And_Password_For_Activation = ErrorCode.new("Account_Requires_User_Name_And_Password_For_Activation")
  CreditCard_Auth_Failed = ErrorCode.new("CreditCard_Auth_Failed")
  Credit_Card_Expiration = ErrorCode.new("Credit_Card_Expiration")
  Distributor_Not_Enabled_For_AppToken = ErrorCode.new("Distributor_Not_Enabled_For_AppToken")
  Hourly_API_Invocation_Limit_Exceeded = ErrorCode.new("Hourly_API_Invocation_Limit_Exceeded")
  Invalid_Account = ErrorCode.new("Invalid_Account")
  Invalid_Account_ID = ErrorCode.new("Invalid_Account_ID")
  Invalid_Account_Member = ErrorCode.new("Invalid_Account_Member")
  Invalid_AppToken = ErrorCode.new("Invalid_AppToken")
  Invalid_CanEditSharedAddressBook_Value = ErrorCode.new("Invalid_CanEditSharedAddressBook_Value")
  Invalid_CanManageTemplates_Value = ErrorCode.new("Invalid_CanManageTemplates_Value")
  Invalid_Configuration_Number = ErrorCode.new("Invalid_Configuration_Number")
  Invalid_Credit_Card = ErrorCode.new("Invalid_Credit_Card")
  Invalid_Credit_Card_Type = ErrorCode.new("Invalid_Credit_Card_Type")
  Invalid_Distributor_For_Account = ErrorCode.new("Invalid_Distributor_For_Account")
  Invalid_Distributor_Selected = ErrorCode.new("Invalid_Distributor_Selected")
  Invalid_DocuSign_Connect_Configuration_For_Account = ErrorCode.new("Invalid_DocuSign_Connect_Configuration_For_Account")
  Invalid_Edit_Membership = ErrorCode.new("Invalid_Edit_Membership")
  Invalid_Edit_User = ErrorCode.new("Invalid_Edit_User")
  Invalid_Login = ErrorCode.new("Invalid_Login")
  Invalid_Member_Data = ErrorCode.new("Invalid_Member_Data")
  Invalid_Member_Email = ErrorCode.new("Invalid_Member_Email")
  Invalid_Member_User_Name = ErrorCode.new("Invalid_Member_User_Name")
  Invalid_Membership = ErrorCode.new("Invalid_Membership")
  Invalid_Membership_ID = ErrorCode.new("Invalid_Membership_ID")
  Invalid_PGP = ErrorCode.new("Invalid_PGP")
  Invalid_PGP_For_Distributor = ErrorCode.new("Invalid_PGP_For_Distributor")
  Invalid_Password_Format = ErrorCode.new("Invalid_Password_Format")
  Invalid_Plan_Retired = ErrorCode.new("Invalid_Plan_Retired")
  Invalid_Request = ErrorCode.new("Invalid_Request")
  Invalid_Salesforce_Credentials = ErrorCode.new("Invalid_Salesforce_Credentials")
  Invalid_Salesforce_External_Instance_ID = ErrorCode.new("Invalid_Salesforce_External_Instance_ID")
  Invalid_Successor_Plan = ErrorCode.new("Invalid_Successor_Plan")
  Invalid_User = ErrorCode.new("Invalid_User")
  Invalid_User_ID = ErrorCode.new("Invalid_User_ID")
  Member_Email_And_User_Name_Already_Exists = ErrorCode.new("Member_Email_And_User_Name_Already_Exists")
  Member_Email_And_User_Name_Already_Exists_For_This_Account = ErrorCode.new("Member_Email_And_User_Name_Already_Exists_For_This_Account")
  Member_Email_And_User_Name_Awaiting_Activation = ErrorCode.new("Member_Email_And_User_Name_Awaiting_Activation")
  Member_Email_Not_Allowed = ErrorCode.new("Member_Email_Not_Allowed")
  Member_Forgotten_Password_Answer_Blank = ErrorCode.new("Member_Forgotten_Password_Answer_Blank")
  Member_Forgotten_Password_Question_Blank = ErrorCode.new("Member_Forgotten_Password_Question_Blank")
  Member_Password_Blank = ErrorCode.new("Member_Password_Blank")
  Not_Authorized = ErrorCode.new("Not_Authorized")
  Partner_Authentication_Failed = ErrorCode.new("Partner_Authentication_Failed")
  Plan_Group_Not_Enabled_For_Distributor = ErrorCode.new("Plan_Group_Not_Enabled_For_Distributor")
  Unspecified_Error = ErrorCode.new("Unspecified_Error")
  User_Is_Not_An_Account_Manager = ErrorCode.new("User_Is_Not_An_Account_Manager")
end

# {http://www.docusign.net/API/AccountManagement}PaymentCycle
class PaymentCycle < ::String
  Annually = PaymentCycle.new("Annually")
  Monthly = PaymentCycle.new("Monthly")
end

# {http://www.docusign.net/API/AccountManagement}PaymentMethod
class PaymentMethod < ::String
  CreditCard = PaymentMethod.new("CreditCard")
  FreeTrial = PaymentMethod.new("FreeTrial")
  Freemium = PaymentMethod.new("Freemium")
  Premium = PaymentMethod.new("Premium")
  PurchaseOrder = PaymentMethod.new("PurchaseOrder")
end

# {http://www.docusign.net/API/AccountManagement}UserType
class UserType < ::String
  CompanyUser = UserType.new("CompanyUser")
  Recipient = UserType.new("Recipient")
end

# {http://www.docusign.net/API/AccountManagement}UserStatus
class UserStatus < ::String
  Active = UserStatus.new("Active")
  Closed = UserStatus.new("Closed")
  Created = UserStatus.new("Created")
end

# {http://www.docusign.net/API/AccountManagement}SignatureType
class SignatureType < ::String
  Drawn = SignatureType.new("Drawn")
  Imported = SignatureType.new("Imported")
  RubberStamp = SignatureType.new("RubberStamp")
end

# {http://www.docusign.net/API/AccountManagement}UpgradeRecipientAccount
#   distributorCode - SOAP::SOAPString
#   distributorPassword - SOAP::SOAPString
#   accountId - SOAP::SOAPString
#   userId - SOAP::SOAPString
#   pgp - SOAP::SOAPString
#   accountName - SOAP::SOAPString
#   creditCardInformation - Docusign::AccountManagement::CreditCardInformation
#   referralInformation - Docusign::AccountManagement::ReferralInformation
#   accountSettings - Docusign::AccountManagement::AccountSettings
#   addressInformation - Docusign::AccountManagement::AddressInformation
class UpgradeRecipientAccount
  attr_accessor :distributorCode
  attr_accessor :distributorPassword
  attr_accessor :accountId
  attr_accessor :userId
  attr_accessor :pgp
  attr_accessor :accountName
  attr_accessor :creditCardInformation
  attr_accessor :referralInformation
  attr_accessor :accountSettings
  attr_accessor :addressInformation

  def initialize(distributorCode = nil, distributorPassword = nil, accountId = nil, userId = nil, pgp = nil, accountName = nil, creditCardInformation = nil, referralInformation = nil, accountSettings = nil, addressInformation = nil)
    @distributorCode = distributorCode
    @distributorPassword = distributorPassword
    @accountId = accountId
    @userId = userId
    @pgp = pgp
    @accountName = accountName
    @creditCardInformation = creditCardInformation
    @referralInformation = referralInformation
    @accountSettings = accountSettings
    @addressInformation = addressInformation
  end
end

# {http://www.docusign.net/API/AccountManagement}UpgradeRecipientAccountResponse
#   upgradeRecipientAccountResult - Docusign::AccountManagement::UpgradeRecipientAccountResponse::UpgradeRecipientAccountResult
class UpgradeRecipientAccountResponse

  # inner class for member: UpgradeRecipientAccountResult
  # {http://www.docusign.net/API/AccountManagement}UpgradeRecipientAccountResult
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class UpgradeRecipientAccountResult
    attr_accessor :success
    attr_accessor :error

    def initialize(success = nil, error = nil)
      @success = success
      @error = error
    end
  end

  attr_accessor :upgradeRecipientAccountResult

  def initialize(upgradeRecipientAccountResult = nil)
    @upgradeRecipientAccountResult = upgradeRecipientAccountResult
  end
end

# {http://www.docusign.net/API/AccountManagement}NewAccount
#   accountName - SOAP::SOAPString
#   distributorCode - SOAP::SOAPString
#   distributorPassword - SOAP::SOAPString
#   pgp - SOAP::SOAPString
#   creditCardInformation - Docusign::AccountManagement::CreditCardInformation
#   referralInformation - Docusign::AccountManagement::ReferralInformation
#   accountSettings - Docusign::AccountManagement::AccountSettings
#   member - Docusign::AccountManagement::Member
#   addressInformation - Docusign::AccountManagement::AddressInformation
class NewAccount
  attr_accessor :accountName
  attr_accessor :distributorCode
  attr_accessor :distributorPassword
  attr_accessor :pgp
  attr_accessor :creditCardInformation
  attr_accessor :referralInformation
  attr_accessor :accountSettings
  attr_accessor :member
  attr_accessor :addressInformation

  def initialize(accountName = nil, distributorCode = nil, distributorPassword = nil, pgp = nil, creditCardInformation = nil, referralInformation = nil, accountSettings = nil, member = nil, addressInformation = nil)
    @accountName = accountName
    @distributorCode = distributorCode
    @distributorPassword = distributorPassword
    @pgp = pgp
    @creditCardInformation = creditCardInformation
    @referralInformation = referralInformation
    @accountSettings = accountSettings
    @member = member
    @addressInformation = addressInformation
  end
end

# {http://www.docusign.net/API/AccountManagement}NewAccountResponse
#   newAccountResult - Docusign::AccountManagement::NewAccountResponse::NewAccountResult
class NewAccountResponse

  # inner class for member: NewAccountResult
  # {http://www.docusign.net/API/AccountManagement}NewAccountResult
  #   accountId - SOAP::SOAPString
  #   siteId - SOAP::SOAPString
  #   userId - SOAP::SOAPString
  #   membershipId - SOAP::SOAPString
  #   encryptedPassword - SOAP::SOAPString
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class NewAccountResult
    attr_accessor :accountId
    attr_accessor :siteId
    attr_accessor :userId
    attr_accessor :membershipId
    attr_accessor :encryptedPassword
    attr_accessor :success
    attr_accessor :error

    def initialize(accountId = nil, siteId = nil, userId = nil, membershipId = nil, encryptedPassword = nil, success = nil, error = nil)
      @accountId = accountId
      @siteId = siteId
      @userId = userId
      @membershipId = membershipId
      @encryptedPassword = encryptedPassword
      @success = success
      @error = error
    end
  end

  attr_accessor :newAccountResult

  def initialize(newAccountResult = nil)
    @newAccountResult = newAccountResult
  end
end

# {http://www.docusign.net/API/AccountManagement}AddMembersToAccount
#   accountId - SOAP::SOAPString
#   members - Docusign::AccountManagement::ArrayOfMember
class AddMembersToAccount
  attr_accessor :accountId
  attr_accessor :members

  def initialize(accountId = nil, members = nil)
    @accountId = accountId
    @members = members
  end
end

# {http://www.docusign.net/API/AccountManagement}AddMembersToAccountResponse
#   addMembersToAccountResult - Docusign::AccountManagement::AddMembersToAccountResponse::AddMembersToAccountResult
class AddMembersToAccountResponse

  # inner class for member: AddMembersToAccountResult
  # {http://www.docusign.net/API/AccountManagement}AddMembersToAccountResult
  #   members - Docusign::AccountManagement::ArrayOfMemberResult
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class AddMembersToAccountResult
    attr_accessor :members
    attr_accessor :success
    attr_accessor :error

    def initialize(members = nil, success = nil, error = nil)
      @members = members
      @success = success
      @error = error
    end
  end

  attr_accessor :addMembersToAccountResult

  def initialize(addMembersToAccountResult = nil)
    @addMembersToAccountResult = addMembersToAccountResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetPlanPricingInformation
#   distributorCode - SOAP::SOAPString
#   distributorPassword - SOAP::SOAPString
#   pgp - SOAP::SOAPString
class GetPlanPricingInformation
  attr_accessor :distributorCode
  attr_accessor :distributorPassword
  attr_accessor :pgp

  def initialize(distributorCode = nil, distributorPassword = nil, pgp = nil)
    @distributorCode = distributorCode
    @distributorPassword = distributorPassword
    @pgp = pgp
  end
end

# {http://www.docusign.net/API/AccountManagement}GetPlanPricingInformationResponse
#   getPlanPricingInformationResult - Docusign::AccountManagement::GetPlanPricingInformationResponse::GetPlanPricingInformationResult
class GetPlanPricingInformationResponse

  # inner class for member: GetPlanPricingInformationResult
  # {http://www.docusign.net/API/AccountManagement}GetPlanPricingInformationResult
  #   plan - Docusign::AccountManagement::Plan
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetPlanPricingInformationResult
    attr_accessor :plan
    attr_accessor :success
    attr_accessor :error

    def initialize(plan = nil, success = nil, error = nil)
      @plan = plan
      @success = success
      @error = error
    end
  end

  attr_accessor :getPlanPricingInformationResult

  def initialize(getPlanPricingInformationResult = nil)
    @getPlanPricingInformationResult = getPlanPricingInformationResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetSuccessorPlanInformation
#   distributorCode - SOAP::SOAPString
#   distributorPassword - SOAP::SOAPString
#   accountId - SOAP::SOAPString
class GetSuccessorPlanInformation
  attr_accessor :distributorCode
  attr_accessor :distributorPassword
  attr_accessor :accountId

  def initialize(distributorCode = nil, distributorPassword = nil, accountId = nil)
    @distributorCode = distributorCode
    @distributorPassword = distributorPassword
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/AccountManagement}GetSuccessorPlanInformationResponse
#   getSuccessorPlanInformationResult - Docusign::AccountManagement::GetSuccessorPlanInformationResponse::GetSuccessorPlanInformationResult
class GetSuccessorPlanInformationResponse

  # inner class for member: GetSuccessorPlanInformationResult
  # {http://www.docusign.net/API/AccountManagement}GetSuccessorPlanInformationResult
  #   currentPlan - Docusign::AccountManagement::Plan
  #   successorPlans - Docusign::AccountManagement::ArrayOfPlan
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetSuccessorPlanInformationResult
    attr_accessor :currentPlan
    attr_accessor :successorPlans
    attr_accessor :success
    attr_accessor :error

    def initialize(currentPlan = nil, successorPlans = nil, success = nil, error = nil)
      @currentPlan = currentPlan
      @successorPlans = successorPlans
      @success = success
      @error = error
    end
  end

  attr_accessor :getSuccessorPlanInformationResult

  def initialize(getSuccessorPlanInformationResult = nil)
    @getSuccessorPlanInformationResult = getSuccessorPlanInformationResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetPlanGroupInformation
#   distributorCode - SOAP::SOAPString
#   distributorPassword - SOAP::SOAPString
class GetPlanGroupInformation
  attr_accessor :distributorCode
  attr_accessor :distributorPassword

  def initialize(distributorCode = nil, distributorPassword = nil)
    @distributorCode = distributorCode
    @distributorPassword = distributorPassword
  end
end

# {http://www.docusign.net/API/AccountManagement}GetPlanGroupInformationResponse
#   getPlanGroupInformationResult - Docusign::AccountManagement::GetPlanGroupInformationResponse::GetPlanGroupInformationResult
class GetPlanGroupInformationResponse

  # inner class for member: GetPlanGroupInformationResult
  # {http://www.docusign.net/API/AccountManagement}GetPlanGroupInformationResult
  #   planGroups - Docusign::AccountManagement::ArrayOfPlanGroup
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetPlanGroupInformationResult
    attr_accessor :planGroups
    attr_accessor :success
    attr_accessor :error

    def initialize(planGroups = nil, success = nil, error = nil)
      @planGroups = planGroups
      @success = success
      @error = error
    end
  end

  attr_accessor :getPlanGroupInformationResult

  def initialize(getPlanGroupInformationResult = nil)
    @getPlanGroupInformationResult = getPlanGroupInformationResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetMembershipSummary
#   email - SOAP::SOAPString
class GetMembershipSummary
  attr_accessor :email

  def initialize(email = nil)
    @email = email
  end
end

# {http://www.docusign.net/API/AccountManagement}GetMembershipSummaryResponse
#   getMembershipSummaryResult - Docusign::AccountManagement::GetMembershipSummaryResponse::GetMembershipSummaryResult
class GetMembershipSummaryResponse

  # inner class for member: GetMembershipSummaryResult
  # {http://www.docusign.net/API/AccountManagement}GetMembershipSummaryResult
  #   membershipSummaries - Docusign::AccountManagement::ArrayOfMembershipSummary
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetMembershipSummaryResult
    attr_accessor :membershipSummaries
    attr_accessor :success
    attr_accessor :error

    def initialize(membershipSummaries = nil, success = nil, error = nil)
      @membershipSummaries = membershipSummaries
      @success = success
      @error = error
    end
  end

  attr_accessor :getMembershipSummaryResult

  def initialize(getMembershipSummaryResult = nil)
    @getMembershipSummaryResult = getMembershipSummaryResult
  end
end

# {http://www.docusign.net/API/AccountManagement}ChangeAccountPricePlan
#   distributorCode - SOAP::SOAPString
#   distributorPassword - SOAP::SOAPString
#   accountId - SOAP::SOAPString
#   pgp - SOAP::SOAPString
#   enableSupport - SOAP::SOAPBoolean
#   includedSeats - SOAP::SOAPInt
#   creditCardInformation - Docusign::AccountManagement::CreditCardInformation
#   addressInformation - Docusign::AccountManagement::AddressInformation
class ChangeAccountPricePlan
  attr_accessor :distributorCode
  attr_accessor :distributorPassword
  attr_accessor :accountId
  attr_accessor :pgp
  attr_accessor :enableSupport
  attr_accessor :includedSeats
  attr_accessor :creditCardInformation
  attr_accessor :addressInformation

  def initialize(distributorCode = nil, distributorPassword = nil, accountId = nil, pgp = nil, enableSupport = nil, includedSeats = nil, creditCardInformation = nil, addressInformation = nil)
    @distributorCode = distributorCode
    @distributorPassword = distributorPassword
    @accountId = accountId
    @pgp = pgp
    @enableSupport = enableSupport
    @includedSeats = includedSeats
    @creditCardInformation = creditCardInformation
    @addressInformation = addressInformation
  end
end

# {http://www.docusign.net/API/AccountManagement}ChangeAccountPricePlanResponse
#   changeAccountPricePlanResult - Docusign::AccountManagement::ChangeAccountPricePlanResponse::ChangeAccountPricePlanResult
class ChangeAccountPricePlanResponse

  # inner class for member: ChangeAccountPricePlanResult
  # {http://www.docusign.net/API/AccountManagement}ChangeAccountPricePlanResult
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class ChangeAccountPricePlanResult
    attr_accessor :success
    attr_accessor :error

    def initialize(success = nil, error = nil)
      @success = success
      @error = error
    end
  end

  attr_accessor :changeAccountPricePlanResult

  def initialize(changeAccountPricePlanResult = nil)
    @changeAccountPricePlanResult = changeAccountPricePlanResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetProvisioningInformation
#   appToken - SOAP::SOAPString
class GetProvisioningInformation
  attr_accessor :appToken

  def initialize(appToken = nil)
    @appToken = appToken
  end
end

# {http://www.docusign.net/API/AccountManagement}GetProvisioningInformationResponse
#   getProvisioningInformationResult - Docusign::AccountManagement::GetProvisioningInformationResponse::GetProvisioningInformationResult
class GetProvisioningInformationResponse

  # inner class for member: GetProvisioningInformationResult
  # {http://www.docusign.net/API/AccountManagement}GetProvisioningInformationResult
  #   distributorCode - SOAP::SOAPString
  #   distributorPassword - SOAP::SOAPString
  #   pgp - SOAP::SOAPString
  #   planPromoText - SOAP::SOAPString
  #   defaultConnectConfigurationId - SOAP::SOAPInteger
  #   passwordRuleText - SOAP::SOAPString
  #   purchaseOrderOrPromoAllowed - SOAP::SOAPBoolean
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetProvisioningInformationResult
    attr_accessor :distributorCode
    attr_accessor :distributorPassword
    attr_accessor :pgp
    attr_accessor :planPromoText
    attr_accessor :defaultConnectConfigurationId
    attr_accessor :passwordRuleText
    attr_accessor :purchaseOrderOrPromoAllowed
    attr_accessor :success
    attr_accessor :error

    def initialize(distributorCode = nil, distributorPassword = nil, pgp = nil, planPromoText = nil, defaultConnectConfigurationId = nil, passwordRuleText = nil, purchaseOrderOrPromoAllowed = nil, success = nil, error = nil)
      @distributorCode = distributorCode
      @distributorPassword = distributorPassword
      @pgp = pgp
      @planPromoText = planPromoText
      @defaultConnectConfigurationId = defaultConnectConfigurationId
      @passwordRuleText = passwordRuleText
      @purchaseOrderOrPromoAllowed = purchaseOrderOrPromoAllowed
      @success = success
      @error = error
    end
  end

  attr_accessor :getProvisioningInformationResult

  def initialize(getProvisioningInformationResult = nil)
    @getProvisioningInformationResult = getProvisioningInformationResult
  end
end

# {http://www.docusign.net/API/AccountManagement}SetConnectCredentials
#   accountId - SOAP::SOAPString
#   connectUsername - SOAP::SOAPString
#   connectPassword - SOAP::SOAPString
#   connectConfigurationId - SOAP::SOAPInt
#   salesforceEnvironment - SOAP::SOAPString
class SetConnectCredentials
  attr_accessor :accountId
  attr_accessor :connectUsername
  attr_accessor :connectPassword
  attr_accessor :connectConfigurationId
  attr_accessor :salesforceEnvironment

  def initialize(accountId = nil, connectUsername = nil, connectPassword = nil, connectConfigurationId = nil, salesforceEnvironment = nil)
    @accountId = accountId
    @connectUsername = connectUsername
    @connectPassword = connectPassword
    @connectConfigurationId = connectConfigurationId
    @salesforceEnvironment = salesforceEnvironment
  end
end

# {http://www.docusign.net/API/AccountManagement}SetConnectCredentialsResponse
#   setConnectCredentialsResult - Docusign::AccountManagement::SetConnectCredentialsResponse::SetConnectCredentialsResult
class SetConnectCredentialsResponse

  # inner class for member: SetConnectCredentialsResult
  # {http://www.docusign.net/API/AccountManagement}SetConnectCredentialsResult
  #   connectTestResult - SOAP::SOAPString
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class SetConnectCredentialsResult
    attr_accessor :connectTestResult
    attr_accessor :success
    attr_accessor :error

    def initialize(connectTestResult = nil, success = nil, error = nil)
      @connectTestResult = connectTestResult
      @success = success
      @error = error
    end
  end

  attr_accessor :setConnectCredentialsResult

  def initialize(setConnectCredentialsResult = nil)
    @setConnectCredentialsResult = setConnectCredentialsResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetPlanType
#   accountId - SOAP::SOAPString
class GetPlanType
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/AccountManagement}GetPlanTypeResponse
#   getPlanTypeResult - Docusign::AccountManagement::GetPlanTypeResponse::GetPlanTypeResult
class GetPlanTypeResponse

  # inner class for member: GetPlanTypeResult
  # {http://www.docusign.net/API/AccountManagement}GetPlanTypeResult
  #   logicalPlanType - SOAP::SOAPString
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetPlanTypeResult
    attr_accessor :logicalPlanType
    attr_accessor :success
    attr_accessor :error

    def initialize(logicalPlanType = nil, success = nil, error = nil)
      @logicalPlanType = logicalPlanType
      @success = success
      @error = error
    end
  end

  attr_accessor :getPlanTypeResult

  def initialize(getPlanTypeResult = nil)
    @getPlanTypeResult = getPlanTypeResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetAccountInformation
#   accountId - SOAP::SOAPString
class GetAccountInformation
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/AccountManagement}GetAccountInformationResponse
#   getAccountInformationResult - Docusign::AccountManagement::GetAccountInformationResponse::GetAccountInformationResult
class GetAccountInformationResponse

  # inner class for member: GetAccountInformationResult
  # {http://www.docusign.net/API/AccountManagement}GetAccountInformationResult
  #   currentPlanId - SOAP::SOAPString
  #   currentPlanName - SOAP::SOAPString
  #   currentPlanStartDate - SOAP::SOAPDateTime
  #   currentPlanEndDate - SOAP::SOAPDateTime
  #   currentBillingPeriodStartDate - SOAP::SOAPDateTime
  #   currentBillingPeriodEndDate - SOAP::SOAPDateTime
  #   currentBillingPeriodEnvelopesSent - SOAP::SOAPInteger
  #   currentBillingPeriodEnvelopesAllowed - SOAP::SOAPInteger
  #   accountSuspensionStatus - SOAP::SOAPString
  #   accountSuspensionDate - SOAP::SOAPDateTime
  #   accountName - SOAP::SOAPString
  #   externalAccountId - SOAP::SOAPString
  #   connectPermission - SOAP::SOAPString
  #   docusignLandingUrl - SOAP::SOAPString
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetAccountInformationResult
    attr_accessor :currentPlanId
    attr_accessor :currentPlanName
    attr_accessor :currentPlanStartDate
    attr_accessor :currentPlanEndDate
    attr_accessor :currentBillingPeriodStartDate
    attr_accessor :currentBillingPeriodEndDate
    attr_accessor :currentBillingPeriodEnvelopesSent
    attr_accessor :currentBillingPeriodEnvelopesAllowed
    attr_accessor :accountSuspensionStatus
    attr_accessor :accountSuspensionDate
    attr_accessor :accountName
    attr_accessor :externalAccountId
    attr_accessor :connectPermission
    attr_accessor :docusignLandingUrl
    attr_accessor :success
    attr_accessor :error

    def initialize(currentPlanId = nil, currentPlanName = nil, currentPlanStartDate = nil, currentPlanEndDate = nil, currentBillingPeriodStartDate = nil, currentBillingPeriodEndDate = nil, currentBillingPeriodEnvelopesSent = nil, currentBillingPeriodEnvelopesAllowed = nil, accountSuspensionStatus = nil, accountSuspensionDate = nil, accountName = nil, externalAccountId = nil, connectPermission = nil, docusignLandingUrl = nil, success = nil, error = nil)
      @currentPlanId = currentPlanId
      @currentPlanName = currentPlanName
      @currentPlanStartDate = currentPlanStartDate
      @currentPlanEndDate = currentPlanEndDate
      @currentBillingPeriodStartDate = currentBillingPeriodStartDate
      @currentBillingPeriodEndDate = currentBillingPeriodEndDate
      @currentBillingPeriodEnvelopesSent = currentBillingPeriodEnvelopesSent
      @currentBillingPeriodEnvelopesAllowed = currentBillingPeriodEnvelopesAllowed
      @accountSuspensionStatus = accountSuspensionStatus
      @accountSuspensionDate = accountSuspensionDate
      @accountName = accountName
      @externalAccountId = externalAccountId
      @connectPermission = connectPermission
      @docusignLandingUrl = docusignLandingUrl
      @success = success
      @error = error
    end
  end

  attr_accessor :getAccountInformationResult

  def initialize(getAccountInformationResult = nil)
    @getAccountInformationResult = getAccountInformationResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetAccountDistributorCode
#   accountId - SOAP::SOAPString
class GetAccountDistributorCode
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/AccountManagement}GetAccountDistributorCodeResponse
#   getAccountDistributorCodeResult - Docusign::AccountManagement::GetAccountDistributorCodeResponse::GetAccountDistributorCodeResult
class GetAccountDistributorCodeResponse

  # inner class for member: GetAccountDistributorCodeResult
  # {http://www.docusign.net/API/AccountManagement}GetAccountDistributorCodeResult
  #   distributorCode - SOAP::SOAPString
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetAccountDistributorCodeResult
    attr_accessor :distributorCode
    attr_accessor :success
    attr_accessor :error

    def initialize(distributorCode = nil, success = nil, error = nil)
      @distributorCode = distributorCode
      @success = success
      @error = error
    end
  end

  attr_accessor :getAccountDistributorCodeResult

  def initialize(getAccountDistributorCodeResult = nil)
    @getAccountDistributorCodeResult = getAccountDistributorCodeResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetConnectCredentials
#   accountId - SOAP::SOAPString
class GetConnectCredentials
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/AccountManagement}GetConnectCredentialsResponse
#   getConnectCredentialsResult - Docusign::AccountManagement::GetConnectCredentialsResponse::GetConnectCredentialsResult
class GetConnectCredentialsResponse

  # inner class for member: GetConnectCredentialsResult
  # {http://www.docusign.net/API/AccountManagement}GetConnectCredentialsResult
  #   connectUserName - SOAP::SOAPString
  #   connectConfig - SOAP::SOAPString
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetConnectCredentialsResult
    attr_accessor :connectUserName
    attr_accessor :connectConfig
    attr_accessor :success
    attr_accessor :error

    def initialize(connectUserName = nil, connectConfig = nil, success = nil, error = nil)
      @connectUserName = connectUserName
      @connectConfig = connectConfig
      @success = success
      @error = error
    end
  end

  attr_accessor :getConnectCredentialsResult

  def initialize(getConnectCredentialsResult = nil)
    @getConnectCredentialsResult = getConnectCredentialsResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetEncryptedPassword
class GetEncryptedPassword
  def initialize
  end
end

# {http://www.docusign.net/API/AccountManagement}GetEncryptedPasswordResponse
#   getEncryptedPasswordResult - Docusign::AccountManagement::GetEncryptedPasswordResponse::GetEncryptedPasswordResult
class GetEncryptedPasswordResponse

  # inner class for member: GetEncryptedPasswordResult
  # {http://www.docusign.net/API/AccountManagement}GetEncryptedPasswordResult
  #   encryptedPassword - SOAP::SOAPString
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetEncryptedPasswordResult
    attr_accessor :encryptedPassword
    attr_accessor :success
    attr_accessor :error

    def initialize(encryptedPassword = nil, success = nil, error = nil)
      @encryptedPassword = encryptedPassword
      @success = success
      @error = error
    end
  end

  attr_accessor :getEncryptedPasswordResult

  def initialize(getEncryptedPasswordResult = nil)
    @getEncryptedPasswordResult = getEncryptedPasswordResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetAccountSettings
#   accountId - SOAP::SOAPString
class GetAccountSettings
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/AccountManagement}GetAccountSettingsResponse
#   getAccountSettingsResult - Docusign::AccountManagement::GetAccountSettingsResponse::GetAccountSettingsResult
class GetAccountSettingsResponse

  # inner class for member: GetAccountSettingsResult
  # {http://www.docusign.net/API/AccountManagement}GetAccountSettingsResult
  #   accountSettings - Docusign::AccountManagement::AccountSettings
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetAccountSettingsResult
    attr_accessor :accountSettings
    attr_accessor :success
    attr_accessor :error

    def initialize(accountSettings = nil, success = nil, error = nil)
      @accountSettings = accountSettings
      @success = success
      @error = error
    end
  end

  attr_accessor :getAccountSettingsResult

  def initialize(getAccountSettingsResult = nil)
    @getAccountSettingsResult = getAccountSettingsResult
  end
end

# {http://www.docusign.net/API/AccountManagement}UpdateAccountSettings
#   accountId - SOAP::SOAPString
#   accountSettings - Docusign::AccountManagement::AccountSettings
class UpdateAccountSettings
  attr_accessor :accountId
  attr_accessor :accountSettings

  def initialize(accountId = nil, accountSettings = nil)
    @accountId = accountId
    @accountSettings = accountSettings
  end
end

# {http://www.docusign.net/API/AccountManagement}UpdateAccountSettingsResponse
#   updateAccountSettingsResult - Docusign::AccountManagement::UpdateAccountSettingsResponse::UpdateAccountSettingsResult
class UpdateAccountSettingsResponse

  # inner class for member: UpdateAccountSettingsResult
  # {http://www.docusign.net/API/AccountManagement}UpdateAccountSettingsResult
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class UpdateAccountSettingsResult
    attr_accessor :success
    attr_accessor :error

    def initialize(success = nil, error = nil)
      @success = success
      @error = error
    end
  end

  attr_accessor :updateAccountSettingsResult

  def initialize(updateAccountSettingsResult = nil)
    @updateAccountSettingsResult = updateAccountSettingsResult
  end
end

# {http://www.docusign.net/API/AccountManagement}AuthenticateMember
#   accountId - SOAP::SOAPString
class AuthenticateMember
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/AccountManagement}AuthenticateMemberResponse
#   authenticateMemberResult - Docusign::AccountManagement::AuthenticateMemberResponse::AuthenticateMemberResult
class AuthenticateMemberResponse

  # inner class for member: AuthenticateMemberResult
  # {http://www.docusign.net/API/AccountManagement}AuthenticateMemberResult
  #   userId - SOAP::SOAPString
  #   accountId - SOAP::SOAPString
  #   usesAPI - SOAP::SOAPBoolean
  #   memberSettings - Docusign::AccountManagement::MemberSettings
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class AuthenticateMemberResult
    attr_accessor :userId
    attr_accessor :accountId
    attr_accessor :usesAPI
    attr_accessor :memberSettings
    attr_accessor :success
    attr_accessor :error

    def initialize(userId = nil, accountId = nil, usesAPI = nil, memberSettings = nil, success = nil, error = nil)
      @userId = userId
      @accountId = accountId
      @usesAPI = usesAPI
      @memberSettings = memberSettings
      @success = success
      @error = error
    end
  end

  attr_accessor :authenticateMemberResult

  def initialize(authenticateMemberResult = nil)
    @authenticateMemberResult = authenticateMemberResult
  end
end

# {http://www.docusign.net/API/AccountManagement}AuthenticateMemberEx
#   accountId - SOAP::SOAPString
class AuthenticateMemberEx
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {http://www.docusign.net/API/AccountManagement}AuthenticateMemberExResponse
#   authenticateMemberExResult - Docusign::AccountManagement::AuthenticateMemberExResponse::AuthenticateMemberExResult
class AuthenticateMemberExResponse

  # inner class for member: AuthenticateMemberExResult
  # {http://www.docusign.net/API/AccountManagement}AuthenticateMemberExResult
  #   userId - SOAP::SOAPString
  #   accountId - SOAP::SOAPString
  #   usesAPI - SOAP::SOAPBoolean
  #   memberSettings - Docusign::AccountManagement::MemberSettings
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class AuthenticateMemberExResult
    attr_accessor :userId
    attr_accessor :accountId
    attr_accessor :usesAPI
    attr_accessor :memberSettings
    attr_accessor :success
    attr_accessor :error

    def initialize(userId = nil, accountId = nil, usesAPI = nil, memberSettings = nil, success = nil, error = nil)
      @userId = userId
      @accountId = accountId
      @usesAPI = usesAPI
      @memberSettings = memberSettings
      @success = success
      @error = error
    end
  end

  attr_accessor :authenticateMemberExResult

  def initialize(authenticateMemberExResult = nil)
    @authenticateMemberExResult = authenticateMemberExResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetMemberSettings
#   accountId - SOAP::SOAPString
#   userId - SOAP::SOAPString
class GetMemberSettings
  attr_accessor :accountId
  attr_accessor :userId

  def initialize(accountId = nil, userId = nil)
    @accountId = accountId
    @userId = userId
  end
end

# {http://www.docusign.net/API/AccountManagement}GetMemberSettingsResponse
#   getMemberSettingsResult - Docusign::AccountManagement::GetMemberSettingsResponse::GetMemberSettingsResult
class GetMemberSettingsResponse

  # inner class for member: GetMemberSettingsResult
  # {http://www.docusign.net/API/AccountManagement}GetMemberSettingsResult
  #   memberSettings - Docusign::AccountManagement::MemberSettings
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetMemberSettingsResult
    attr_accessor :memberSettings
    attr_accessor :success
    attr_accessor :error

    def initialize(memberSettings = nil, success = nil, error = nil)
      @memberSettings = memberSettings
      @success = success
      @error = error
    end
  end

  attr_accessor :getMemberSettingsResult

  def initialize(getMemberSettingsResult = nil)
    @getMemberSettingsResult = getMemberSettingsResult
  end
end

# {http://www.docusign.net/API/AccountManagement}UpdateMemberSettings
#   accountId - SOAP::SOAPString
#   userId - SOAP::SOAPString
#   memberSettings - Docusign::AccountManagement::MemberSettings
class UpdateMemberSettings
  attr_accessor :accountId
  attr_accessor :userId
  attr_accessor :memberSettings

  def initialize(accountId = nil, userId = nil, memberSettings = nil)
    @accountId = accountId
    @userId = userId
    @memberSettings = memberSettings
  end
end

# {http://www.docusign.net/API/AccountManagement}UpdateMemberSettingsResponse
#   updateMemberSettingsResult - Docusign::AccountManagement::UpdateMemberSettingsResponse::UpdateMemberSettingsResult
class UpdateMemberSettingsResponse

  # inner class for member: UpdateMemberSettingsResult
  # {http://www.docusign.net/API/AccountManagement}UpdateMemberSettingsResult
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class UpdateMemberSettingsResult
    attr_accessor :success
    attr_accessor :error

    def initialize(success = nil, error = nil)
      @success = success
      @error = error
    end
  end

  attr_accessor :updateMemberSettingsResult

  def initialize(updateMemberSettingsResult = nil)
    @updateMemberSettingsResult = updateMemberSettingsResult
  end
end

# {http://www.docusign.net/API/AccountManagement}CloseMembers
#   accountId - SOAP::SOAPString
#   userIds - Docusign::AccountManagement::ArrayOfString
class CloseMembers
  attr_accessor :accountId
  attr_accessor :userIds

  def initialize(accountId = nil, userIds = nil)
    @accountId = accountId
    @userIds = userIds
  end
end

# {http://www.docusign.net/API/AccountManagement}CloseMembersResponse
#   closeMembersResult - Docusign::AccountManagement::CloseMembersResponse::CloseMembersResult
class CloseMembersResponse

  # inner class for member: CloseMembersResult
  # {http://www.docusign.net/API/AccountManagement}CloseMembersResult
  #   success - SOAP::SOAPBoolean
  #   members - Docusign::AccountManagement::ArrayOfMemberResult
  #   dateStamp - SOAP::SOAPDateTime
  #   error - Docusign::AccountManagement::RequestError
  class CloseMembersResult
    attr_accessor :success
    attr_accessor :members
    attr_accessor :dateStamp
    attr_accessor :error

    def initialize(success = nil, members = nil, dateStamp = nil, error = nil)
      @success = success
      @members = members
      @dateStamp = dateStamp
      @error = error
    end
  end

  attr_accessor :closeMembersResult

  def initialize(closeMembersResult = nil)
    @closeMembersResult = closeMembersResult
  end
end

# {http://www.docusign.net/API/AccountManagement}CheckAccountMember
#   accountId - SOAP::SOAPString
#   email - SOAP::SOAPString
class CheckAccountMember
  attr_accessor :accountId
  attr_accessor :email

  def initialize(accountId = nil, email = nil)
    @accountId = accountId
    @email = email
  end
end

# {http://www.docusign.net/API/AccountManagement}CheckAccountMemberResponse
#   checkAccountMemberResult - Docusign::AccountManagement::CheckAccountMemberResponse::CheckAccountMemberResult
class CheckAccountMemberResponse

  # inner class for member: CheckAccountMemberResult
  # {http://www.docusign.net/API/AccountManagement}CheckAccountMemberResult
  #   userId - SOAP::SOAPString
  #   status - SOAP::SOAPString
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class CheckAccountMemberResult
    attr_accessor :userId
    attr_accessor :status
    attr_accessor :success
    attr_accessor :error

    def initialize(userId = nil, status = nil, success = nil, error = nil)
      @userId = userId
      @status = status
      @success = success
      @error = error
    end
  end

  attr_accessor :checkAccountMemberResult

  def initialize(checkAccountMemberResult = nil)
    @checkAccountMemberResult = checkAccountMemberResult
  end
end

# {http://www.docusign.net/API/AccountManagement}ActivateSalesforceInstance
#   accountId - SOAP::SOAPString
#   externalInstanceId - SOAP::SOAPString
#   connectUsername - SOAP::SOAPString
#   connectPassword - SOAP::SOAPString
#   salesforceEnvironment - SOAP::SOAPString
#   member - Docusign::AccountManagement::Member
class ActivateSalesforceInstance
  attr_accessor :accountId
  attr_accessor :externalInstanceId
  attr_accessor :connectUsername
  attr_accessor :connectPassword
  attr_accessor :salesforceEnvironment
  attr_accessor :member

  def initialize(accountId = nil, externalInstanceId = nil, connectUsername = nil, connectPassword = nil, salesforceEnvironment = nil, member = nil)
    @accountId = accountId
    @externalInstanceId = externalInstanceId
    @connectUsername = connectUsername
    @connectPassword = connectPassword
    @salesforceEnvironment = salesforceEnvironment
    @member = member
  end
end

# {http://www.docusign.net/API/AccountManagement}ActivateSalesforceInstanceResponse
#   activateSalesforceInstanceResult - Docusign::AccountManagement::ActivateSalesforceInstanceResponse::ActivateSalesforceInstanceResult
class ActivateSalesforceInstanceResponse

  # inner class for member: ActivateSalesforceInstanceResult
  # {http://www.docusign.net/API/AccountManagement}ActivateSalesforceInstanceResult
  #   accountId - SOAP::SOAPString
  #   siteId - SOAP::SOAPString
  #   userId - SOAP::SOAPString
  #   membershipId - SOAP::SOAPString
  #   encryptedPassword - SOAP::SOAPString
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class ActivateSalesforceInstanceResult
    attr_accessor :accountId
    attr_accessor :siteId
    attr_accessor :userId
    attr_accessor :membershipId
    attr_accessor :encryptedPassword
    attr_accessor :success
    attr_accessor :error

    def initialize(accountId = nil, siteId = nil, userId = nil, membershipId = nil, encryptedPassword = nil, success = nil, error = nil)
      @accountId = accountId
      @siteId = siteId
      @userId = userId
      @membershipId = membershipId
      @encryptedPassword = encryptedPassword
      @success = success
      @error = error
    end
  end

  attr_accessor :activateSalesforceInstanceResult

  def initialize(activateSalesforceInstanceResult = nil)
    @activateSalesforceInstanceResult = activateSalesforceInstanceResult
  end
end

# {http://www.docusign.net/API/AccountManagement}ChangePassword
#   changePasswordArg - Docusign::AccountManagement::ChangePasswordArg
class ChangePassword
  attr_accessor :changePasswordArg

  def initialize(changePasswordArg = nil)
    @changePasswordArg = changePasswordArg
  end
end

# {http://www.docusign.net/API/AccountManagement}ChangePasswordResponse
#   changePasswordResult - Docusign::AccountManagement::ChangePasswordResponse::ChangePasswordResult
class ChangePasswordResponse

  # inner class for member: ChangePasswordResult
  # {http://www.docusign.net/API/AccountManagement}ChangePasswordResult
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class ChangePasswordResult
    attr_accessor :success
    attr_accessor :error

    def initialize(success = nil, error = nil)
      @success = success
      @error = error
    end
  end

  attr_accessor :changePasswordResult

  def initialize(changePasswordResult = nil)
    @changePasswordResult = changePasswordResult
  end
end

# {http://www.docusign.net/API/AccountManagement}GetSignatures
#   getSignaturesArg - Docusign::AccountManagement::GetSignaturesArg
class GetSignatures
  attr_accessor :getSignaturesArg

  def initialize(getSignaturesArg = nil)
    @getSignaturesArg = getSignaturesArg
  end
end

# {http://www.docusign.net/API/AccountManagement}GetSignaturesResponse
#   getSignaturesResult - Docusign::AccountManagement::GetSignaturesResponse::GetSignaturesResult
class GetSignaturesResponse

  # inner class for member: GetSignaturesResult
  # {http://www.docusign.net/API/AccountManagement}GetSignaturesResult
  #   userId - SOAP::SOAPString
  #   signatures - Docusign::AccountManagement::ArrayOfSignature
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class GetSignaturesResult
    attr_accessor :userId
    attr_accessor :signatures
    attr_accessor :success
    attr_accessor :error

    def initialize(userId = nil, signatures = nil, success = nil, error = nil)
      @userId = userId
      @signatures = signatures
      @success = success
      @error = error
    end
  end

  attr_accessor :getSignaturesResult

  def initialize(getSignaturesResult = nil)
    @getSignaturesResult = getSignaturesResult
  end
end

# {http://www.docusign.net/API/AccountManagement}SetSignatureImages
#   setSignatureImagesArg - Docusign::AccountManagement::SetSignatureImagesArg
class SetSignatureImages
  attr_accessor :setSignatureImagesArg

  def initialize(setSignatureImagesArg = nil)
    @setSignatureImagesArg = setSignatureImagesArg
  end
end

# {http://www.docusign.net/API/AccountManagement}SetSignatureImagesResponse
#   setSignatureImagesResult - Docusign::AccountManagement::SetSignatureImagesResponse::SetSignatureImagesResult
class SetSignatureImagesResponse

  # inner class for member: SetSignatureImagesResult
  # {http://www.docusign.net/API/AccountManagement}SetSignatureImagesResult
  #   userId - SOAP::SOAPString
  #   signatures - Docusign::AccountManagement::ArrayOfSignature
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class SetSignatureImagesResult
    attr_accessor :userId
    attr_accessor :signatures
    attr_accessor :success
    attr_accessor :error

    def initialize(userId = nil, signatures = nil, success = nil, error = nil)
      @userId = userId
      @signatures = signatures
      @success = success
      @error = error
    end
  end

  attr_accessor :setSignatureImagesResult

  def initialize(setSignatureImagesResult = nil)
    @setSignatureImagesResult = setSignatureImagesResult
  end
end

# {http://www.docusign.net/API/AccountManagement}CloseSignature
#   signatureName - SOAP::SOAPString
class CloseSignature
  attr_accessor :signatureName

  def initialize(signatureName = nil)
    @signatureName = signatureName
  end
end

# {http://www.docusign.net/API/AccountManagement}CloseSignatureResponse
#   closeSignatureResult - Docusign::AccountManagement::CloseSignatureResponse::CloseSignatureResult
class CloseSignatureResponse

  # inner class for member: CloseSignatureResult
  # {http://www.docusign.net/API/AccountManagement}CloseSignatureResult
  #   success - SOAP::SOAPBoolean
  #   error - Docusign::AccountManagement::RequestError
  class CloseSignatureResult
    attr_accessor :success
    attr_accessor :error

    def initialize(success = nil, error = nil)
      @success = success
      @error = error
    end
  end

  attr_accessor :closeSignatureResult

  def initialize(closeSignatureResult = nil)
    @closeSignatureResult = closeSignatureResult
  end
end

# {http://www.docusign.net/API/AccountManagement}Ping
class Ping
  def initialize
  end
end

# {http://www.docusign.net/API/AccountManagement}PingResponse
#   pingResult - SOAP::SOAPBoolean
class PingResponse
  attr_accessor :pingResult

  def initialize(pingResult = nil)
    @pingResult = pingResult
  end
end


end; end
