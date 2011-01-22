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
		 
$LOAD_PATH << File.expand_path(File.dirname(__FILE__))
 
gem 'soap4r'
require 'active_support'

require 'docusign/utilities'

require 'docusign/docusign'
require 'docusign/docusignMappingRegistry'
require 'docusign/docusignDriver'
require 'docusign/base'
require 'docusign/auth_header_handler'
require 'docusign/integrators_key_auth_header_handler'
require 'docusign/credential'
require 'docusign/credentialDriver'
require 'docusign/credentialMappingRegistry'

require 'docusign/document'
require 'docusign/tab'
require 'docusign/anchor_tab'
require 'docusign/request_recipient_token_client_urls'

require 'docusign/builder/base'
require 'docusign/builder/tab_builder'
require 'docusign/builder/anchor_builder'

require 'docusign/extensions'
