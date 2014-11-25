=begin
class Product
  attr_reader :price
end

class PriceCalculator
  def add(product)
    products << product
  end

  def products
    @products ||= []
  end

  def final_price
    @products.map(&:price).inject(&:+)
  end

  # @products.map { |product| product.price }.inject(&:+)
  # @products.map { |product| product.price }.inject(&:+)
  # @products.reduce { |product| x + y } 

end

describe "Stubs" do 
    let(:calculator) { PriceCalculator.new }

  it "provides stubs to simulate state" do

    first_product = instance_double("Product")
    allow(first_product).to receive(:price).and_return(1.0)

    calculator.add instance_double("Product", price: 1.0)
    calculator.add instance_double("Product", price: 100.25)

    expect(calculator.final_price).to eq(101.25)

    # @products.map { |product| product.price }.inject(&:+)
  end

  it "provides mocks to assert on message passing" do
    expect_any_instance_of(Product).to receive(:price) { 5 }

    product = Product.new
  end
end

# stubs simulate state
# mocks simulate message passing
=end