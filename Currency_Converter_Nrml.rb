class Storage
  def initialize(amount, currency_type)
    puts "Testing for inventory"
    @amount_stg = amount
    @currency_type_stg = currency_type
  end
end



amount_type = Storage.new(100, "USD")
puts amount_type
