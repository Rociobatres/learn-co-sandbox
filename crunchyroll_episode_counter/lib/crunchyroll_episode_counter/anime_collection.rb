class CrunchyrollEpisodeCounter::AnimeCollection 
 
@@all = []  

attr_accessor :title, :episode_count, :description 

def initialize 
  @name = name 
  @episode_count = episode_count 
  @description = description 
  save 
end 
  
def save  
  @@all << self 
end 

def self.all
  @@all 
end 
  
end 