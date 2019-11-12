class ConcertSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :date, :venue, :artist, :opener, :combined_review_score
  has_many :users
  attribute :reviews do |concert|
    concert.reviews.map do |rev|
      {
        id: rev.id,
        final_score: rev.final_score,
        user_id: rev.user_id

      }
    end
  end
end
