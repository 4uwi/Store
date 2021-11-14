class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :last_name, presence: true
      t.string :first_name, presence: true
      t.boolean :admin, default:false

      t.timestamps
    end
  end
end
