module LAMA
  class Client
    module Event
      def events(id, options = {})
        index = options[:index]
        if index.nil?
          response = get("#{id}/events")
        else
          response = get("#{id}/events/#{index}")
        end
        response.ArrayOfIncidEvent.IncidEvent
      end
    end
  end
end
