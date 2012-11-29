class Product < ActiveRecord::Base
  attr_accessible :color, :description, :model, :name, :num_instock, :price, :weight, :img_url, :size, :bust_length, :sleeve_length, :shoulder_length, :length_full
  mount_uploader :img_url, ProductImageUploader
end
