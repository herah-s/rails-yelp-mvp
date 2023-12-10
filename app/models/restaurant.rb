class Restaurant < ApplicationRecord
  self.table_name = "yelp_restaurants"
  has_many :reviews, dependent: :destroy, foreign_key: "yelp_restaurant_id"

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
