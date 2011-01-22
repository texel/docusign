require 'docusign/credential.rb'
require 'soap/mapping'

module Docusign; module Credential

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsCredential = "http://www.docusign.net/API/Credential"

  EncodedRegistry.register(
    :class => Docusign::Credential::ArrayOfAccount,
    :schema_type => XSD::QName.new(NsCredential, "ArrayOfAccount"),
    :schema_element => [
      ["account", ["Docusign::Credential::ArrayOfAccount::Account[]", XSD::QName.new(NsCredential, "Account")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::Credential::ArrayOfAccount::Account,
    :schema_name => XSD::QName.new(NsCredential, "Account"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["accountID", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "AccountID")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "AccountName")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "UserID")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "UserName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "Email")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Docusign::Credential::ErrorCode,
    :schema_type => XSD::QName.new(NsCredential, "ErrorCode")
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::ArrayOfAccount,
    :schema_type => XSD::QName.new(NsCredential, "ArrayOfAccount"),
    :schema_element => [
      ["account", ["Docusign::Credential::ArrayOfAccount::Account[]", XSD::QName.new(NsCredential, "Account")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::ArrayOfAccount::Account,
    :schema_name => XSD::QName.new(NsCredential, "Account"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["accountID", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "AccountID")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "AccountName")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "UserID")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "UserName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::ErrorCode,
    :schema_type => XSD::QName.new(NsCredential, "ErrorCode")
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::Ping,
    :schema_name => XSD::QName.new(NsCredential, "Ping"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::PingResponse,
    :schema_name => XSD::QName.new(NsCredential, "PingResponse"),
    :schema_element => [
      ["pingResult", ["SOAP::SOAPBoolean", XSD::QName.new(NsCredential, "PingResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::Login,
    :schema_name => XSD::QName.new(NsCredential, "Login"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "Email")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "Password")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::LoginResponse,
    :schema_name => XSD::QName.new(NsCredential, "LoginResponse"),
    :schema_element => [
      ["loginResult", ["Docusign::Credential::LoginResponse::LoginResult", XSD::QName.new(NsCredential, "LoginResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::LoginResponse::LoginResult,
    :schema_name => XSD::QName.new(NsCredential, "LoginResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsCredential, "Success")]],
      ["errorCode", ["Docusign::Credential::ErrorCode", XSD::QName.new(NsCredential, "ErrorCode")], [0, 1]],
      ["authenticationMessage", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "AuthenticationMessage")], [0, 1]],
      ["accounts", ["Docusign::Credential::ArrayOfAccount", XSD::QName.new(NsCredential, "Accounts")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::GetAuthenticationToken,
    :schema_name => XSD::QName.new(NsCredential, "GetAuthenticationToken"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "Email")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "Password")], [0, 1]],
      ["accountID", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "AccountID")], [0, 1]],
      ["goToEnvelopeID", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "GoToEnvelopeID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::GetAuthenticationTokenResponse,
    :schema_name => XSD::QName.new(NsCredential, "GetAuthenticationTokenResponse"),
    :schema_element => [
      ["getAuthenticationTokenResult", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "GetAuthenticationTokenResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::RequestSenderToken,
    :schema_name => XSD::QName.new(NsCredential, "RequestSenderToken"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "Email")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "Password")], [0, 1]],
      ["accountID", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "AccountID")], [0, 1]],
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "EnvelopeID")], [0, 1]],
      ["returnURL", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "ReturnURL")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::RequestSenderTokenResponse,
    :schema_name => XSD::QName.new(NsCredential, "RequestSenderTokenResponse"),
    :schema_element => [
      ["requestSenderTokenResult", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "RequestSenderTokenResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::RequestCorrectToken,
    :schema_name => XSD::QName.new(NsCredential, "RequestCorrectToken"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "Email")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "Password")], [0, 1]],
      ["envelopeID", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "EnvelopeID")], [0, 1]],
      ["suppressNavigation", ["SOAP::SOAPBoolean", XSD::QName.new(NsCredential, "SuppressNavigation")]],
      ["returnURL", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "ReturnURL")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Docusign::Credential::RequestCorrectTokenResponse,
    :schema_name => XSD::QName.new(NsCredential, "RequestCorrectTokenResponse"),
    :schema_element => [
      ["requestCorrectTokenResult", ["SOAP::SOAPString", XSD::QName.new(NsCredential, "RequestCorrectTokenResult")], [0, 1]]
    ]
  )
end

end; end
