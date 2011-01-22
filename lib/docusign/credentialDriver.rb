require 'docusign/credential.rb'
require 'docusign/credentialMappingRegistry.rb'
require 'soap/rpc/driver'

module Docusign::Credential

class CredentialSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://demo.docusign.net/api/3.0/credential.asmx"

  Methods = [
    [ "http://www.docusign.net/API/Credential/Ping",
      "ping",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/Credential", "Ping"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/Credential", "PingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/Credential/Login",
      "login",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/Credential", "Login"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/Credential", "LoginResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/Credential/GetAuthenticationToken",
      "getAuthenticationToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/Credential", "GetAuthenticationToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/Credential", "GetAuthenticationTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/Credential/RequestSenderToken",
      "requestSenderToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/Credential", "RequestSenderToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/Credential", "RequestSenderTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/Credential/RequestCorrectToken",
      "requestCorrectToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/Credential", "RequestCorrectToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/Credential", "RequestCorrectTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
