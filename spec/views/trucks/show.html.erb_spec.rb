require 'spec_helper'

describe "trucks/show.html.erb" do
  before(:each) do
    @truck = assign(:truck, stub_model(Truck,
      :location => "Location",
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "Name",
      :description => "Description",
      :food_type => "Food Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Food Type/)
  end
end
