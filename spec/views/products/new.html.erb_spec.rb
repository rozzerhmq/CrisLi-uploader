require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name => "MyString",
      :model => "MyString",
      :description => "MyText",
      :weight => "9.99",
      :price => "9.99",
      :color => "MyString",
      :num_instock => 1
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
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
