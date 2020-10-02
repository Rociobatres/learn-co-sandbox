require_relative "./crunchyroll_episode_counter/scraper.rb"
class CrunchyrollEpisodeCounter::AnimeCollection 
 
@@all = []  

attr_accessor :title, :episode_count, :description 

def initialize 
  @@all << self  
end 

def self.all
  @@all 
end 
  
end 