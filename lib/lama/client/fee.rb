module LAMA
  class Client
    module Fee
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
