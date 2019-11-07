class Concert < ApplicationRecord
  belongs_to :venue
  belongs_to :band
  belongs_to :location
  has_many :concertsusers
  has_many :users, through: :concertsusers
  has_many :reviews

end
