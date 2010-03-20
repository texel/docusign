module Docusign
  module Utilities
    def self.instance_attributes(klass)
      i = klass.new
      i.instance_variables.map { |ivar| ivar.gsub /@/, '' }
    end
  end
end