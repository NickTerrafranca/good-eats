class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :rating, inclusion: (1..5)
  validates :body, presence: true
  validates :restaurant, presence: true
end
