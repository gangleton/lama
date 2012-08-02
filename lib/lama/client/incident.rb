require 'cgi'

module LAMA
  class Client
    module Incident
      def incident(num, options = {})
        get("#{num}", options)
      end

      def incidents_by_date(from="02-01-2011", to="02-28-2011", options={})
        if from.respond_to?(:strftime)
          from = from.strftime("%m-%d-%Y")
        end
        if to.respond_to?(:strftime)
          to = to.strftime("%m-%d-%Y")
        end
        date_regex = /\A\d{2}-\d{2}-\d{4}\z/
        unless date_regex.match(from) && date_regex.match(to)
          raise ArgumentError, "Date format is MM-DD-YYYY"
        end
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

