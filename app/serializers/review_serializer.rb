class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :final_score, :venue_score, :sound_score, :performance_score, :set_score, :price, :write_up
  attribute :user do |review|
    review.user do |user|
      {
        username: user.username,

      }
    end

  end
  attribute :concert do |review|
    review.concert do |concert|
      {
        name: concert.name
      }
    end
  end

end
