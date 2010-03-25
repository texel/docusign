module Docusign
  class RequestRecipientTokenClientURLs
    # List all callback names, underscored, without the leading "on_"
    # eg. 'session_timeout', 'signing_complete', etc.
    CALLBACKS = instance_methods.select { |m| m =~ /^on/ }.reject { |m| m =~ /=/ }.map { |m| m.gsub(/^on/, '').underscore }
  end
end