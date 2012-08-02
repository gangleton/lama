module LAMA
  class Client
   module Property
      def properties(id, index=0, options={})
        get("#{id}/props/#{index}", options)
      end
    end
  end
end
