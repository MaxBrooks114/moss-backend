class BandSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :genre, :touring, :tour_start, :tour_end
  has_many :users
  has_many :venues
  has_many :reviews
  has_many :locations
  has_many :concerts
end
