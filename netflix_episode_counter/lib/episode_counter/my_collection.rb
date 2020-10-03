class MyCollection 
 
@@all = []  

attr_accessor :name, :episode_count, :description 

def initialize(name,episode_count)
  @name = name
  @episode_count = episode_count
  @description = description
  @@all << self 
end 

def self.all
  Scraper.new.begin_scrape if @@all.empty?
  Scraper.new_collection 
end 
  
end 