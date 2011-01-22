require 'xsd/qname'

module Docusign; module Credential


# {http://www.docusign.net/API/Credential}ArrayOfAccount
class ArrayOfAccount < ::Array

  # {http://www.docusign.net/API/Credential}Account
  #   accountID - SOAP::SOAPString
  #   accountName - SOAP::SOAPString
  #   userID - SOAP::SOAPString
  #   userName - SOAP::SOAPString
  #   email - SOAP::SOAPString
  class Account
    attr_accessor :accountID
    attr_accessor :accountName
    attr_accessor :userID
    attr_accessor :userName
    attr_accessor :email

    def initialize(accountID = nil, accountName = nil, userID = nil, userName = nil, email = nil)
      @accountID = accountID
      @accountName = accountName
      @userID = userID
      @userName = userName
      @email = email
    end
  end
end

# {http://www.docusign.net/API/Credential}ErrorCode
class ErrorCode < ::String
  Account_Lacks_Permissions = ErrorCode.new("Account_Lacks_Permissions")
  Success = ErrorCode.new("Success")
  Unspecified_Error = ErrorCode.new("Unspecified_Error")
  User_Authentication_Failed = ErrorCode.new("User_Authentication_Failed")
  User_Does_Not_Exist_In_System = ErrorCode.new("User_Does_Not_Exist_In_System")
  User_Lacks_Permissions = ErrorCode.new("User_Lacks_Permissions")
end

# {http://www.docusign.net/API/Credential}Ping
class Ping
  def initialize
  end
end

# {http://www.docusign.net/API/Credential}PingResponse
#   pingResult - SOAP::SOAPBoolean
class PingResponse
  attr_accessor :pingResult

  def initialize(pingResult = nil)
    @pingResult = pingResult
  end
end

# {http://www.docusign.net/API/Credential}Login
#   email - SOAP::SOAPString
#   password - SOAP::SOAPString
class Login
  attr_accessor :email
  attr_accessor :password

  def initialize(email = nil, password = nil)
    @email = email
    @password = password
  end
end

# {http://www.docusign.net/API/Credential}LoginResponse
#   loginResult - Docusign::Credential::LoginResponse::LoginResult
class LoginResponse

  # inner class for member: LoginResult
  # {http://www.docusign.net/API/Credential}LoginResult
  #   success - SOAP::SOAPBoolean
  #   errorCode - Docusign::Credential::ErrorCode
  #   authenticationMessage - SOAP::SOAPString
  #   accounts - Docusign::Credential::ArrayOfAccount
  class LoginResult
    attr_accessor :success
    attr_accessor :errorCode
    attr_accessor :authenticationMessage
    attr_accessor :accounts

    def initialize(success = nil, errorCode = nil, authenticationMessage = nil, accounts = nil)
      @success = success
      @errorCode = errorCode
      @authenticationMessage = authenticationMessage
      @accounts = accounts
    end
  end

  attr_accessor :loginResult

  def initialize(loginResult = nil)
    @loginResult = loginResult
  end
end

# {http://www.docusign.net/API/Credential}GetAuthenticationToken
#   email - SOAP::SOAPString
#   password - SOAP::SOAPString
#   accountID - SOAP::SOAPString
#   goToEnvelopeID - SOAP::SOAPString
class GetAuthenticationToken
  attr_accessor :email
  attr_accessor :password
  attr_accessor :accountID
  attr_accessor :goToEnvelopeID

  def initialize(email = nil, password = nil, accountID = nil, goToEnvelopeID = nil)
    @email = email
    @password = password
    @accountID = accountID
    @goToEnvelopeID = goToEnvelopeID
  end
end

# {http://www.docusign.net/API/Credential}GetAuthenticationTokenResponse
#   getAuthenticationTokenResult - SOAP::SOAPString
class GetAuthenticationTokenResponse
  attr_accessor :getAuthenticationTokenResult

  def initialize(getAuthenticationTokenResult = nil)
    @getAuthenticationTokenResult = getAuthenticationTokenResult
  end
end

# {http://www.docusign.net/API/Credential}RequestSenderToken
#   email - SOAP::SOAPString
#   password - SOAP::SOAPString
#   accountID - SOAP::SOAPString
#   envelopeID - SOAP::SOAPString
#   returnURL - SOAP::SOAPString
class RequestSenderToken
  attr_accessor :email
  attr_accessor :password
  attr_accessor :accountID
  attr_accessor :envelopeID
  attr_accessor :returnURL

  def initialize(email = nil, password = nil, accountID = nil, envelopeID = nil, returnURL = nil)
    @email = email
    @password = password
    @accountID = accountID
    @envelopeID = envelopeID
    @returnURL = returnURL
  end
end

# {http://www.docusign.net/API/Credential}RequestSenderTokenResponse
#   requestSenderTokenResult - SOAP::SOAPString
class RequestSenderTokenResponse
  attr_accessor :requestSenderTokenResult

  def initialize(requestSenderTokenResult = nil)
    @requestSenderTokenResult = requestSenderTokenResult
  end
end

# {http://www.docusign.net/API/Credential}RequestCorrectToken
#   email - SOAP::SOAPString
#   password - SOAP::SOAPString
#   envelopeID - SOAP::SOAPString
#   suppressNavigation - SOAP::SOAPBoolean
#   returnURL - SOAP::SOAPString
class RequestCorrectToken
  attr_accessor :email
  attr_accessor :password
  attr_accessor :envelopeID
  attr_accessor :suppressNavigation
  attr_accessor :returnURL

  def initialize(email = nil, password = nil, envelopeID = nil, suppressNavigation = nil, returnURL = nil)
    @email = email
    @password = password
    @envelopeID = envelopeID
    @suppressNavigation = suppressNavigation
    @returnURL = returnURL
  end
end

# {http://www.docusign.net/API/Credential}RequestCorrectTokenResponse
#   requestCorrectTokenResult - SOAP::SOAPString
class RequestCorrectTokenResponse
  attr_accessor :requestCorrectTokenResult

  def initialize(requestCorrectTokenResult = nil)
    @requestCorrectTokenResult = requestCorrectTokenResult
  end
end


end; end
