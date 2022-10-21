# your code goes here

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(value)
    @happiness =  if(value > 10)
                        10
                      elsif(value < 0)
                        0
                      else
                        value
                      end
  end

  
  def hygiene=(value)
    @hygiene =  if(value > 10)
                      10
                    elsif(value < 0)
                      0
                    else
                      value
                    end
  end

  def happy?
    @happiness > 7 ? true : false
  end
  
  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end
  
  def take_bath
    self.hygiene = @hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = @happiness += 2
    self.hygiene = @hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness += 3
    friend.happiness += 3 
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (friend, topic)
    case topic
      when "politics" 
        then  
          self.happiness = @happiness -= 2
          friend.happiness -= 2 
          "blah blah partisan blah lobbyist"
      when "weather" 
        then 
          self.happiness = @happiness += 1
          friend.happiness += 1 
          "blah blah sun blah rain"
      else "blah blah blah blah blah"
    end
    
  end

end

# penelope = Person.new('Penelope', 25, 10, 10)
# steve = Person.new('Steve', 20, 5, 5)

# # # puts penelope
# # # puts steve

# puts penelope.happy
# puts steve.happy
