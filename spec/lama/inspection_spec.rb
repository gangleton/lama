require 'helper'

describe LAMA::Client::Inspection do
  before do
    @client = LAMA.new
  end

  describe "#inspections" do
    before do
      stub_get("/1/inspections").
        to_return(:status => 200, :body => fixture("inspections.xml"))
    end

    it "returns a hashie of inspections related to an incident" do
      inspections = @client.inspections(1)
    end
  end
end
