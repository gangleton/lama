module LAMA
  class Client
    module Event
      def events(id, index=0, options = {})
        get("#{id}/events/#{index}")
      end
    end
  end
end
