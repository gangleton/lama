module LAMA
  class Client
    module Action
      def actions(id, options = {})
        index = options[:index]
        if index.nil?
          get("#{id}/actions")
        else
          get("#{id}/actions/#{index}")
        end
      end
    end
  end
end
