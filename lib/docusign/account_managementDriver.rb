require 'docusign/account_management.rb'
require 'docusign/account_managementMappingRegistry.rb'
require 'soap/rpc/driver'

module Docusign::AccountManagement

class AccountManagementServiceSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://www.docusign.net/api/3.0/AccountManagement.asmx"

  Methods = [
    [ "http://www.docusign.net/API/AccountManagement/UpgradeRecipientAccount",
      "upgradeRecipientAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "UpgradeRecipientAccount"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "UpgradeRecipientAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/NewAccount",
      "newAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "NewAccount"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "NewAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/AddMembersToAccount",
      "addMembersToAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "AddMembersToAccount"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "AddMembersToAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetPlanPricingInformation",
      "getPlanPricingInformation",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetPlanPricingInformation"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetPlanPricingInformationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetSuccessorPlanInformation",
      "getSuccessorPlanInformation",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetSuccessorPlanInformation"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetSuccessorPlanInformationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetPlanGroupInformation",
      "getPlanGroupInformation",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetPlanGroupInformation"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetPlanGroupInformationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetMembershipSummary",
      "getMembershipSummary",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetMembershipSummary"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetMembershipSummaryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/ChangeAccountPricePlan",
      "changeAccountPricePlan",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "ChangeAccountPricePlan"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "ChangeAccountPricePlanResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetProvisioningInformation",
      "getProvisioningInformation",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetProvisioningInformation"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetProvisioningInformationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/SetConnectCredentials",
      "setConnectCredentials",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "SetConnectCredentials"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "SetConnectCredentialsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetPlanType",
      "getPlanType",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetPlanType"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetPlanTypeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetAccountInformation",
      "getAccountInformation",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetAccountInformation"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetAccountInformationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetAccountDistributorCode",
      "getAccountDistributorCode",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetAccountDistributorCode"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetAccountDistributorCodeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetConnectCredentials",
      "getConnectCredentials",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetConnectCredentials"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetConnectCredentialsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetEncryptedPassword",
      "getEncryptedPassword",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetEncryptedPassword"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetEncryptedPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetAccountSettings",
      "getAccountSettings",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetAccountSettings"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetAccountSettingsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/UpdateAccountSettings",
      "updateAccountSettings",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "UpdateAccountSettings"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "UpdateAccountSettingsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/AuthenticateMember",
      "authenticateMember",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "AuthenticateMember"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "AuthenticateMemberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/AuthenticateMemberEx",
      "authenticateMemberEx",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "AuthenticateMemberEx"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "AuthenticateMemberExResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetMemberSettings",
      "getMemberSettings",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetMemberSettings"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetMemberSettingsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/UpdateMemberSettings",
      "updateMemberSettings",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "UpdateMemberSettings"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "UpdateMemberSettingsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/CloseMembers",
      "closeMembers",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "CloseMembers"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "CloseMembersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/CheckAccountMember",
      "checkAccountMember",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "CheckAccountMember"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "CheckAccountMemberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/ActivateSalesforceInstance",
      "activateSalesforceInstance",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "ActivateSalesforceInstance"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "ActivateSalesforceInstanceResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/ChangePassword",
      "changePassword",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "ChangePassword"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "ChangePasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/GetSignatures",
      "getSignatures",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetSignatures"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "GetSignaturesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/SetSignatureImages",
      "setSignatureImages",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "SetSignatureImages"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "SetSignatureImagesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/CloseSignature",
      "closeSignature",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "CloseSignature"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "CloseSignatureResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.docusign.net/API/AccountManagement/Ping",
      "ping",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "Ping"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.docusign.net/API/AccountManagement", "PingResponse"]] ],
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
