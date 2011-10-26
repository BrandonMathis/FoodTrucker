require 'spec_helper'

describe Truck do
  before do
    @truck = Truck.create(address: "Statue of Liberty")
  end

  it "should have lat long of Statue of Liberty" do
    @truck.to_coordinates.should eql [40.6891375, -74.0446177]
  end
end
