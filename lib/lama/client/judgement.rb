module LAMA
  class Client
    module Judgement
      #Get judgements for a particular incident
      #
      #@param [String] A LAMA identifier for an incident
      #@return [Hashie] Judgment information
      def judgements(num, options = {})
        index = options[:index]
        if index.nil?
          get("#{num}/judgments")
        else
          get("#{num}/judgments/#{index}")
        end
      end
    end
  end
end
