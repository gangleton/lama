module LAMA
  class Client
    module Fee
      def fees(id, options={})
        index = options[:index]
        if index.nil?
          get("#{id}/fees")
        else
          get("#{id}/fees/#{index}")
        end
      end
    end
  end
end
