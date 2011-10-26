require 'spec_helper'

describe "trucks/show.html.erb" do
  before(:each) do
    @truck = assign(:truck, stub_model(Truck,
      :coordinates => [],
      :address => "Address",
      :name => "Name",
      :description => "Description",
      :food_type => "Food Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should match(//)
    rendered.should match(/Address/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/Food Type/)
  end
end
