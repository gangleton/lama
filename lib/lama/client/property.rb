module LAMA
  class Client
   module Property
      def properties(id, options={})
        index = options[:index]
        if index.nil?
          get("#{id}/props")
        else
          get("#{id}/props/#{index}")
        end
      end
    end
  end
end
