require './phone'

class Person
  def initialize(name, phone)
    @name = name
    @phone = phone
  end

  def say_name
    puts @name
    
  end
