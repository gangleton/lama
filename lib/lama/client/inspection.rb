module LAMA
  class Client
    module Inspection
      def inspections(id, options={})
      #Get all inspections for a particular incident
      #
      #@param [String] the LAMA number for an incident
      #@return [Hashie] inspections information
        index = options[:index]
        if index.nil?
          response = get("#{id}/inspections")
        else
          response = get("#{id}/inspections/#{index}")
        end
        response.ArrayOfInspection.Inspection
      end
    end
  end
end
