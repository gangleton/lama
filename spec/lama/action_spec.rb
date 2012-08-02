require 'helper'

describe LAMA::Client::Action do
  before do
    @client = LAMA.new
  end

  describe "#actions" do
    before do
      stub_get("/1/actions/0").
        to_return(:status => 200, :body => fixture("actions.xml"))
    end

    it "returns a hashie of actions associated with an incident" do
      actions = @client.actions(1)
      p actions.class
    end
  end
end
