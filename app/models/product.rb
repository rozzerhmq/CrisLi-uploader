class Product < ActiveRecord::Base
  attr_accessible :color, :description, :model, :name, :num_instock, :price, :weight
end
