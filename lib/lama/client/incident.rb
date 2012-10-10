require 'cgi'

module LAMA
  class Client
    module Incident
      #Get all information for a particular incident
      #
      #@param [String] the LAMA number for an incident
      #@return [Hashie] incident information
      def incident(num, options = {})
        response = get("#{num}", options)
        response.Incident
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
        response = get("search(from)#{from}(to)#{to}", options)
        response.DataSet.diffgram.NewDataSet.Incidents
      end

      def incidents_by_location(loc, options = {})
        loc = URI.encode(loc)
        loc.gsub('[', '')
        loc.gsub(']', '')
        response = get("search(location)#{loc}")
        response.DataSet.diffgram.NewDataSet.Incidents
      end

      def incidents_by_address(addr, options = {})
        addr = URI.encode(addr)
        response = get("search(address)#{addr}")
        response.DataSet.diffgram.NewDataSet.Incidents
      end
    end
  end
end

