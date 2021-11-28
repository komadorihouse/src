class CreateMerchandises < ActiveRecord::Migration[6.1]
  def change
    create_table :merchandises do |t|

      t.references :user,  null: false, foreign_key: true
      t.string :merchandise_name, null: false
      t.string :explanation
      t.integer :price, null: false
      t.boolean :limit, null: false
      t.integer :quantity
      t.date :deadline
      t.timestamps
    end
  end
end
