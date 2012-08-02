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

    it "should accept custom auth options" do
      @lama = LAMA.new({ :login => "fuzz@codeforamerica.org", :pass => "badger" })
      @lama.login.should == "fuzz@codeforamerica.org"
      @lama.pass.should == "badger"
    end
  end

  describe ".delegate" do
    it "should delegate missing methods to LAMA::Client" do
      stub_get("/user").
          to_return(:status => 200, :body => fixture("user.xml"))
      records  = LAMA.user
    end
  end
end
