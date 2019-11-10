class Review < ApplicationRecord
  belongs_to :user
  belongs_to :concert
  validates :concert_id, uniqueness: { scope: :user_id, message: "You've already review this concert!" }


  def final_score
     final_score = (venue_score + sound_score + performance_score + set_score)/4
  end



end
