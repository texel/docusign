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
require 'docusign/docusign'
require 'docusign/docusignMappingRegistry'
require 'docusign/docusignDriver'
require 'docusign/base'
require 'docusign/auth_header_handler'

Docusign::VERSION = '0.1'
# require File.expand_path(File.dirname(__FILE__) + '/docusign/docusign')
# require File.expand_path(File.dirname(__FILE__) + '/docusign/docusignMappingRegistry')
# require File.expand_path(File.dirname(__FILE__) + '/docusign/docusignDriver')
# require File.expand_path(File.dirname(__FILE__) + '/docusign/base')
