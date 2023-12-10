class Review < ApplicationRecord
  self.table_name = "yelp_reviews"
  belongs_to :restaurant, foreign_key: "yelp_restaurant_id"

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: (0..5) }
end
