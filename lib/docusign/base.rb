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

module Docusign
  class Base
    
    class << self    
      def login(options={})
        
        connection  = Docusign::APIServiceSoap.new
        connection = configure_ssl(connection)
        
        if options[:integrators_key]
          header = IntegratorsKeyAuthHeaderHandler.new(
            :email           => options.delete(:email),
            :integrators_key => options.delete(:integrators_key),
            :password        => options.delete(:password)
          )
        else
          header = AuthHeaderHandler.new(
            :user_name => options.delete(:user_name), 
            :password  => options.delete(:password)
          )
        end
        
        connection.headerhandler << header
        
        options.each do |key, value|
          connection.send("#{key}=", value)
        end
        
        connection
      end
      
      def credentials(email, password, endpoint_url=nil)

        connection = Docusign::Credential::CredentialSoap.new
        connection = configure_ssl(connection)

        connection.endpoint_url = endpoint_url if endpoint_url

        connection.login(:email => email, :password => password).loginResult        
      end

      def configure_ssl(connection)
        connection.options["protocol.http.ssl_config.verify_mode"] = Docusign::Config[:verify_mode] if Docusign::Config[:verify_mode]
      	connection.options["protocol.http.ssl_config.ca_file"] = Docusign::Config[:ca_file] if Docusign::Config[:ca_file]
        connection
      end
    end
  end
end