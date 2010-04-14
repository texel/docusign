# Copyright (C) DocuSign, Inc.  All rights reserved.
# 
# This source code is intended only as a supplement to DocuSign SDK 
# and/or on-line documentation.
# 
# This sample is designed to demonstrate DocuSign features and is not intended 
# for production use. Code and policy for a production application must be 
# developed to meet the specific data and security requirements of the 
# application.
# 
# THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
# KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
# PARTICULAR PURPOSE.

require 'soap/header/simplehandler'

module Docusign
  class IntegratorsKeyAuthHeaderHandler < SOAP::Header::SimpleHandler
    NAMESPACE = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd'
    
    attr_accessor :attributes

    def initialize(options={})
      self.attributes = options
      
      super(XSD::QName.new(NAMESPACE, 'Security'))
    end

    def on_simple_outbound
      if attributes[:integrators_key] && attributes[:email]
        {
          'UsernameToken' => {
            'Username' => "[#{attributes[:integrators_key]}]#{attributes[:email]}", 
            'Password' => attributes[:password]
          }
        }
      end
    end
  end
end