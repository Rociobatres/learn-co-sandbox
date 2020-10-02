class AnimeCollection 
 
@@all = []  

attr_accessor :title, :episode_count, :description 

def initialize 
  @@all << self  
end 

def self.all
  Scraper.new.print_courses if @@all.empty?
  @@all 
end 
  
end 