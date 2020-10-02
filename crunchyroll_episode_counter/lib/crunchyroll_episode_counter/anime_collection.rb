class AnimeCollection 
 
@@all = []  

attr_accessor :title, :episode_count, :description 

def initialize(title,episode_count,description)
  @title = title
  @episode_count = episode_count
  @description = description
  @@all << self  
end 

def self.all
  #Scraper.new.begin_scrape if @@all.empty?
  @@all 
end 
  
end 