class OrderDescription < ApplicationRecord
  validates :order_id, presence: true
  validates :item_id, presence: true
  validates :quantity, presence: true

  belongs_to :order
  has_many :items, dependent: :destroy
end
