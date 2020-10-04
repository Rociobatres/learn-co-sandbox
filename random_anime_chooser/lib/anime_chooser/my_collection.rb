class MyCollection 
 
@@all = []  

attr_accessor :name, :description 

def initialize(name, description)
  @name = name
  @description = description
  @@all << self 
end 

def self.all
  @@all.delete_at(45)
  @@all.delete_at(44)
  @@all.delete_at(43)
  @@all.delete_at(39)
  @@all.delete_at(35)
  @@all.delete_at(31)
  @@all.delete_at(28)
  @@all.delete_at(24)
  @@all.delete_at(21)
  @@all.delete_at(17)
  @@all.delete_at(13)
  @@all.delete_at(8)
  @@all.delete_at(4)
  @@all.delete_at(0)
  @@all  
  @@all 
end 

end 