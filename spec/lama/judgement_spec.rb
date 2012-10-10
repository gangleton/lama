require 'helper'

describe LAMA::Client::Judgement do
  before do
    @client = LAMA.new
    stub_get("/1/judgments").
        to_return(:status => 200, :body => fixture("judgement.xml"))
  end
  it "returns the judgement for a particular case" do
    response = @client.judgements(1)
    response.class.should eq(Hashie::Mash)
  end
end
