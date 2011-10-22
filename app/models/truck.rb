class Truck
  include Mongoid::Document
  field :location, :type => String
  field :latitude, :type => Float
  field :longitude, :type => Float
  field :name, :type => String
  field :description, :type => String
  field :food_type, :type => String
end
