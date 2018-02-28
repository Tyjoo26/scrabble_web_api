require 'rails_helper'


describe OxfordService do
  context "unit test" do
    it "returns a base endpoint when it initializes" do
      os = OxfordService.new

      expect(os.class).to eq(OxfordService)
    end

    it "get_json method returns faraday response" do
      ox_response = OxfordService.new.get_json("foxes")

      expect(ox_response.class).to eq(Faraday::Response)
    end
  end
end
