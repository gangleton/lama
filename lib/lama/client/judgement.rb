module LAMA
  class Client
    module Judgement
      def judgements(id, index=0, options = {})
        get("#{id}/judgements/#{index}")
      end
    end
  end
end
