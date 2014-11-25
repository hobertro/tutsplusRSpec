=begin

describe "Matchers" do
  it "asserts on equality" do
    number = 3
    expect(number).to eql(3)
  end

  it "asserts on mathematical operators" do
    number = 5
    expect(number).to be >= 2 
  end

  it "asserts on matching a regular expression" do
    email = "bobby@tutsplus.com"
    regular_expression = /\w+@\w+\.[a-z]{2,4}/
  end

  it "asserts on types and classes" do
    object = 2.3
    expect(object).to be_a Float
  end

  it "asserts on truthiness" do
    bool = true
    expect(bool).to be true
  end

  it "expects errors" do
    expect do
      raise ArgumentError
    end.to raise_error 
  end

  it "expects throws" do
    expect {
        throw :oops
      }.to throw_symbol :oops
  end

  it "asserts on predicates" do
    class A
      def good?
        true
      end
    end

    expect(A.new).to be_good
  end

  it "asserts on collections" do
    list = [
      :one,
      :two,
      :three,
      :four
    ]

    expect(list).to include :four
  end

  it "negates asserts" do 
    expect(3).not_to be 5
  end

end

=end