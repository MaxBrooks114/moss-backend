class Review < ApplicationRecord
  belongs_to :user
  belongs_to :concert
  belongs_to :venue
  belongs_to :band
end
