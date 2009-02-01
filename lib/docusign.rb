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
