module LAMA
  class Client
    module Inspection
      def inspections(id, options={})
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
