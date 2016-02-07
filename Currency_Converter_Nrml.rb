class Currency

  def initialize(amount, currency)
    # puts "Testing for inventory"
    @amount = amount
    @currency = currency
  end

  def amount
    @amount
  end

  def currency
    @currency
  end

  def equal(other)
    @amount == other.amount && @currency == other.currency
  end

end

first = Currency.new(100.0, :USD)
second = Currency.new(100.0, :USD)

# ///test 1 - Testing 'equal' Method
  puts ""
    puts "Testing 'equal' Method:"
    puts "true = #{first.equal(second)}"
  puts ""
