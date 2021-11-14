class AddOrderToOrderDescription < ActiveRecord::Migration[6.1]
  def change
    add_reference :order_descriptions, :order, null: false, foreign_key: true
  end
end
