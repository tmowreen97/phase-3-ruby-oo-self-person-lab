# your code goes here
require "pry"
class Person
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize name
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    
  end

  def happiness=  value
    @happiness = 
    if value > 10
      10
    elsif value < 0
      0
    else
      value
    end
  end

  def name 
    @name
  end

end

tafu = Person.new("Tafu")