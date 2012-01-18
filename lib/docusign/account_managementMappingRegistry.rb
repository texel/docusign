require 'docusign/account_management.rb'
require 'soap/mapping'

module Docusign; module AccountManagement

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAccountManagement = "http://www.docusign.net/API/AccountManagement"

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::CreditCardInformation,
    :schema_type => XSD::QName.new(NsAccountManagement, "CreditCardInformation"),
    :schema_element => [
      ["ccNumber", "SOAP::SOAPString", [0, 1]],
      ["ccExpirationMonth", "SOAP::SOAPString", [0, 1]],
      ["ccExpirationYear", "SOAP::SOAPString", [0, 1]],
      ["ccUserName", "SOAP::SOAPString", [0, 1]],
      ["ccType", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ReferralInformation,
    :schema_type => XSD::QName.new(NsAccountManagement, "ReferralInformation"),
    :schema_element => [
      ["enableSupport", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSupport")], [0, 1]],
      ["includedSeats", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsAccountManagement, "IncludedSeats")], [0, 1]],
      ["saleDiscountPercent", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "SaleDiscountPercent")], [0, 1]],
      ["planStartMonth", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsAccountManagement, "PlanStartMonth")], [0, 1]],
      ["referrerName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ReferrerName")], [0, 1]],
      ["referralCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ReferralCode")], [0, 1]],
      ["advertisementID", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AdvertisementID")], [0, 1]],
      ["publisherID", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PublisherID")], [0, 1]],
      ["shopperID", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ShopperID")], [0, 1]],
      ["promoCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PromoCode")], [0, 1]],
      ["groupMemberID", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "GroupMemberID")], [0, 1]],
      ["idType", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "IdType")], [0, 1]],
      ["industry", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Industry")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::AccountSettings,
    :schema_type => XSD::QName.new(NsAccountManagement, "AccountSettings"),
    :schema_element => [
      ["usesAPI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "UsesAPI")], [0, 1]],
      ["enableDSPro", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableDSPro")], [0, 1]],
      ["enableVaulting", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableVaulting")], [0, 1]],
      ["enableSendToManage", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSendToManage")], [0, 1]],
      ["enableSendToAgent", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSendToAgent")], [0, 1]],
      ["enableEnvelopeStampingByAccountAdmin", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableEnvelopeStampingByAccountAdmin")], [0, 1]],
      ["envelopeStampingDefaultValue", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnvelopeStampingDefaultValue")], [0, 1]],
      ["signerMustHaveAccount", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerMustHaveAccount")], [0, 1]],
      ["signerMustLoginToSign", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerMustLoginToSign")], [0, 1]],
      ["signerCanCreateAccount", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerCanCreateAccount")], [0, 1]],
      ["allowInPerson", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "AllowInPerson")], [0, 1]],
      ["enablePowerForm", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnablePowerForm")], [0, 1]],
      ["allowSignerReassign", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "AllowSignerReassign")], [0, 1]],
      ["enableReservedDomain", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableReservedDomain")], [0, 1]],
      ["enableSequentialSigningAPI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSequentialSigningAPI")], [0, 1]],
      ["enableSequentialSigningUI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSequentialSigningUI")], [0, 1]],
      ["enableAutoNav", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableAutoNav")], [0, 1]],
      ["autoNavRule", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AutoNavRule")], [0, 1]],
      ["enableTransactionPoint", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableTransactionPoint")], [0, 1]],
      ["envelopeIntegrationAllowed", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "EnvelopeIntegrationAllowed")], [0, 1]],
      ["envelopeIntegrationEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnvelopeIntegrationEnabled")], [0, 1]],
      ["canSelfBrandSend", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "CanSelfBrandSend")], [0, 1]],
      ["canSelfBrandSign", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "CanSelfBrandSign")], [0, 1]],
      ["iDCheckRequired", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "IDCheckRequired")], [0, 1]],
      ["iDCheckExpire", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "IDCheckExpire")], [0, 1]],
      ["iDCheckExpireDays", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "IDCheckExpireDays")], [0, 1]],
      ["signDateFormat", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SignDateFormat")], [0, 1]],
      ["pKISignDownloadedPDFDocs", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PKISignDownloadedPDFDocs")], [0, 1]],
      ["inPersonIDCheckQuestion", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "InPersonIDCheckQuestion")], [0, 1]],
      ["sessionTimeout", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "SessionTimeout")], [0, 1]],
      ["attachCompletedEnvelope", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "AttachCompletedEnvelope")], [0, 1]],
      ["signerCanSignOnMobile", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerCanSignOnMobile")], [0, 1]],
      ["signerShowSecureFieldInitialValues", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerShowSecureFieldInitialValues")], [0, 1]],
      ["signerAttachCertificateToEnvelopePDF", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerAttachCertificateToEnvelopePDF")], [0, 1]],
      ["enableSignOnPaper", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSignOnPaper")], [0, 1]],
      ["enableSignOnPaperOverride", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSignOnPaperOverride")], [0, 1]],
      ["enableSignerAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSignerAttachments")], [0, 1]],
      ["useAccountLevelEmail", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "UseAccountLevelEmail")], [0, 1]],
      ["promo", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Promo")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::AddressInformation,
    :schema_type => XSD::QName.new(NsAccountManagement, "AddressInformation"),
    :schema_element => [
      ["address1", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Address1")], [0, 1]],
      ["address2", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Address2")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "State")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Zip")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Phone")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Fax")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Country")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::RequestError,
    :schema_type => XSD::QName.new(NsAccountManagement, "RequestError"),
    :schema_element => [
      ["errorCode", ["Docusign::AccountManagement::ErrorCode", XSD::QName.new(NsAccountManagement, "ErrorCode")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Description")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::Member,
    :schema_type => XSD::QName.new(NsAccountManagement, "Member"),
    :schema_element => [
      ["memberEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberEmailAddress")], [0, 1]],
      ["memberUserName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberUserName")], [0, 1]],
      ["memberPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberPassword")], [0, 1]],
      ["memberForgottenPasswordQuestion", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordQuestion")], [0, 1]],
      ["memberForgottenPasswordAnswer", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordAnswer")], [0, 1]],
      ["memberTitle", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberTitle")], [0, 1]],
      ["memberFirstName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberFirstName")], [0, 1]],
      ["memberMiddleName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberMiddleName")], [0, 1]],
      ["memberLastName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberLastName")], [0, 1]],
      ["memberSuffix", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberSuffix")], [0, 1]],
      ["enableConnectForUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableConnectForUser")], [0, 1]],
      ["memberSettings", ["Docusign::AccountManagement::MemberSettings", XSD::QName.new(NsAccountManagement, "MemberSettings")], [0, 1]],
      ["returnEncryptedPassword", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "ReturnEncryptedPassword")], [0, 1]],
      ["memberForgottenPasswordQuestion2", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordQuestion2")], [0, 1]],
      ["memberForgottenPasswordAnswer2", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordAnswer2")], [0, 1]],
      ["memberForgottenPasswordQuestion3", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordQuestion3")], [0, 1]],
      ["memberForgottenPasswordAnswer3", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordAnswer3")], [0, 1]],
      ["memberForgottenPasswordQuestion4", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordQuestion4")], [0, 1]],
      ["memberForgottenPasswordAnswer4", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordAnswer4")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::MemberSettings,
    :schema_type => XSD::QName.new(NsAccountManagement, "MemberSettings"),
    :schema_element => [
      ["canManageAccount", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "CanManageAccount")], [0, 1]],
      ["canSendEnvelope", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "CanSendEnvelope")], [0, 1]],
      ["canSendAPIRequests", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "CanSendAPIRequests")], [0, 1]],
      ["aPIAccountWideAccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "APIAccountWideAccess")], [0, 1]],
      ["enableVaulting", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableVaulting")], [0, 1]],
      ["vaultingMode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "VaultingMode")], [0, 1]],
      ["enableTransactionPoint", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableTransactionPoint")], [0, 1]],
      ["enableSequentialSigningAPI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSequentialSigningAPI")], [0, 1]],
      ["enableSequentialSigningUI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSequentialSigningUI")], [0, 1]],
      ["enableDSPro", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableDSPro")], [0, 1]],
      ["powerFormAdmin", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "PowerFormAdmin")], [0, 1]],
      ["powerFormUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "PowerFormUser")], [0, 1]],
      ["canEditSharedAddressBook", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "CanEditSharedAddressBook")], [0, 1]],
      ["canManageTemplates", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "CanManageTemplates")], [0, 1]],
      ["enableSignOnPaperOverride", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSignOnPaperOverride")], [0, 1]],
      ["enableSignerAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSignerAttachments")], [0, 1]],
      ["allowSendOnBehalfOf", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "AllowSendOnBehalfOf")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfMember,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfMember"),
    :schema_element => [
      ["member", ["Docusign::AccountManagement::Member[]", XSD::QName.new(NsAccountManagement, "Member")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfMemberResult,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfMemberResult"),
    :schema_element => [
      ["member", ["Docusign::AccountManagement::MemberResult[]", XSD::QName.new(NsAccountManagement, "Member")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::MemberResult,
    :schema_type => XSD::QName.new(NsAccountManagement, "MemberResult"),
    :schema_element => [
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["encryptedPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "EncryptedPassword")], [0, 1]],
      ["membershipId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MembershipId")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::Plan,
    :schema_type => XSD::QName.new(NsAccountManagement, "Plan"),
    :schema_element => [
      ["planName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PlanName")], [0, 1]],
      ["paymentCycle", ["Docusign::AccountManagement::PaymentCycle", XSD::QName.new(NsAccountManagement, "PaymentCycle")]],
      ["paymentMethod", ["Docusign::AccountManagement::PaymentMethod", XSD::QName.new(NsAccountManagement, "PaymentMethod")]],
      ["perSeatPrice", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "PerSeatPrice")]],
      ["otherDiscountPercent", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "OtherDiscountPercent")]],
      ["supportIncidentFee", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "SupportIncidentFee")]],
      ["supportPlanFee", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "SupportPlanFee")]],
      ["includedSeats", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "IncludedSeats")], [0, 1]],
      ["enableSupport", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSupport")], [0, 1]],
      ["pgpId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PgpId")], [0, 1]],
      ["seatDiscounts", ["Docusign::AccountManagement::ArrayOfSeatDiscount", XSD::QName.new(NsAccountManagement, "SeatDiscounts")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfSeatDiscount,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfSeatDiscount"),
    :schema_element => [
      ["seatDiscount", ["Docusign::AccountManagement::SeatDiscount[]", XSD::QName.new(NsAccountManagement, "SeatDiscount")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::SeatDiscount,
    :schema_type => XSD::QName.new(NsAccountManagement, "SeatDiscount"),
    :schema_element => [
      ["beginSeatCount", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "BeginSeatCount")], [0, 1]],
      ["endSeatCount", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "EndSeatCount")], [0, 1]],
      ["seatDiscountPercent", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "SeatDiscountPercent")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfPlan,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfPlan"),
    :schema_element => [
      ["successorPlan", ["Docusign::AccountManagement::Plan[]", XSD::QName.new(NsAccountManagement, "SuccessorPlan")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfPlanGroup,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfPlanGroup"),
    :schema_element => [
      ["planGroup", ["Docusign::AccountManagement::PlanGroup[]", XSD::QName.new(NsAccountManagement, "PlanGroup")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::PlanGroup,
    :schema_type => XSD::QName.new(NsAccountManagement, "PlanGroup"),
    :schema_element => [
      ["planGroupName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PlanGroupName")], [0, 1]],
      ["planGroupPlans", ["Docusign::AccountManagement::ArrayOfPlanGroupPlan", XSD::QName.new(NsAccountManagement, "PlanGroupPlans")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfPlanGroupPlan,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfPlanGroupPlan"),
    :schema_element => [
      ["planGroupPlan", ["Docusign::AccountManagement::PlanGroupPlan[]", XSD::QName.new(NsAccountManagement, "PlanGroupPlan")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::PlanGroupPlan,
    :schema_type => XSD::QName.new(NsAccountManagement, "PlanGroupPlan"),
    :schema_element => [
      ["planName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PlanName")], [0, 1]],
      ["pgp", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Pgp")], [0, 1]],
      ["paymentMethod", ["Docusign::AccountManagement::PaymentMethod", XSD::QName.new(NsAccountManagement, "PaymentMethod")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfMembershipSummary,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfMembershipSummary"),
    :schema_element => [
      ["membershipSummary", ["Docusign::AccountManagement::MembershipSummary[]", XSD::QName.new(NsAccountManagement, "MembershipSummary")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::MembershipSummary,
    :schema_type => XSD::QName.new(NsAccountManagement, "MembershipSummary"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountName")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserName")], [0, 1]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["userType", ["Docusign::AccountManagement::UserType", XSD::QName.new(NsAccountManagement, "UserType")]],
      ["userStatus", ["Docusign::AccountManagement::UserStatus", XSD::QName.new(NsAccountManagement, "UserStatus")]],
      ["planName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PlanName")], [0, 1]],
      ["pgp", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Pgp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfString,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ChangePasswordArg,
    :schema_type => XSD::QName.new(NsAccountManagement, "ChangePasswordArg"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "EmailAddress")], [0, 1]],
      ["oldPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "OldPassword")], [0, 1]],
      ["newPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "NewPassword")], [0, 1]],
      ["forgottenPasswordQuestion", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordQuestion")], [0, 1]],
      ["forgottenPasswordAnswer", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordAnswer")], [0, 1]],
      ["forgottenPasswordQuestion2", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordQuestion2")], [0, 1]],
      ["forgottenPasswordAnswer2", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordAnswer2")], [0, 1]],
      ["forgottenPasswordQuestion3", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordQuestion3")], [0, 1]],
      ["forgottenPasswordAnswer3", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordAnswer3")], [0, 1]],
      ["forgottenPasswordQuestion4", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordQuestion4")], [0, 1]],
      ["forgottenPasswordAnswer4", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordAnswer4")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::GetSignaturesArg,
    :schema_type => XSD::QName.new(NsAccountManagement, "GetSignaturesArg"),
    :schema_element => [
      ["includeBytes", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "IncludeBytes")]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfSignature,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfSignature"),
    :schema_element => [
      ["signature", ["Docusign::AccountManagement::Signature[]", XSD::QName.new(NsAccountManagement, "Signature")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::Signature,
    :schema_type => XSD::QName.new(NsAccountManagement, "Signature"),
    :schema_element => [
      ["stampFont", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "StampFont")], [0, 1]],
      ["signatureType", ["Docusign::AccountManagement::SignatureType", XSD::QName.new(NsAccountManagement, "SignatureType")]],
      ["signatureName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SignatureName")], [0, 1]],
      ["signatureText", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SignatureText")], [0, 1]],
      ["signatureImage", ["Docusign::AccountManagement::Image", XSD::QName.new(NsAccountManagement, "SignatureImage")], [0, 1]],
      ["initialsText", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "InitialsText")], [0, 1]],
      ["initialsImage", ["Docusign::AccountManagement::Image", XSD::QName.new(NsAccountManagement, "InitialsImage")], [0, 1]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(NsAccountManagement, "Created")]],
      ["adopted", ["SOAP::SOAPDateTime", XSD::QName.new(NsAccountManagement, "Adopted")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::Image,
    :schema_type => XSD::QName.new(NsAccountManagement, "Image"),
    :schema_element => [
      ["mimeType", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MimeType")], [0, 1]],
      ["imageData", ["SOAP::SOAPBase64", XSD::QName.new(NsAccountManagement, "ImageData")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::SetSignatureImagesArg,
    :schema_type => XSD::QName.new(NsAccountManagement, "SetSignatureImagesArg"),
    :schema_element => [
      ["signatureName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SignatureName")], [0, 1]],
      ["signatureImage", ["Docusign::AccountManagement::Image", XSD::QName.new(NsAccountManagement, "SignatureImage")], [0, 1]],
      ["initialsImage", ["Docusign::AccountManagement::Image", XSD::QName.new(NsAccountManagement, "InitialsImage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::ErrorCode,
    :schema_type => XSD::QName.new(NsAccountManagement, "ErrorCode")
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::PaymentCycle,
    :schema_type => XSD::QName.new(NsAccountManagement, "PaymentCycle")
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::PaymentMethod,
    :schema_type => XSD::QName.new(NsAccountManagement, "PaymentMethod")
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::UserType,
    :schema_type => XSD::QName.new(NsAccountManagement, "UserType")
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::UserStatus,
    :schema_type => XSD::QName.new(NsAccountManagement, "UserStatus")
  )

  EncodedRegistry.register(
    :class => Docusign::AccountManagement::SignatureType,
    :schema_type => XSD::QName.new(NsAccountManagement, "SignatureType")
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::CreditCardInformation,
    :schema_type => XSD::QName.new(NsAccountManagement, "CreditCardInformation"),
    :schema_element => [
      ["ccNumber", "SOAP::SOAPString", [0, 1]],
      ["ccExpirationMonth", "SOAP::SOAPString", [0, 1]],
      ["ccExpirationYear", "SOAP::SOAPString", [0, 1]],
      ["ccUserName", "SOAP::SOAPString", [0, 1]],
      ["ccType", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ReferralInformation,
    :schema_type => XSD::QName.new(NsAccountManagement, "ReferralInformation"),
    :schema_element => [
      ["enableSupport", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSupport")], [0, 1]],
      ["includedSeats", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsAccountManagement, "IncludedSeats")], [0, 1]],
      ["saleDiscountPercent", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "SaleDiscountPercent")], [0, 1]],
      ["planStartMonth", ["SOAP::SOAPPositiveInteger", XSD::QName.new(NsAccountManagement, "PlanStartMonth")], [0, 1]],
      ["referrerName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ReferrerName")], [0, 1]],
      ["referralCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ReferralCode")], [0, 1]],
      ["advertisementID", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AdvertisementID")], [0, 1]],
      ["publisherID", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PublisherID")], [0, 1]],
      ["shopperID", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ShopperID")], [0, 1]],
      ["promoCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PromoCode")], [0, 1]],
      ["groupMemberID", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "GroupMemberID")], [0, 1]],
      ["idType", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "IdType")], [0, 1]],
      ["industry", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Industry")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::AccountSettings,
    :schema_type => XSD::QName.new(NsAccountManagement, "AccountSettings"),
    :schema_element => [
      ["usesAPI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "UsesAPI")], [0, 1]],
      ["enableDSPro", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableDSPro")], [0, 1]],
      ["enableVaulting", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableVaulting")], [0, 1]],
      ["enableSendToManage", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSendToManage")], [0, 1]],
      ["enableSendToAgent", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSendToAgent")], [0, 1]],
      ["enableEnvelopeStampingByAccountAdmin", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableEnvelopeStampingByAccountAdmin")], [0, 1]],
      ["envelopeStampingDefaultValue", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnvelopeStampingDefaultValue")], [0, 1]],
      ["signerMustHaveAccount", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerMustHaveAccount")], [0, 1]],
      ["signerMustLoginToSign", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerMustLoginToSign")], [0, 1]],
      ["signerCanCreateAccount", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerCanCreateAccount")], [0, 1]],
      ["allowInPerson", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "AllowInPerson")], [0, 1]],
      ["enablePowerForm", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnablePowerForm")], [0, 1]],
      ["allowSignerReassign", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "AllowSignerReassign")], [0, 1]],
      ["enableReservedDomain", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableReservedDomain")], [0, 1]],
      ["enableSequentialSigningAPI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSequentialSigningAPI")], [0, 1]],
      ["enableSequentialSigningUI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSequentialSigningUI")], [0, 1]],
      ["enableAutoNav", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableAutoNav")], [0, 1]],
      ["autoNavRule", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AutoNavRule")], [0, 1]],
      ["enableTransactionPoint", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableTransactionPoint")], [0, 1]],
      ["envelopeIntegrationAllowed", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "EnvelopeIntegrationAllowed")], [0, 1]],
      ["envelopeIntegrationEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnvelopeIntegrationEnabled")], [0, 1]],
      ["canSelfBrandSend", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "CanSelfBrandSend")], [0, 1]],
      ["canSelfBrandSign", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "CanSelfBrandSign")], [0, 1]],
      ["iDCheckRequired", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "IDCheckRequired")], [0, 1]],
      ["iDCheckExpire", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "IDCheckExpire")], [0, 1]],
      ["iDCheckExpireDays", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "IDCheckExpireDays")], [0, 1]],
      ["signDateFormat", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SignDateFormat")], [0, 1]],
      ["pKISignDownloadedPDFDocs", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PKISignDownloadedPDFDocs")], [0, 1]],
      ["inPersonIDCheckQuestion", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "InPersonIDCheckQuestion")], [0, 1]],
      ["sessionTimeout", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "SessionTimeout")], [0, 1]],
      ["attachCompletedEnvelope", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "AttachCompletedEnvelope")], [0, 1]],
      ["signerCanSignOnMobile", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerCanSignOnMobile")], [0, 1]],
      ["signerShowSecureFieldInitialValues", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerShowSecureFieldInitialValues")], [0, 1]],
      ["signerAttachCertificateToEnvelopePDF", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "SignerAttachCertificateToEnvelopePDF")], [0, 1]],
      ["enableSignOnPaper", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSignOnPaper")], [0, 1]],
      ["enableSignOnPaperOverride", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSignOnPaperOverride")], [0, 1]],
      ["enableSignerAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSignerAttachments")], [0, 1]],
      ["useAccountLevelEmail", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "UseAccountLevelEmail")], [0, 1]],
      ["promo", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Promo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::AddressInformation,
    :schema_type => XSD::QName.new(NsAccountManagement, "AddressInformation"),
    :schema_element => [
      ["address1", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Address1")], [0, 1]],
      ["address2", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Address2")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "State")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Zip")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Phone")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Fax")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Country")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::RequestError,
    :schema_type => XSD::QName.new(NsAccountManagement, "RequestError"),
    :schema_element => [
      ["errorCode", ["Docusign::AccountManagement::ErrorCode", XSD::QName.new(NsAccountManagement, "ErrorCode")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Description")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::Member,
    :schema_type => XSD::QName.new(NsAccountManagement, "Member"),
    :schema_element => [
      ["memberEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberEmailAddress")], [0, 1]],
      ["memberUserName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberUserName")], [0, 1]],
      ["memberPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberPassword")], [0, 1]],
      ["memberForgottenPasswordQuestion", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordQuestion")], [0, 1]],
      ["memberForgottenPasswordAnswer", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordAnswer")], [0, 1]],
      ["memberTitle", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberTitle")], [0, 1]],
      ["memberFirstName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberFirstName")], [0, 1]],
      ["memberMiddleName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberMiddleName")], [0, 1]],
      ["memberLastName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberLastName")], [0, 1]],
      ["memberSuffix", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberSuffix")], [0, 1]],
      ["enableConnectForUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableConnectForUser")], [0, 1]],
      ["memberSettings", ["Docusign::AccountManagement::MemberSettings", XSD::QName.new(NsAccountManagement, "MemberSettings")], [0, 1]],
      ["returnEncryptedPassword", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "ReturnEncryptedPassword")], [0, 1]],
      ["memberForgottenPasswordQuestion2", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordQuestion2")], [0, 1]],
      ["memberForgottenPasswordAnswer2", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordAnswer2")], [0, 1]],
      ["memberForgottenPasswordQuestion3", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordQuestion3")], [0, 1]],
      ["memberForgottenPasswordAnswer3", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordAnswer3")], [0, 1]],
      ["memberForgottenPasswordQuestion4", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordQuestion4")], [0, 1]],
      ["memberForgottenPasswordAnswer4", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MemberForgottenPasswordAnswer4")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::MemberSettings,
    :schema_type => XSD::QName.new(NsAccountManagement, "MemberSettings"),
    :schema_element => [
      ["canManageAccount", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "CanManageAccount")], [0, 1]],
      ["canSendEnvelope", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "CanSendEnvelope")], [0, 1]],
      ["canSendAPIRequests", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "CanSendAPIRequests")], [0, 1]],
      ["aPIAccountWideAccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "APIAccountWideAccess")], [0, 1]],
      ["enableVaulting", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableVaulting")], [0, 1]],
      ["vaultingMode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "VaultingMode")], [0, 1]],
      ["enableTransactionPoint", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableTransactionPoint")], [0, 1]],
      ["enableSequentialSigningAPI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSequentialSigningAPI")], [0, 1]],
      ["enableSequentialSigningUI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSequentialSigningUI")], [0, 1]],
      ["enableDSPro", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableDSPro")], [0, 1]],
      ["powerFormAdmin", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "PowerFormAdmin")], [0, 1]],
      ["powerFormUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "PowerFormUser")], [0, 1]],
      ["canEditSharedAddressBook", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "CanEditSharedAddressBook")], [0, 1]],
      ["canManageTemplates", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "CanManageTemplates")], [0, 1]],
      ["enableSignOnPaperOverride", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSignOnPaperOverride")], [0, 1]],
      ["enableSignerAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSignerAttachments")], [0, 1]],
      ["allowSendOnBehalfOf", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "AllowSendOnBehalfOf")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfMember,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfMember"),
    :schema_element => [
      ["member", ["Docusign::AccountManagement::Member[]", XSD::QName.new(NsAccountManagement, "Member")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfMemberResult,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfMemberResult"),
    :schema_element => [
      ["member", ["Docusign::AccountManagement::MemberResult[]", XSD::QName.new(NsAccountManagement, "Member")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::MemberResult,
    :schema_type => XSD::QName.new(NsAccountManagement, "MemberResult"),
    :schema_element => [
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["encryptedPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "EncryptedPassword")], [0, 1]],
      ["membershipId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MembershipId")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::Plan,
    :schema_type => XSD::QName.new(NsAccountManagement, "Plan"),
    :schema_element => [
      ["planName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PlanName")], [0, 1]],
      ["paymentCycle", ["Docusign::AccountManagement::PaymentCycle", XSD::QName.new(NsAccountManagement, "PaymentCycle")]],
      ["paymentMethod", ["Docusign::AccountManagement::PaymentMethod", XSD::QName.new(NsAccountManagement, "PaymentMethod")]],
      ["perSeatPrice", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "PerSeatPrice")]],
      ["otherDiscountPercent", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "OtherDiscountPercent")]],
      ["supportIncidentFee", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "SupportIncidentFee")]],
      ["supportPlanFee", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "SupportPlanFee")]],
      ["includedSeats", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "IncludedSeats")], [0, 1]],
      ["enableSupport", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSupport")], [0, 1]],
      ["pgpId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PgpId")], [0, 1]],
      ["seatDiscounts", ["Docusign::AccountManagement::ArrayOfSeatDiscount", XSD::QName.new(NsAccountManagement, "SeatDiscounts")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfSeatDiscount,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfSeatDiscount"),
    :schema_element => [
      ["seatDiscount", ["Docusign::AccountManagement::SeatDiscount[]", XSD::QName.new(NsAccountManagement, "SeatDiscount")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::SeatDiscount,
    :schema_type => XSD::QName.new(NsAccountManagement, "SeatDiscount"),
    :schema_element => [
      ["beginSeatCount", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "BeginSeatCount")], [0, 1]],
      ["endSeatCount", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "EndSeatCount")], [0, 1]],
      ["seatDiscountPercent", ["SOAP::SOAPDecimal", XSD::QName.new(NsAccountManagement, "SeatDiscountPercent")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfPlan,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfPlan"),
    :schema_element => [
      ["successorPlan", ["Docusign::AccountManagement::Plan[]", XSD::QName.new(NsAccountManagement, "SuccessorPlan")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfPlanGroup,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfPlanGroup"),
    :schema_element => [
      ["planGroup", ["Docusign::AccountManagement::PlanGroup[]", XSD::QName.new(NsAccountManagement, "PlanGroup")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::PlanGroup,
    :schema_type => XSD::QName.new(NsAccountManagement, "PlanGroup"),
    :schema_element => [
      ["planGroupName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PlanGroupName")], [0, 1]],
      ["planGroupPlans", ["Docusign::AccountManagement::ArrayOfPlanGroupPlan", XSD::QName.new(NsAccountManagement, "PlanGroupPlans")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfPlanGroupPlan,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfPlanGroupPlan"),
    :schema_element => [
      ["planGroupPlan", ["Docusign::AccountManagement::PlanGroupPlan[]", XSD::QName.new(NsAccountManagement, "PlanGroupPlan")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::PlanGroupPlan,
    :schema_type => XSD::QName.new(NsAccountManagement, "PlanGroupPlan"),
    :schema_element => [
      ["planName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PlanName")], [0, 1]],
      ["pgp", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Pgp")], [0, 1]],
      ["paymentMethod", ["Docusign::AccountManagement::PaymentMethod", XSD::QName.new(NsAccountManagement, "PaymentMethod")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfMembershipSummary,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfMembershipSummary"),
    :schema_element => [
      ["membershipSummary", ["Docusign::AccountManagement::MembershipSummary[]", XSD::QName.new(NsAccountManagement, "MembershipSummary")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::MembershipSummary,
    :schema_type => XSD::QName.new(NsAccountManagement, "MembershipSummary"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountName")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserName")], [0, 1]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["userType", ["Docusign::AccountManagement::UserType", XSD::QName.new(NsAccountManagement, "UserType")]],
      ["userStatus", ["Docusign::AccountManagement::UserStatus", XSD::QName.new(NsAccountManagement, "UserStatus")]],
      ["planName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PlanName")], [0, 1]],
      ["pgp", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Pgp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfString,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ChangePasswordArg,
    :schema_type => XSD::QName.new(NsAccountManagement, "ChangePasswordArg"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "EmailAddress")], [0, 1]],
      ["oldPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "OldPassword")], [0, 1]],
      ["newPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "NewPassword")], [0, 1]],
      ["forgottenPasswordQuestion", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordQuestion")], [0, 1]],
      ["forgottenPasswordAnswer", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordAnswer")], [0, 1]],
      ["forgottenPasswordQuestion2", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordQuestion2")], [0, 1]],
      ["forgottenPasswordAnswer2", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordAnswer2")], [0, 1]],
      ["forgottenPasswordQuestion3", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordQuestion3")], [0, 1]],
      ["forgottenPasswordAnswer3", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordAnswer3")], [0, 1]],
      ["forgottenPasswordQuestion4", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordQuestion4")], [0, 1]],
      ["forgottenPasswordAnswer4", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ForgottenPasswordAnswer4")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetSignaturesArg,
    :schema_type => XSD::QName.new(NsAccountManagement, "GetSignaturesArg"),
    :schema_element => [
      ["includeBytes", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "IncludeBytes")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ArrayOfSignature,
    :schema_type => XSD::QName.new(NsAccountManagement, "ArrayOfSignature"),
    :schema_element => [
      ["signature", ["Docusign::AccountManagement::Signature[]", XSD::QName.new(NsAccountManagement, "Signature")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::Signature,
    :schema_type => XSD::QName.new(NsAccountManagement, "Signature"),
    :schema_element => [
      ["stampFont", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "StampFont")], [0, 1]],
      ["signatureType", ["Docusign::AccountManagement::SignatureType", XSD::QName.new(NsAccountManagement, "SignatureType")]],
      ["signatureName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SignatureName")], [0, 1]],
      ["signatureText", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SignatureText")], [0, 1]],
      ["signatureImage", ["Docusign::AccountManagement::Image", XSD::QName.new(NsAccountManagement, "SignatureImage")], [0, 1]],
      ["initialsText", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "InitialsText")], [0, 1]],
      ["initialsImage", ["Docusign::AccountManagement::Image", XSD::QName.new(NsAccountManagement, "InitialsImage")], [0, 1]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(NsAccountManagement, "Created")]],
      ["adopted", ["SOAP::SOAPDateTime", XSD::QName.new(NsAccountManagement, "Adopted")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::Image,
    :schema_type => XSD::QName.new(NsAccountManagement, "Image"),
    :schema_element => [
      ["mimeType", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MimeType")], [0, 1]],
      ["imageData", ["SOAP::SOAPBase64", XSD::QName.new(NsAccountManagement, "ImageData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::SetSignatureImagesArg,
    :schema_type => XSD::QName.new(NsAccountManagement, "SetSignatureImagesArg"),
    :schema_element => [
      ["signatureName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SignatureName")], [0, 1]],
      ["signatureImage", ["Docusign::AccountManagement::Image", XSD::QName.new(NsAccountManagement, "SignatureImage")], [0, 1]],
      ["initialsImage", ["Docusign::AccountManagement::Image", XSD::QName.new(NsAccountManagement, "InitialsImage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ErrorCode,
    :schema_type => XSD::QName.new(NsAccountManagement, "ErrorCode")
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::PaymentCycle,
    :schema_type => XSD::QName.new(NsAccountManagement, "PaymentCycle")
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::PaymentMethod,
    :schema_type => XSD::QName.new(NsAccountManagement, "PaymentMethod")
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::UserType,
    :schema_type => XSD::QName.new(NsAccountManagement, "UserType")
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::UserStatus,
    :schema_type => XSD::QName.new(NsAccountManagement, "UserStatus")
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::SignatureType,
    :schema_type => XSD::QName.new(NsAccountManagement, "SignatureType")
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::UpgradeRecipientAccount,
    :schema_name => XSD::QName.new(NsAccountManagement, "UpgradeRecipientAccount"),
    :schema_element => [
      ["distributorCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorCode")], [0, 1]],
      ["distributorPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorPassword")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["pgp", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Pgp")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountName")], [0, 1]],
      ["creditCardInformation", ["Docusign::AccountManagement::CreditCardInformation", XSD::QName.new(NsAccountManagement, "CreditCardInformation")], [0, 1]],
      ["referralInformation", ["Docusign::AccountManagement::ReferralInformation", XSD::QName.new(NsAccountManagement, "ReferralInformation")], [0, 1]],
      ["accountSettings", ["Docusign::AccountManagement::AccountSettings", XSD::QName.new(NsAccountManagement, "AccountSettings")], [0, 1]],
      ["addressInformation", ["Docusign::AccountManagement::AddressInformation", XSD::QName.new(NsAccountManagement, "AddressInformation")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::UpgradeRecipientAccountResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "UpgradeRecipientAccountResponse"),
    :schema_element => [
      ["upgradeRecipientAccountResult", ["Docusign::AccountManagement::UpgradeRecipientAccountResponse::UpgradeRecipientAccountResult", XSD::QName.new(NsAccountManagement, "UpgradeRecipientAccountResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::UpgradeRecipientAccountResponse::UpgradeRecipientAccountResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "UpgradeRecipientAccountResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::NewAccount,
    :schema_name => XSD::QName.new(NsAccountManagement, "NewAccount"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountName")], [0, 1]],
      ["distributorCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorCode")], [0, 1]],
      ["distributorPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorPassword")], [0, 1]],
      ["pgp", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Pgp")], [0, 1]],
      ["creditCardInformation", ["Docusign::AccountManagement::CreditCardInformation", XSD::QName.new(NsAccountManagement, "CreditCardInformation")], [0, 1]],
      ["referralInformation", ["Docusign::AccountManagement::ReferralInformation", XSD::QName.new(NsAccountManagement, "ReferralInformation")], [0, 1]],
      ["accountSettings", ["Docusign::AccountManagement::AccountSettings", XSD::QName.new(NsAccountManagement, "AccountSettings")], [0, 1]],
      ["member", ["Docusign::AccountManagement::Member", XSD::QName.new(NsAccountManagement, "Member")], [0, 1]],
      ["addressInformation", ["Docusign::AccountManagement::AddressInformation", XSD::QName.new(NsAccountManagement, "AddressInformation")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::NewAccountResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "NewAccountResponse"),
    :schema_element => [
      ["newAccountResult", ["Docusign::AccountManagement::NewAccountResponse::NewAccountResult", XSD::QName.new(NsAccountManagement, "NewAccountResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::NewAccountResponse::NewAccountResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "NewAccountResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["siteId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SiteId")], [0, 1]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["membershipId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MembershipId")], [0, 1]],
      ["encryptedPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "EncryptedPassword")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::AddMembersToAccount,
    :schema_name => XSD::QName.new(NsAccountManagement, "AddMembersToAccount"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["members", ["Docusign::AccountManagement::ArrayOfMember", XSD::QName.new(NsAccountManagement, "Members")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::AddMembersToAccountResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "AddMembersToAccountResponse"),
    :schema_element => [
      ["addMembersToAccountResult", ["Docusign::AccountManagement::AddMembersToAccountResponse::AddMembersToAccountResult", XSD::QName.new(NsAccountManagement, "AddMembersToAccountResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::AddMembersToAccountResponse::AddMembersToAccountResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "AddMembersToAccountResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["members", ["Docusign::AccountManagement::ArrayOfMemberResult", XSD::QName.new(NsAccountManagement, "Members")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetPlanPricingInformation,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetPlanPricingInformation"),
    :schema_element => [
      ["distributorCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorCode")], [0, 1]],
      ["distributorPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorPassword")], [0, 1]],
      ["pgp", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Pgp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetPlanPricingInformationResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetPlanPricingInformationResponse"),
    :schema_element => [
      ["getPlanPricingInformationResult", ["Docusign::AccountManagement::GetPlanPricingInformationResponse::GetPlanPricingInformationResult", XSD::QName.new(NsAccountManagement, "GetPlanPricingInformationResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetPlanPricingInformationResponse::GetPlanPricingInformationResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetPlanPricingInformationResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["plan", ["Docusign::AccountManagement::Plan", XSD::QName.new(NsAccountManagement, "Plan")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetSuccessorPlanInformation,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetSuccessorPlanInformation"),
    :schema_element => [
      ["distributorCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorCode")], [0, 1]],
      ["distributorPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorPassword")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetSuccessorPlanInformationResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetSuccessorPlanInformationResponse"),
    :schema_element => [
      ["getSuccessorPlanInformationResult", ["Docusign::AccountManagement::GetSuccessorPlanInformationResponse::GetSuccessorPlanInformationResult", XSD::QName.new(NsAccountManagement, "GetSuccessorPlanInformationResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetSuccessorPlanInformationResponse::GetSuccessorPlanInformationResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetSuccessorPlanInformationResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["currentPlan", ["Docusign::AccountManagement::Plan", XSD::QName.new(NsAccountManagement, "CurrentPlan")], [0, 1]],
      ["successorPlans", ["Docusign::AccountManagement::ArrayOfPlan", XSD::QName.new(NsAccountManagement, "SuccessorPlans")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetPlanGroupInformation,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetPlanGroupInformation"),
    :schema_element => [
      ["distributorCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorCode")], [0, 1]],
      ["distributorPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorPassword")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetPlanGroupInformationResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetPlanGroupInformationResponse"),
    :schema_element => [
      ["getPlanGroupInformationResult", ["Docusign::AccountManagement::GetPlanGroupInformationResponse::GetPlanGroupInformationResult", XSD::QName.new(NsAccountManagement, "GetPlanGroupInformationResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetPlanGroupInformationResponse::GetPlanGroupInformationResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetPlanGroupInformationResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["planGroups", ["Docusign::AccountManagement::ArrayOfPlanGroup", XSD::QName.new(NsAccountManagement, "PlanGroups")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetMembershipSummary,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetMembershipSummary"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetMembershipSummaryResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetMembershipSummaryResponse"),
    :schema_element => [
      ["getMembershipSummaryResult", ["Docusign::AccountManagement::GetMembershipSummaryResponse::GetMembershipSummaryResult", XSD::QName.new(NsAccountManagement, "GetMembershipSummaryResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetMembershipSummaryResponse::GetMembershipSummaryResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetMembershipSummaryResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["membershipSummaries", ["Docusign::AccountManagement::ArrayOfMembershipSummary", XSD::QName.new(NsAccountManagement, "MembershipSummaries")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ChangeAccountPricePlan,
    :schema_name => XSD::QName.new(NsAccountManagement, "ChangeAccountPricePlan"),
    :schema_element => [
      ["distributorCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorCode")], [0, 1]],
      ["distributorPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorPassword")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["pgp", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Pgp")], [0, 1]],
      ["enableSupport", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "EnableSupport")]],
      ["includedSeats", ["SOAP::SOAPInt", XSD::QName.new(NsAccountManagement, "IncludedSeats")]],
      ["creditCardInformation", ["Docusign::AccountManagement::CreditCardInformation", XSD::QName.new(NsAccountManagement, "CreditCardInformation")], [0, 1]],
      ["addressInformation", ["Docusign::AccountManagement::AddressInformation", XSD::QName.new(NsAccountManagement, "AddressInformation")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ChangeAccountPricePlanResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "ChangeAccountPricePlanResponse"),
    :schema_element => [
      ["changeAccountPricePlanResult", ["Docusign::AccountManagement::ChangeAccountPricePlanResponse::ChangeAccountPricePlanResult", XSD::QName.new(NsAccountManagement, "ChangeAccountPricePlanResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ChangeAccountPricePlanResponse::ChangeAccountPricePlanResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "ChangeAccountPricePlanResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetProvisioningInformation,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetProvisioningInformation"),
    :schema_element => [
      ["appToken", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AppToken")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetProvisioningInformationResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetProvisioningInformationResponse"),
    :schema_element => [
      ["getProvisioningInformationResult", ["Docusign::AccountManagement::GetProvisioningInformationResponse::GetProvisioningInformationResult", XSD::QName.new(NsAccountManagement, "GetProvisioningInformationResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetProvisioningInformationResponse::GetProvisioningInformationResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetProvisioningInformationResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["distributorCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorCode")], [0, 1]],
      ["distributorPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorPassword")], [0, 1]],
      ["pgp", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Pgp")], [0, 1]],
      ["planPromoText", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PlanPromoText")], [0, 1]],
      ["defaultConnectConfigurationId", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "DefaultConnectConfigurationId")], [0, 1]],
      ["passwordRuleText", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "PasswordRuleText")], [0, 1]],
      ["purchaseOrderOrPromoAllowed", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "PurchaseOrderOrPromoAllowed")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::SetConnectCredentials,
    :schema_name => XSD::QName.new(NsAccountManagement, "SetConnectCredentials"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["connectUsername", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ConnectUsername")], [0, 1]],
      ["connectPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ConnectPassword")], [0, 1]],
      ["connectConfigurationId", ["SOAP::SOAPInt", XSD::QName.new(NsAccountManagement, "ConnectConfigurationId")]],
      ["salesforceEnvironment", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SalesforceEnvironment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::SetConnectCredentialsResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "SetConnectCredentialsResponse"),
    :schema_element => [
      ["setConnectCredentialsResult", ["Docusign::AccountManagement::SetConnectCredentialsResponse::SetConnectCredentialsResult", XSD::QName.new(NsAccountManagement, "SetConnectCredentialsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::SetConnectCredentialsResponse::SetConnectCredentialsResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "SetConnectCredentialsResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["connectTestResult", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ConnectTestResult")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetPlanType,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetPlanType"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetPlanTypeResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetPlanTypeResponse"),
    :schema_element => [
      ["getPlanTypeResult", ["Docusign::AccountManagement::GetPlanTypeResponse::GetPlanTypeResult", XSD::QName.new(NsAccountManagement, "GetPlanTypeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetPlanTypeResponse::GetPlanTypeResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetPlanTypeResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["logicalPlanType", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "LogicalPlanType")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetAccountInformation,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetAccountInformation"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetAccountInformationResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetAccountInformationResponse"),
    :schema_element => [
      ["getAccountInformationResult", ["Docusign::AccountManagement::GetAccountInformationResponse::GetAccountInformationResult", XSD::QName.new(NsAccountManagement, "GetAccountInformationResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetAccountInformationResponse::GetAccountInformationResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetAccountInformationResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["currentPlanId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "CurrentPlanId")], [0, 1]],
      ["currentPlanName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "CurrentPlanName")], [0, 1]],
      ["currentPlanStartDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsAccountManagement, "CurrentPlanStartDate")], [0, 1]],
      ["currentPlanEndDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsAccountManagement, "CurrentPlanEndDate")], [0, 1]],
      ["currentBillingPeriodStartDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsAccountManagement, "CurrentBillingPeriodStartDate")], [0, 1]],
      ["currentBillingPeriodEndDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsAccountManagement, "CurrentBillingPeriodEndDate")], [0, 1]],
      ["currentBillingPeriodEnvelopesSent", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "CurrentBillingPeriodEnvelopesSent")], [0, 1]],
      ["currentBillingPeriodEnvelopesAllowed", ["SOAP::SOAPInteger", XSD::QName.new(NsAccountManagement, "CurrentBillingPeriodEnvelopesAllowed")], [0, 1]],
      ["accountSuspensionStatus", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountSuspensionStatus")], [0, 1]],
      ["accountSuspensionDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsAccountManagement, "AccountSuspensionDate")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountName")], [0, 1]],
      ["externalAccountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ExternalAccountId")], [0, 1]],
      ["connectPermission", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ConnectPermission")], [0, 1]],
      ["docusignLandingUrl", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DocusignLandingUrl")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetAccountDistributorCode,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetAccountDistributorCode"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetAccountDistributorCodeResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetAccountDistributorCodeResponse"),
    :schema_element => [
      ["getAccountDistributorCodeResult", ["Docusign::AccountManagement::GetAccountDistributorCodeResponse::GetAccountDistributorCodeResult", XSD::QName.new(NsAccountManagement, "GetAccountDistributorCodeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetAccountDistributorCodeResponse::GetAccountDistributorCodeResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetAccountDistributorCodeResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["distributorCode", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "DistributorCode")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetConnectCredentials,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetConnectCredentials"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetConnectCredentialsResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetConnectCredentialsResponse"),
    :schema_element => [
      ["getConnectCredentialsResult", ["Docusign::AccountManagement::GetConnectCredentialsResponse::GetConnectCredentialsResult", XSD::QName.new(NsAccountManagement, "GetConnectCredentialsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetConnectCredentialsResponse::GetConnectCredentialsResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetConnectCredentialsResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["connectUserName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ConnectUserName")], [0, 1]],
      ["connectConfig", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ConnectConfig")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetEncryptedPassword,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetEncryptedPassword"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetEncryptedPasswordResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetEncryptedPasswordResponse"),
    :schema_element => [
      ["getEncryptedPasswordResult", ["Docusign::AccountManagement::GetEncryptedPasswordResponse::GetEncryptedPasswordResult", XSD::QName.new(NsAccountManagement, "GetEncryptedPasswordResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetEncryptedPasswordResponse::GetEncryptedPasswordResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetEncryptedPasswordResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["encryptedPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "EncryptedPassword")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetAccountSettings,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetAccountSettings"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetAccountSettingsResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetAccountSettingsResponse"),
    :schema_element => [
      ["getAccountSettingsResult", ["Docusign::AccountManagement::GetAccountSettingsResponse::GetAccountSettingsResult", XSD::QName.new(NsAccountManagement, "GetAccountSettingsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetAccountSettingsResponse::GetAccountSettingsResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetAccountSettingsResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["accountSettings", ["Docusign::AccountManagement::AccountSettings", XSD::QName.new(NsAccountManagement, "AccountSettings")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::UpdateAccountSettings,
    :schema_name => XSD::QName.new(NsAccountManagement, "UpdateAccountSettings"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["accountSettings", ["Docusign::AccountManagement::AccountSettings", XSD::QName.new(NsAccountManagement, "AccountSettings")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::UpdateAccountSettingsResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "UpdateAccountSettingsResponse"),
    :schema_element => [
      ["updateAccountSettingsResult", ["Docusign::AccountManagement::UpdateAccountSettingsResponse::UpdateAccountSettingsResult", XSD::QName.new(NsAccountManagement, "UpdateAccountSettingsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::UpdateAccountSettingsResponse::UpdateAccountSettingsResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "UpdateAccountSettingsResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::AuthenticateMember,
    :schema_name => XSD::QName.new(NsAccountManagement, "AuthenticateMember"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::AuthenticateMemberResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "AuthenticateMemberResponse"),
    :schema_element => [
      ["authenticateMemberResult", ["Docusign::AccountManagement::AuthenticateMemberResponse::AuthenticateMemberResult", XSD::QName.new(NsAccountManagement, "AuthenticateMemberResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::AuthenticateMemberResponse::AuthenticateMemberResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "AuthenticateMemberResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["usesAPI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "UsesAPI")], [0, 1]],
      ["memberSettings", ["Docusign::AccountManagement::MemberSettings", XSD::QName.new(NsAccountManagement, "MemberSettings")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::AuthenticateMemberEx,
    :schema_name => XSD::QName.new(NsAccountManagement, "AuthenticateMemberEx"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::AuthenticateMemberExResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "AuthenticateMemberExResponse"),
    :schema_element => [
      ["authenticateMemberExResult", ["Docusign::AccountManagement::AuthenticateMemberExResponse::AuthenticateMemberExResult", XSD::QName.new(NsAccountManagement, "AuthenticateMemberExResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::AuthenticateMemberExResponse::AuthenticateMemberExResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "AuthenticateMemberExResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["usesAPI", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "UsesAPI")], [0, 1]],
      ["memberSettings", ["Docusign::AccountManagement::MemberSettings", XSD::QName.new(NsAccountManagement, "MemberSettings")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetMemberSettings,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetMemberSettings"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetMemberSettingsResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetMemberSettingsResponse"),
    :schema_element => [
      ["getMemberSettingsResult", ["Docusign::AccountManagement::GetMemberSettingsResponse::GetMemberSettingsResult", XSD::QName.new(NsAccountManagement, "GetMemberSettingsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetMemberSettingsResponse::GetMemberSettingsResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetMemberSettingsResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["memberSettings", ["Docusign::AccountManagement::MemberSettings", XSD::QName.new(NsAccountManagement, "MemberSettings")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::UpdateMemberSettings,
    :schema_name => XSD::QName.new(NsAccountManagement, "UpdateMemberSettings"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["memberSettings", ["Docusign::AccountManagement::MemberSettings", XSD::QName.new(NsAccountManagement, "MemberSettings")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::UpdateMemberSettingsResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "UpdateMemberSettingsResponse"),
    :schema_element => [
      ["updateMemberSettingsResult", ["Docusign::AccountManagement::UpdateMemberSettingsResponse::UpdateMemberSettingsResult", XSD::QName.new(NsAccountManagement, "UpdateMemberSettingsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::UpdateMemberSettingsResponse::UpdateMemberSettingsResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "UpdateMemberSettingsResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::CloseMembers,
    :schema_name => XSD::QName.new(NsAccountManagement, "CloseMembers"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["userIds", ["Docusign::AccountManagement::ArrayOfString", XSD::QName.new(NsAccountManagement, "UserIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::CloseMembersResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "CloseMembersResponse"),
    :schema_element => [
      ["closeMembersResult", ["Docusign::AccountManagement::CloseMembersResponse::CloseMembersResult", XSD::QName.new(NsAccountManagement, "CloseMembersResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::CloseMembersResponse::CloseMembersResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "CloseMembersResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["members", ["Docusign::AccountManagement::ArrayOfMemberResult", XSD::QName.new(NsAccountManagement, "Members")], [0, 1]],
      ["dateStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsAccountManagement, "DateStamp")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::CheckAccountMember,
    :schema_name => XSD::QName.new(NsAccountManagement, "CheckAccountMember"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::CheckAccountMemberResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "CheckAccountMemberResponse"),
    :schema_element => [
      ["checkAccountMemberResult", ["Docusign::AccountManagement::CheckAccountMemberResponse::CheckAccountMemberResult", XSD::QName.new(NsAccountManagement, "CheckAccountMemberResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::CheckAccountMemberResponse::CheckAccountMemberResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "CheckAccountMemberResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "Status")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ActivateSalesforceInstance,
    :schema_name => XSD::QName.new(NsAccountManagement, "ActivateSalesforceInstance"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["externalInstanceId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ExternalInstanceId")], [0, 1]],
      ["connectUsername", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ConnectUsername")], [0, 1]],
      ["connectPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "ConnectPassword")], [0, 1]],
      ["salesforceEnvironment", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SalesforceEnvironment")], [0, 1]],
      ["member", ["Docusign::AccountManagement::Member", XSD::QName.new(NsAccountManagement, "Member")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ActivateSalesforceInstanceResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "ActivateSalesforceInstanceResponse"),
    :schema_element => [
      ["activateSalesforceInstanceResult", ["Docusign::AccountManagement::ActivateSalesforceInstanceResponse::ActivateSalesforceInstanceResult", XSD::QName.new(NsAccountManagement, "ActivateSalesforceInstanceResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ActivateSalesforceInstanceResponse::ActivateSalesforceInstanceResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "ActivateSalesforceInstanceResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "AccountId")], [0, 1]],
      ["siteId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SiteId")], [0, 1]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["membershipId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "MembershipId")], [0, 1]],
      ["encryptedPassword", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "EncryptedPassword")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ChangePassword,
    :schema_name => XSD::QName.new(NsAccountManagement, "ChangePassword"),
    :schema_element => [
      ["changePasswordArg", ["Docusign::AccountManagement::ChangePasswordArg", XSD::QName.new(NsAccountManagement, "ChangePasswordArg")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ChangePasswordResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "ChangePasswordResponse"),
    :schema_element => [
      ["changePasswordResult", ["Docusign::AccountManagement::ChangePasswordResponse::ChangePasswordResult", XSD::QName.new(NsAccountManagement, "ChangePasswordResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::ChangePasswordResponse::ChangePasswordResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "ChangePasswordResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetSignatures,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetSignatures"),
    :schema_element => [
      ["getSignaturesArg", ["Docusign::AccountManagement::GetSignaturesArg", XSD::QName.new(NsAccountManagement, "GetSignaturesArg")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetSignaturesResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetSignaturesResponse"),
    :schema_element => [
      ["getSignaturesResult", ["Docusign::AccountManagement::GetSignaturesResponse::GetSignaturesResult", XSD::QName.new(NsAccountManagement, "GetSignaturesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::GetSignaturesResponse::GetSignaturesResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "GetSignaturesResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["signatures", ["Docusign::AccountManagement::ArrayOfSignature", XSD::QName.new(NsAccountManagement, "Signatures")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::SetSignatureImages,
    :schema_name => XSD::QName.new(NsAccountManagement, "SetSignatureImages"),
    :schema_element => [
      ["setSignatureImagesArg", ["Docusign::AccountManagement::SetSignatureImagesArg", XSD::QName.new(NsAccountManagement, "SetSignatureImagesArg")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::SetSignatureImagesResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "SetSignatureImagesResponse"),
    :schema_element => [
      ["setSignatureImagesResult", ["Docusign::AccountManagement::SetSignatureImagesResponse::SetSignatureImagesResult", XSD::QName.new(NsAccountManagement, "SetSignatureImagesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::SetSignatureImagesResponse::SetSignatureImagesResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "SetSignatureImagesResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "UserId")], [0, 1]],
      ["signatures", ["Docusign::AccountManagement::ArrayOfSignature", XSD::QName.new(NsAccountManagement, "Signatures")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::CloseSignature,
    :schema_name => XSD::QName.new(NsAccountManagement, "CloseSignature"),
    :schema_element => [
      ["signatureName", ["SOAP::SOAPString", XSD::QName.new(NsAccountManagement, "SignatureName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::CloseSignatureResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "CloseSignatureResponse"),
    :schema_element => [
      ["closeSignatureResult", ["Docusign::AccountManagement::CloseSignatureResponse::CloseSignatureResult", XSD::QName.new(NsAccountManagement, "CloseSignatureResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::CloseSignatureResponse::CloseSignatureResult,
    :schema_name => XSD::QName.new(NsAccountManagement, "CloseSignatureResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "Success")]],
      ["error", ["Docusign::AccountManagement::RequestError", XSD::QName.new(NsAccountManagement, "Error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::Ping,
    :schema_name => XSD::QName.new(NsAccountManagement, "Ping"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Docusign::AccountManagement::PingResponse,
    :schema_name => XSD::QName.new(NsAccountManagement, "PingResponse"),
    :schema_element => [
      ["pingResult", ["SOAP::SOAPBoolean", XSD::QName.new(NsAccountManagement, "PingResult")]]
    ]
  )
end

end; end
