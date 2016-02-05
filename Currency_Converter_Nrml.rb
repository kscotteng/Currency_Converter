class Storage

  def initialize(amount, currency_type)
    # puts "Testing for inventory"
    @amount_stg = amount
    @currency_type_stg = currency_type
  end

  def amount
    @amount_stg
  end

  def currency
    @currency_type_stg
  end

  def ==(second_amount, second_currency)
    @currency_type_stg == second_currency.currency &&
    @amount_stg == second_amount.amount
  end

  def !=(third_amount, third_currency)
    @amount_stg != third_amount.amount ||
    @currency_type_stg != third_currency.currency
  end

end

amount_type = Storage.new(100.0, :USD)
second = Storage.new(100.0, :USD)
third = Storage.new(50.0, :EUR)




# ///test 1 - Current Values in Amount & Currency Methods
  puts ""
  puts "The current values for Amount & Currency are:"
  puts "Amount = #{amount_type.amount}"
  puts "Currency = #{amount_type.currency}"
  puts ""
# ///test 2 - Testing '==' Method (Full Factorial)
  puts ""
  puts "Method testing '==':"
  test_true = Storage.new(100.0, :USD)
    puts "true = #{amount_type.currency == test_true.currency}"
    puts "true = #{amount_type.amount == test_true.amount}"
  test_false = Storage.new(50.0, :EUR)
    puts "false = #{amount_type.currency == test_false.currency}"
    puts "false = #{amount_type.amount == test_false.amount}"
  puts ""
# ///test 3 - Testing '!=' Method (Full Factorial)
  puts ""
  puts "Method testing '!=':"
  test_true = Storage.new(100.0, :USD)
    puts "true = #{amount_type.currency == test_true.currency}"
    puts "true = #{amount_type.amount == test_true.amount}"
  test_false = Storage.new(50.0, :EUR)
    puts "false = #{amount_type.currency == test_false.currency}"
    puts "false = #{amount_type.amount == test_false.amount}"
  puts ""
