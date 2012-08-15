require 'lama/version'

module LAMA
  module Configuration
    VALID_OPTIONS_KEYS = [
      :adapter,
      :endpoint,
      :proxy,
      :response,
      :user_agent,
      :login,
      :pass,
      :faraday_options
    ].freeze

    DEFAULT_ADAPTER = :net_http

    DEFAULT_ENDPOINT = 'https://inspections.nola.gov/LAMA_CFA/rest/inspections'.freeze

    DEFAULT_LOGIN = 'test@example.com'

    DEFAULT_PASS = '12345'

    # DEFAULT_RESPONSE = :xml

    DEFAULT_PROXY = nil

    DEFAULT_USER_AGENT = "LAMA Ruby Gem #{LAMA::VERSION}".freeze

    DEFAULT_FARADAY_OPTIONS = {}.freeze

    attr_accessor *VALID_OPTIONS_KEYS

    # When this module is extended, set all configuration options to their default values
    def self.extended(base)
      base.reset
    end

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
    end

    #Create a hash of options and their values
    def options
      options = {}
      VALID_OPTIONS_KEYS.each{|k| options[k] = send(k)}
      options
    end

    # Reset all configuration options to defaults
    def reset
      self.adapter                = DEFAULT_ADAPTER
      self.endpoint               = DEFAULT_ENDPOINT
      self.proxy                  = DEFAULT_PROXY
      self.user_agent             = DEFAULT_USER_AGENT
      # self.response               = DEFAULT_RESPONSE
      self.faraday_options        = DEFAULT_FARADAY_OPTIONS
      self.login                  = DEFAULT_LOGIN
      self.pass                   = DEFAULT_PASS
      self
    end
  end
end
