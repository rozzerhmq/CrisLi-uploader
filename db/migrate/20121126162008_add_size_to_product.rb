class AddSizeToProduct < ActiveRecord::Migration
  def change
    add_column :products, :size, :string
    add_column :products, :bust_length, :decimal
    add_column :products, :shoulder_length, :decimal
    add_column :products, :sleeve_length, :decimal
    add_column :products, :length_full, :decimal
  end
end
