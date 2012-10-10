require 'helper'

describe LAMA::Client::Incident do
  before do
    @client = LAMA.new
  end

  describe "#incident" do
    it "returns information for a specific incident" do
    end
  end

  describe "#incidents_by_date" do
    before do
      stub_get("/search(from)02-01-2011(to)02-28-2011").
        to_return(:status => 200, :body => fixture("incidents.xml"))
    end

    it "returns incidents from a specific date to another date" do
      incidents = @client.incidents_by_date("02-01-2011", "02-28-2011")
    end

    it "takes in DateTime objects as params" do
      incidents = @client.incidents_by_date(Date.new(2011, 2, 1), Date.new(2011, 2, 28))
    end

    it "raises an error if string input is in wrong format" do
      lambda do
        @client.incidents_by_date("February 1st 2011", "February 28th 2011")
      end.should raise_error ArgumentError
    end
  end

  describe "#incidents_by_location" do
    context "location passed in" do
      before do
        stub_get("/search(location)1629%20ALABO%20ST").
          to_return(:status => 200, :body => fixture("location.xml"))
      end

      it "returns incidents from a particular location" do
        results = @client.incidents_by_location("1629 ALABO ST")
        results.class.should eq(Array)
      end
    end

    context "location not passed in" do
      before do
        stub_get("/search(location)").
          to_return(:status => 200, :body => fixture("location-empty.xml"))
      end
    end
  end

  describe "#incidents_by_address" do
  end
end
