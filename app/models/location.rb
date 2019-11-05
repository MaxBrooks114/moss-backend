class Location < ApplicationRecord
  has_many :venues
  has_many :concerts, through: :venues
  has_many :residents, foreign_key: :home_id, class_name: "User"
  has_many :bands, through: :concerts

end
