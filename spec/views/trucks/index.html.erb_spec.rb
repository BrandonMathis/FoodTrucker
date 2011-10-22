require 'spec_helper'

describe "trucks/index.html.erb" do
  before(:each) do
    assign(:trucks, [
      stub_model(Truck,
        :location => "Location",
        :latitude => 1.5,
        :longitude => 1.5,
        :name => "Name",
        :description => "Description",
        :food_type => "Food Type"
      ),
      stub_model(Truck,
        :location => "Location",
        :latitude => 1.5,
        :longitude => 1.5,
        :name => "Name",
        :description => "Description",
        :food_type => "Food Type"
      )
    ])
  end

  it "renders a list of trucks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Food Type".to_s, :count => 2
  end
end
