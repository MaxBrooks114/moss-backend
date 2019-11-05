class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :city
  has_many :venues
  has_many :concerts
  has_many :band

end
