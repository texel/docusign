require 'docusign'

module Docusign
  module Builder
    class TabBuilder < Docusign::Builder::Base
      attr_accessor :document, :recipient
      
      self.builder_class = Docusign::Tab

      def initialize(document, recipient = nil)
        super
        self.document, self.recipient = document, recipient
      end

      def build(options = {}, &block)
        returning super(options, &block) do |tab|
          tab.document_id  ||= document.id
          tab.recipient_id ||= recipient.id
        end
      end
    end
  end
end