=begin

describe "Composable Matchers" do

    it "works with nested data" do
      class Product
        def initialize(id, name, category)
          @id = id
          @name = name
          @category = category
        end

        def serial_data
          [
            "X-",
            @name[0],
            @category[0],
            @id
          ]
        end
      end

      product = Product.new 2456, "Tomato", "Fruit"

      expect(product.serial_data).to match [
        a_string_starting_with("X-"),
        a_string_starting_with("T"),
        a_string_starting_with("F"),
        a_value < 5000
      ]
    end

    it "compound mathers" do
        string = "Jose"

        expect(string).to start_with("J").and end_with("e")
    end
end

=end