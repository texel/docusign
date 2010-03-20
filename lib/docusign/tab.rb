module Docusign
  class Tab
    def anchor(options = {}, &block)
      returning anchor_builder.build(options, &block) do |a|
        yield a if block_given?
        self.anchor_tab_item = a
      end
    end
    
    def anchor=(options = {})
      anchor options
    end
    
    def anchor_builder
      @anchor_builder ||= Docusign::Builder::AnchorBuilder.new
    end
    
    %w(recipient document).each do |attr|
      class_eval %Q{
        def #{attr}=(value)
          self.#{attr}ID = value.id
        end
      }
    end
  end
end