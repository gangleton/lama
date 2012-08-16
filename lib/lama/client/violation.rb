module LAMA
  class Client
    module Violation
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
