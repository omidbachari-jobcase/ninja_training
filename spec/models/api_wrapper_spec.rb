require "rails_helper"

describe ApiWrapper do
  context "#get", :vcr do
    it "returns an http response with hash" do
      wrapper = ApiWrapper.new
      response = wrapper.get('posts')

      expect(response).to be_a Hash
      expect(response[:body]).to be_a Array
      expect(response[:content_type]).to eq "posts"
      expect(response[:code]).to eq 200
    end
    it "returns error with invalid path" do
      wrapper = ApiWrapper.new
      response = wrapper.get('flags')

      expect(response).to be_a Hash
      expect(response[:body]).to eq({})
      expect(response[:code]).to eq 404
    end
  end
end
