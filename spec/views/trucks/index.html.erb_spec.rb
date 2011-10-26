require 'spec_helper'

describe "trucks/index.html.erb" do
  before(:each) do
    assign(:trucks, [
      stub_model(Truck,
        :coordinates => [],
        :address => "Address",
        :name => "Name",
        :description => "Description",
        :food_type => "Food Type"
      ),
      stub_model(Truck,
        :coordinates => [],
        :address => "Address",
        :name => "Name",
        :description => "Description",
        :food_type => "Food Type"
      )
    ])
  end

  it "renders a list of trucks" do
    render
    assert_select "tr>td", :text => [].to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Food Type".to_s, :count => 2
  end
end
