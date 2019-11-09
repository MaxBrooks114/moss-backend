class ConcertSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :date, :venue, :artist, :opener
  has_many :users
  has_many :reviews
end
