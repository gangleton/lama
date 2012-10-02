module LAMA
  class Client
    module Action
      #Returns the actions associated with a specific incident
      #
      #@param [String] the LAMA number associated with the incident
      #@return [Hashie] actions information
      def actions(id, options = {})
        index = options[:index]
        if index.nil?
          response = get("#{id}/actions")
        else
          response = get("#{id}/actions/#{index}")
        end
        response.ArrayOfCodeAction.CodeAction
      end
    end
  end
end
