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

  def not_equal(other)
    @amount != other.amount || @currency != other.currency
  end

  def add(add)
    if @currency == add.currency
      @amount + add.amount
    else
      puts "DifferentCurrencyCodeError"
    end
  end

end

first = Currency.new(100.0, :USD)
second = Currency.new(100.0, :USD)
third = Currency.new(100.0, :EUR)
fourth = Currency.new(50.0, :USD)

# ///test 1 - Testing 'equal' Method
  puts ""
    puts "Testing 'equal' Method:"
    puts "true = #{first.equal(second)}"
  puts ""

# ///test 2 - Testing 'not_equal' Method
  puts ""
    puts "Testing 'not_equal' Method:"
    puts "true = #{second.not_equal(third)}"
    puts "true = #{second.not_equal(fourth)}"
    puts "true = #{third.not_equal(fourth)}"
  puts ""

# ///test 3 - Testing 'add' Method
  puts ""
    puts "Testing 'add' Method:"
    puts "100 USD + 100 USD = #{first.add(second)} USD"
    puts ""
    puts "100 USD + 100 EUR =   USD != EUR"
    second.add(third)
  puts ""

  
