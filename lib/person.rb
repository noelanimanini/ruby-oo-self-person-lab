# your code goes here
require 'pry'
class Person
 attr_reader :name ,:hygiene ,:happiness 
 attr_accessor :bank_account
  @@all = []
  def initialize (name)
     @name = name
     @bank_account = 25
     @happiness = 8
     @hygiene = 8
     @@all << self
  end
#   def happiness=(input)
#      @happiness = 
  end
  def self.all
      @@all
  end
  def happy?
      self.happiness > 7
  end
  def clean?
     self.hygiene > 7 
  end
  def get_paid(salary)
     self.bank_account+= salary
     "all about the benjamins" #if salary == 100
  end
  def take_bath
    # binding.pry
     self.hygiene+= 4
     "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    #  binding.pry
     self.happiness+= 2
     self.hygiene -= 3
     "♪ another one bites the dust ♫"
  end
  def call_friend (friend)
    # binding.pry
     self.happiness+= 3
     friend.happiness+= 3
     "Hi Felix! It's Stella. How are you?"
  end
  def start_conversation(person1 ,topic)
     if self.topic == "politics"
         "blah blah partisan blah lobbyist"
     elsif self.topic == "weather"
         "blah blah sun blah rain" 
     else
          "blah blah blah blah blah"
       end
    end
end
irvin = Person.new("irvin",300,10,9)
nick = Person.new("Nick",350,12,12)
#  binding.pry