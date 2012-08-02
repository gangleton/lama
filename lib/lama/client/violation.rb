module LAMA
  class Client
    module Violation
      def violations(id, options={})
        index = options[:index]
        if index.nil?
          get("#{id}/violations")
        else
          get("#{id}/violations/#{index}")
        end
      end
    end
  end
end
