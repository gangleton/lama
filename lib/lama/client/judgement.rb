module LAMA
  class Client
    module Judgement
      def judgements(id, options = {})
        index = options[:index]
        if index.nil?
          get("#{id}/judgments")
        else
          get("#{id}/judgments/#{index}")
        end
      end
    end
  end
end
