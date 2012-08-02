module LAMA
  class Client
    module Inspection
      def inspections(id, options={})
        index = options[:index]
        if index.nil?
          get("#{id}/inspections")
        else
          get("#{id}/inspections/#{index}")
        end
      end
    end
  end
end
