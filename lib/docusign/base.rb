module Docusign
  class Base
    
    class << self    
      def login(options={})
        
        connection  = Docusign::APIServiceSoap.new
        header      = AuthHeaderHandler.new(options.delete(:user_name), options.delete(:password))
        
        connection.headerhandler << header
        
        options.each do |key, value|
          connection.send("#{key}=", value)
        end
        
        connection
      end
    end
  end
end