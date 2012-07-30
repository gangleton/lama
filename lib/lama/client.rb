require 'lama/connection'
require 'lama/request'

require 'lama/client/inspection'

module LAMA
  class Client
    attr_accessor(*Configuration::VALID_OPTIONS_KEYS)

    def initialize(options={})
      options = LAMA.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    include LAMA::Connection
    include LAMA::Request
    
    include LAMA::Client::Inspection
  end
end
