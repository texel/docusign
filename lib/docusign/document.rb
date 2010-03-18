require 'docusign'

module Docusign
  class Document
    def tabs(recipient = nil, &block)
      returning Docusign::ArrayOfTab.new do |a|
        
      end
    end
  end
end