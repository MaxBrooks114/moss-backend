class Concert < ApplicationRecord
  has_many :concertsusers
  has_many :users, through: :concertsusers
  has_many :reviews

end
