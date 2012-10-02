module LAMA
  class Client
    module Event
     #Returns the events associated with a specific incident
     #
     #@param [String] the LAMA number associated with the case
     #@return [Hashie] events information
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
