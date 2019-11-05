class Concert < ApplicationRecord
  belongs_to :venue
  belongs_to :band
  has_many :users
  has_many :reviews
end
