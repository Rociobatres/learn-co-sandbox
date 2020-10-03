class Scraper
  
  @@new_collection = []
  
  def scrape_show 
    doc = Nokogiri::HTML(open("https://uproxx.com/tv/best-netflix-original-series-to-watch-right-now-ranked/"))
  end
 
  def get_info
    self.scrape_show.css(".post")
  end
 
  def apply_info
      show = self.get_info.css(".post h3 em")
      show.each do |title|
        name = title.text
      count = self.get_info.css(".post p strong")
      count.each do |count|
        episode_count = count.text 
      MyCollection.new(name,episode_count)
      end 
    end
  end
  
  def begin_scrape
    self.apply_info
    MyCollection.all.each do |tvshow|
    if tvshow.title && tvshow.title != ""
    @@new_collection << show   
    end     
  end
end 
 
 def self.new_collection 
   @@new_collection
 end 
end 