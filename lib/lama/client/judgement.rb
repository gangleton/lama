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
          results = get("#{num}/judgments")
        else
          results = get("#{num}/judgments/#{index}")
        end
        results.ArrayOfJudgment.Judgment
      end
    end
  end
end
