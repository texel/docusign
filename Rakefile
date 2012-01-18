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

require 'rubygems'
require './lib/docusign.rb'

gem 'soap4r'
require 'wsdl/soap/wsdl2ruby'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "docusign"
    gemspec.summary = "A library for working with the Docusign API and associated objects"
    gemspec.description = <<-HERE
A library for working with the Docusign API and associated objects.
Provides SOAP4R-generated proxy classes, and extends many useful classes
with familiar Ruby-like syntax.    
HERE
    gemspec.email = "texel1@gmail.com"
    gemspec.homepage = "http://github.com/texel/docusign"
    gemspec.authors = ["Leigh Caplan"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

task :cultivate do
  system "touch Manifest.txt; rake check_manifest | grep -v \"(in \" | patch"
  system "rake debug_gem | grep -v \"(in \" > `basename \\`pwd\\``.gemspec"
end

namespace :docusign do
  namespace :services do
    desc "Generate SOAP stubs for Docusign API"
    task :generate do
      wsdl_path = File.expand_path(File.dirname(__FILE__) + "/lib/wsdl/DocuSign3.0.2API.wsdl")
      wsdl2ruby('docusign', 'Docusign', "file://#{wsdl_path}")
    end
    
    desc "Generate SOAP stubs for Docusign Credential API"
    task :generate_credential_api do
      wsdl_path = File.expand_path(File.dirname(__FILE__) + "/lib/wsdl/DocuSign3.0.2CredentialAPI.wsdl")
      wsdl2ruby('docusign/credential', 'Docusign::Credential', "file://#{wsdl_path}")
    end
    
    desc "Generate SOAP stubs for Docusign Account Management API"
    task :generate_account_management_api do
      wsdl_path = File.expand_path(File.dirname(__FILE__) + "/lib/wsdl/Docusign3.0.2AccountManagementAPI.wsdl")
      wsdl2ruby('docusign/account_management', 'Docusign::AccountManagement', "file://#{wsdl_path}")      
    end
  end
end

private

def wsdl2ruby(name, module_name, url)
  g = WSDL::SOAP::WSDL2Ruby.new
  g.location = url
  g.basedir = File.expand_path(File.dirname(__FILE__) + "/lib/")
  g.opt['classdef'] = name
  g.opt['driver'] = nil
  g.opt['module_path'] = module_name
  g.opt['mapping_registry'] = true
  g.opt['force'] = true
  g.run
end

# vim: syntax=Ruby
