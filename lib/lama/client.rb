require 'lama/connection'
require 'lama/request'

require 'lama/client/action'
require 'lama/client/event'
require 'lama/client/fee'
require 'lama/client/inspection'
require 'lama/client/incident'
require 'lama/client/judgement'
require 'lama/client/property'
require 'lama/client/user'
require 'lama/client/violation'

module LAMA
  class Client
    attr_accessor(*Configuration::VALID_OPTIONS_KEYS)

    #Create a new LAMA::Client instance
    #
    #@param [Hash] include login and pass as options keys
    def initialize(options={})
      options = LAMA.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    include LAMA::Connection
    include LAMA::Request
    
    include LAMA::Client::Action
    include LAMA::Client::Event
    include LAMA::Client::Fee
    include LAMA::Client::Inspection
    include LAMA::Client::Incident
    include LAMA::Client::Judgement
    include LAMA::Client::Property
    include LAMA::Client::User
    include LAMA::Client::Violation
  end
end
