require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :model => "MyString",
      :description => "MyText",
      :weight => "9.99",
      :price => "9.99",
      :color => "MyString",
      :num_instock => 1
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_model", :name => "product[model]"
      assert_select "textarea#product_description", :name => "product[description]"
      assert_select "input#product_weight", :name => "product[weight]"
      assert_select "input#product_price", :name => "product[price]"
      assert_select "input#product_color", :name => "product[color]"
      assert_select "input#product_num_instock", :name => "product[num_instock]"
    end
  end
end
