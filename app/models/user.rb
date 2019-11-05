class User < ApplicationRecord
  has_secure_password
  has_many :concerts
  has_many :bands, through: :concerts
  has_many :venues, through: :concerts
  has_many :reviews, through: :concerts

end
