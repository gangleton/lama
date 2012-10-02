module LAMA
  class Client
    module User
      #Get current user information
      #
      #@return [Hashie] user email
      def user(options={})
        get("user", options)
      end
    end
  end
end

