# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    model "MyString"
    description "MyText"
    weight "9.99"
    price "9.99"
    color "MyString"
    num_instock 1
  end
end
