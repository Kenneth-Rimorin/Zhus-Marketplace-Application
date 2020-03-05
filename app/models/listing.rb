class Listing < ApplicationRecord
  belongs_to :brand
  enum category: {casual: 0, formal: 1, basketball: 2, running: 3, skate_canvas: 4, other: 5}
  validates :name, :brand_id, :category, :price, :color, :size, :description, presence: true
  has_one_attached :picture
  belongs_to :user
end
