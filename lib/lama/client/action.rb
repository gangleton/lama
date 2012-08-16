module LAMA
  class Client
    module Action
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
