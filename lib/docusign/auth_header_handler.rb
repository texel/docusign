require 'soap/header/simplehandler'

module Docusign
  class AuthHeaderHandler < SOAP::Header::SimpleHandler
    NAMESPACE = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd'
    
    attr_accessor :user_name, :password

    def initialize(user_name, password)
      self.user_name = user_name
      self.password  = password
      
      super(XSD::QName.new(NAMESPACE, 'Security'))
    end

    def on_simple_outbound
      {"UsernameToken" => {"Username" => user_name, "Password" => password}}
    end
  end
end