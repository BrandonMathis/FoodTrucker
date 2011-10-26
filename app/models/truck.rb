class Truck
  include Mongoid::Document
  include Geocoder::Model::Mongoid

  field :coordinates, :type => Array
  field :address, :type => String
  field :name, :type => String
  field :description, :type => String
  field :food_type, :type => String

  geocoded_by :address               # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
