module LAMA
  class Client
    module User
      def user(options={})
        get("user", options)
      end
    end
  end
end

