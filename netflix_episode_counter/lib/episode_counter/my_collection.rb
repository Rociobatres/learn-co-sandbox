class MyCollection 
 
@@all = []  

attr_accessor :name, :episode_count, :description 

def initialize(name)
  @name = name
  @episode_count = episode_count
  @description = description
  @@all << self  
end 

def self.all
  Scraper.new.begin_scrape if @@all.empty?
  @@all 
end 
  
end 