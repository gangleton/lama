require 'lama/configuration'
require 'lama/client'

module LAMA
  extend Configuration
  class << self

    #Alias for LAMA::Client.new
    def new(options={})
      LAMA::Client.new(options)
    end

    #Delegate to LAMA::Client.new
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private=false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end
  end
end
