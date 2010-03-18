require 'docusign'

module Docusign
  module Builder
    class TabBuilder
      attr_accessor :document, :recipient, :tab

      ATTRIBUTES = %w(
        pageNumber xPosition yPosition anchorTabItem type name tabLabel value customTabType customTabWidth
        customTabHeight customTabRequired customTabLocked customTabDisableAutoSize customTabListItems customTabListValues
        customTabListSelectedValue customTabRadioGroupName customTabValidationPattern customTabValidationMessage 
        templateLocked templateRequired
      )

      def initialize(document, recipient = nil)
        self.document, self.recipient = document, recipient
      end

      def build(options = {}, &block)
        returning self.tab = Docusign::Tab.new do |tab|
          options.each do |key, value|
            send key, value
          end

          yield self if block_given?
        end
      end

      ATTRIBUTES.each do |attribute|
          class_eval %Q{
            def #{attribute.underscore}(value)
              tab.#{attribute} = value
            end
          }
        end


      def document_id(value)
        tab.documentID = value
      end

      def recipient_id(value)
        tab.recipientID = value
      end
    end
  end
end