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

  def hygiene=  value
    @hygiene = 
    if value > 10
      10
    elsif value < 0
      0
    else
      value
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid amount
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene+=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out 
    self.happiness+=2
    self.hygiene-= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend friend
    friend.happiness+=3
    self.happiness+=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (friend, topic)
    # binding.pry
    case topic
    when 'politics'
      friend.happiness -=2
      self.happiness -=2
      "blah blah partisan blah lobbyist"
    when "weather"
      friend.happiness +=1
      self.happiness +=1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
    
  end
  
  def name 
    @name
  end

end

tafu = Person.new("Tafu")