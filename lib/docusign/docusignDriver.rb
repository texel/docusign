# require File.expand_path(File.dirname(__FILE__) + '/docusign.rb')
# require File.expand_path(File.dirname(__FILE__) + '/docusignMappingRegistry.rb')
# require 'docusign'
# require 'lib/docusignMappingRegistry'
 require 'soap/rpc/driver'

#require 'wss4r/rpc/wssdriver'


module Docusign

class APIServiceSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://www.docusign.net/api/3.0/api.asmx"

  Methods = [
    [ "http://www.docusign.net/API/3.0/CreateEnvelope",
      "createEnvelope",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "CreateEnvelope"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "CreateEnvelopeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/CreateAndSendEnvelope",
      "createAndSendEnvelope",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "CreateAndSendEnvelope"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "CreateAndSendEnvelopeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/CorrectAndResendEnvelope",
      "correctAndResendEnvelope",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "CorrectAndResendEnvelope"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "CorrectAndResendEnvelopeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/RequestPDF",
      "requestPDF",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "RequestPDF"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "RequestPDFResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/RequestDocumentPDFs",
      "requestDocumentPDFs",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "RequestDocumentPDFs"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "RequestDocumentPDFsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/RequestStatus",
      "requestStatus",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "RequestStatus"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "RequestStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/RequestStatuses",
      "requestStatuses",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "RequestStatuses"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "RequestStatusesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/GetRecipientEsignList",
      "getRecipientEsignList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "GetRecipientEsignList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "GetRecipientEsignListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/VoidEnvelope",
      "voidEnvelope",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "VoidEnvelope"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "VoidEnvelopeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/RequestRecipientToken",
      "requestRecipientToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "RequestRecipientToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "RequestRecipientTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/TransferEnvelope",
      "transferEnvelope",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "TransferEnvelope"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "TransferEnvelopeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/GetAccountMembershipFeaturesList",
      "getAccountMembershipFeaturesList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "GetAccountMembershipFeaturesList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "GetAccountMembershipFeaturesListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/AcknowledgeAuthoritativeCopyExport",
      "acknowledgeAuthoritativeCopyExport",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "AcknowledgeAuthoritativeCopyExport"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "AcknowledgeAuthoritativeCopyExportResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/ExportAuthoritativeCopy",
      "exportAuthoritativeCopy",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "ExportAuthoritativeCopy"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "ExportAuthoritativeCopyResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/EnvelopeAuditEvents",
      "envelopeAuditEvents",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "EnvelopeAuditEvents"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "EnvelopeAuditEventsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/3.0/Ping",
      "ping",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "Ping"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/3.0", "PingResponse"]] ],
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
      opt.merge!({
            :attributeformdefault => true
          })
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
