module LAMA
  module Request
    def get(path, options = {})
      request(:get, path, options)
    end
  
    private

    def request(method, path, options)
      response = connection.send(method) do |request|
        request.url(path, options)
        request.params['response'] = 'xml'
      end
      response.body
    end
  end
end
