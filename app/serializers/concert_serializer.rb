class ConcertSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :date, :opener
  belongs_to :venue
  belongs_to :band
  belongs_to :location
  has_many :users
  has_many :reviews
end
