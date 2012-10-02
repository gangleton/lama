module LAMA
  class Client
    module Violation
      #Get all violations for a particular incident
      #
      #@param [String] the LAMA number for an incident
      #@return [Hashie] violations information
      def violations(id, options={})
        index = options[:index]
        if index.nil?
          response = get("#{id}/violations")
        else
          response = get("#{id}/violations/#{index}")
        end
        response.ArrayOfViolation.Violation
      end
    end
  end
end
