require 'docusign'

module Docusign
  class Document
    attr_accessor :tabs
    attr_writer :tab_builder
    
    def tabs(recipient = nil, &block)      
      @tabs ||= Docusign::ArrayOfTab.new
      
      return @tabs unless block_given?
      
      self.tab_builder = Docusign::Builder::TabBuilder.new(self, recipient)
      
      returning @tabs do |a|
        yield self if block_given?
      end
    end
    
    def tab(options = {}, &block)
      returning tab_builder.build(options, &block) do |t|
        tabs << t
      end
    end
    
    def tab_builder
      @tab_builder ||= Docusign::Builder::TabBuilder.new(self)
    end
  end
end