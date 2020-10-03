class MyCollection 
 
@@all = []  

attr_accessor :number, :name, :description 

def initialize(number, name,description)
  @number = number 
  @name = name
  @description = description
  @@all << self 
end 

def self.all
  @@all 
end 
end 