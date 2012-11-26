class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :model
      t.text :description
      t.decimal :weight
      t.decimal :price
      t.string :color
      t.integer :num_instock

      t.timestamps
    end
  end
end
