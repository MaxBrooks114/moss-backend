class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :score, :venue, :dound, :performance, :set, :price, :write_up
  belongs_to :user
  belongs_to :concert
  belongs_to :venue
  belongs_to :band
end