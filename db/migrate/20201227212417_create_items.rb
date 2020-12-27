class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product_name
      t.integer :categoly
      t.string :price
      t.string :image
      t.string :product_description
      t.integer :product_condition
      t.integer :shipping_charges
      t.integer :shipping_area
      t.integer :days_to_ship
      t.string :user_id
      t.string :foreign_key
      t.string :true

      t.timestamps
    end
  end
end
