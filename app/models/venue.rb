class Venue < ApplicationRecord
  has_many :bands, through: :concerts
  has_many :concerts
  has_many :users
  has_many :reviews
end
