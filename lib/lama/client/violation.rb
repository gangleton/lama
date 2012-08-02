module LAMA
  class Client
    module Violation
      def violations(id, index=0, options={})
        get("#{id}/violations/#{index}", options)
      end
    end
  end
end
