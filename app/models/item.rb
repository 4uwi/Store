class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: {minimum: 15}
  validates :price, presence: true

  belongs_to :order_description
end
