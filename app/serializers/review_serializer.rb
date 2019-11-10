class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :final_score, :venue_score, :sound_score, :performance_score, :set_score, :price, :write_up
  belongs_to :user
  belongs_to :concert

  
end
