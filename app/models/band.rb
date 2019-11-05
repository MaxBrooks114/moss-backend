class Band < ApplicationRecord
  has_many :users, through: :concerts
  has_many :venues, through: :concerts
  has_many :reviews, through: :concerts
  has_many :concerts
end
