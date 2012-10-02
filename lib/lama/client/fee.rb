module LAMA
  class Client
    module Fee
      #Returns the fees associated with a specific incident
      #
      #@param[String] the LAMA number associated with the case
      #@return[Hashie] fee information
      def fees(id, options={})
        index = options[:index]
        if index.nil?
          response = get("#{id}/fees")
        else
          response = get("#{id}/fees/#{index}")
        end
        response.ArrayOfCodeFees
      end
    end
  end
end
