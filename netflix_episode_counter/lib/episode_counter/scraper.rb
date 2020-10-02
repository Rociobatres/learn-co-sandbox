class Scraper

  def scrape_show 
    doc = Nokogiri::HTML(open("https://uproxx.com/tv/best-netflix-original-series-to-watch-right-now-ranked/"))
  end
 
  def get_info
    self.scrape_show.css(".post")
  end
 
  def apply_info
    #self.get_info.each do |show|
      show = self.get_info.css(".post h3 em")
      show.each do |title|
        name = title.text
        MyCollection.new(name)
      #anime.episode_count = show.css("p strong").text
      #anime.description = show.css("").text
      
    end
  end
  
  def begin_scrape
    self.apply_info
  end
end 