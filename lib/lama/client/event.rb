module LAMA
  class Client
    module Event
      def events(id, options = {})
        index = options[:index]
        if index.nil?
          get("#{id}/events")
        else
          get("#{id}/events/#{index}")
        end
      end
    end
  end
end
