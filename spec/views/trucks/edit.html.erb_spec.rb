require 'spec_helper'

describe "trucks/edit.html.erb" do
  before(:each) do
    @truck = assign(:truck, stub_model(Truck,
      :coordinates => [],
      :address => "MyString",
      :name => "MyString",
      :description => "MyString",
      :food_type => "MyString"
    ))
  end

  it "renders the edit truck form" do
    render
    assert_select "form", :action => trucks_path(@truck), :method => "post" do
      assert_select "input#truck_address", :name => "truck[address]"
      assert_select "input#truck_name", :name => "truck[name]"
      assert_select "input#truck_description", :name => "truck[description]"
      assert_select "input#truck_food_type", :name => "truck[food_type]"
    end
  end
end
