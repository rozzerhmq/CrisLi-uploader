require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :model => "Model",
        :description => "MyText",
        :weight => "9.99",
        :price => "9.99",
        :color => "Color",
        :num_instock => 1
      ),
      stub_model(Product,
        :name => "Name",
        :model => "Model",
        :description => "MyText",
        :weight => "9.99",
        :price => "9.99",
        :color => "Color",
        :num_instock => 1
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
