require 'helper'

describe LAMA do
  after do
    LAMA.reset
  end

  describe ".respond_to?" do
    it "should be true if method exists" do
      LAMA.respond_to?(:new, true).should be_true
    end
  end

  describe ".new" do
    it "should be a LAMA::Client" do
      LAMA.new.should be_a LAMA::Client
    end
  end

  describe ".delegate" do
    it "should delegate missing methods to LAMA::Client" do
      stub_get("inspections").
          to_return(:status => 200, :body => fixture("inspection.xml"))
      records  = LAMA.inspection
      records.num_records.should == "25"
    end
  end
end
