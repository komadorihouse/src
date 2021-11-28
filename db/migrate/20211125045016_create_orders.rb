class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :merchandise, null: false, foreign_key: true
      t.integer :mumber_of_orders, null: false
      t.integer :price, null:false
      t.timestamps
    end
  end
end
