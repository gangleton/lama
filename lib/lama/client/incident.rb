require 'cgi'

module LAMA
  class Client
    module Incident
      def incident(id, options = {})
        get("#{id}", options)
      end

      def incidents_by_date(from="02-01-2011", to="02-28-2011", options={})
        get("search(from)#{from}(to)#{to}", options)
      end

      def incidents_by_location(loc, options = {})
        loc = CGI::escape(loc)
        get("search(location)#{loc}")
      end

      def incidents_by_address(addr, options = {})
        addr = CGI::escape(addr)
        get("search(address)#{addr}")
      end
    end
  end
end

