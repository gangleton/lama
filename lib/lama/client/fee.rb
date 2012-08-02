module LAMA
  class Client
    module Fee
      def fees(id, index=0, options={})
        get("#{id}/fees/#{index}", options)
      end
    end
  end
end
