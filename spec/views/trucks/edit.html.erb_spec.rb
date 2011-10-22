require 'spec_helper'

describe "trucks/edit.html.erb" do
  before(:each) do
    @truck = assign(:truck, stub_model(Truck,
      :location => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "MyString",
      :description => "MyString",
      :food_type => "MyString"
    ))
  end

  it "renders the edit truck form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trucks_path(@truck), :method => "post" do
      assert_select "input#truck_location", :name => "truck[location]"
      assert_select "input#truck_latitude", :name => "truck[latitude]"
      assert_select "input#truck_longitude", :name => "truck[longitude]"
      assert_select "input#truck_name", :name => "truck[name]"
      assert_select "input#truck_description", :name => "truck[description]"
      assert_select "input#truck_food_type", :name => "truck[food_type]"
    end
  end
end
