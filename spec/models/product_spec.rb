require 'rails_helper'

describe Product do
  it("it titleizes the name of the product") do
  product = Product.create({name: "milk", cost: 100.00, origin: "USA"})
  expect(product.name()).to(eq("Milk"))
end

  # it 'is private by default' do
  #   product = FactoryBot.create(:product)
  #   product.name.should eq 'Milk'
  # end

  it {  should have_many(:reviews)  }
  it {  should validate_presence_of :name }
  it {  should validate_presence_of :cost }
  it {  should validate_presence_of :origin }
end
