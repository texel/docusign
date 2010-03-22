require 'docusign'

module Docusign
  module Builder
    class TabBuilder < Docusign::Builder::Base
      attr_accessor :document, :recipient
      
      self.builder_class = Docusign::Tab

      def initialize(document = nil, recipient = nil)
        super
        self.document, self.recipient = document, recipient
      end

      def build(options = {}, &block)
        anchor_options = options.delete(:anchor)
        
        returning super(options, &block) do |tab|
          tab.anchor anchor_options if anchor_options && !tab.anchor_tab_item
          tab.document_id  ||= document.id  if document
          tab.recipient_id ||= recipient.id if recipient
          
          # Default tab_label to the tab name if none is explicitly given
          tab.tab_label ||= tab.name
          
          # Provide a custom tab type if none has already been provided
          tab.type ||= Docusign::TabTypeCode::Custom
        end
      end
    end
  end
end