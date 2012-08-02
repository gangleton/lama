module LAMA
  class Client
    module Judgement
      def judgements(id, options = {})
        index = options[:index]
        if index.nil?
          get("#{id}/judgements")
        else
          get("#{id}/judgements/#{index}")
        end
      end
    end
  end
end
