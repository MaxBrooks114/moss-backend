class User < ApplicationRecord
  has_secure_password
  has_many :concerts
  has_many :bands, through: :concerts
  has_many :venues, through: :concerts
  has_many :reviews, through: :concerts
  has_many :locations, through: :trips
  belongs_to :home, class_name: "Location"
end
