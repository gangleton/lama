require 'helper'

describe Faraday::Response do
  before do
    @client = LAMA::Client.new()
  end

  {
    400 => Faraday::Error::ClientError,
    401 => Faraday::Error::ClientError,
    403 => Faraday::Error::ClientError,
    404 => Faraday::Error::ResourceNotFound,
    406 => Faraday::Error::ClientError,
    500 => Faraday::Error::ClientError,
    501 => Faraday::Error::ClientError,
    502 => Faraday::Error::ClientError,
    503 => Faraday::Error::ClientError,
  }.each do |status, exception|
    context "when HTTP status is #{status}" do

      before do
        stub_get("/search(from)02-01-2011(to)02-28-2011").
        to_return(:status => status, :body => fixture("inspection.xml"))
      end

      it "should raise #{exception.name} error" do
        lambda do
          @client.inspections
        end.should raise_error exception
      end
    end
  end
end
