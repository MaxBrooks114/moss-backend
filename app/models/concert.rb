class Concert < ApplicationRecord
  has_many :concertsusers
  has_many :users, through: :concertsusers
  has_many :reviews


  def combined_review_score
    combined_score = 0
    if self.reviews.count > 0
      self.reviews.each do |review|
        combined_score += review.final_score
      end
      combined_score = combined_score / self.reviews.count
    end
      return combined_score
  end

end
