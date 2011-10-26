require 'spec_helper'

describe "Trucks" do
  describe "GET /trucks" do
    it "works! (now write some real specs)" do
      get trucks_path
      response.status.should be(200)
    end
  end
end
