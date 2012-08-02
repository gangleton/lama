module LAMA
  class Client
    module Action
      def actions(id, index=0, options = {})
        get("#{id}/actions/#{index}")
      end
    end
  end
end
