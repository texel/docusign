# Generates SOAP stubs for Salesforce Enterprise API.
# Requires a /config/salesforce/enterprise.wsdl.xml

require 'rubygems'
gem 'soap4r'
require 'wsdl/soap/wsdl2ruby'

namespace :docusign do
  namespace :services do
    desc "Generate SOAP stubs for Salesforce API"
    task :generate => [:environment] do
      wsdl_path = File.expand_path(File.dirname(__FILE__) + "/../lib/DocuSign3.0API.wsdl")
      wsdl2ruby('docusign', 'Docusign', "file://#{wsdl_path}")
    end
  end
end

private

def wsdl2ruby(name, module_name, url)
  g = WSDL::SOAP::WSDL2Ruby.new
  g.location = url
  g.basedir = File.expand_path(File.dirname(__FILE__) + "/../lib/")
  g.opt['classdef'] = name
  g.opt['driver'] = nil
  g.opt['module_path'] = module_name
  g.opt['mapping_registry'] = true
  g.opt['force'] = true
  g.run
end