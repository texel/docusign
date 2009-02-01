module Docusign
  class Base
    
    class << self
      attr_accessor :user_name, :account_id
      
      def login(user_name, password)
        connection  = Docusign::APIServiceSoap.new
        header      = AuthHeaderHandler.new(user_name, password)
        
        connection.headerhandler << header
        
        connection
      end
    end
  end
end