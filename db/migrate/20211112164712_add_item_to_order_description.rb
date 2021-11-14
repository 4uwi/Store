class AddItemToOrderDescription < ActiveRecord::Migration[6.1]
  def change
    add_reference :order_descriptions, :item, null: false, foreign_key: true
  end
end
