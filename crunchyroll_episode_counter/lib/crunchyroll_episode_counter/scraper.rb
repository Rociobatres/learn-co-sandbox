class Scraper

  def scrape_anime 
    doc = Nokogiri::HTML(open("https://www.techradar.com/best/best-anime"))
  end
 
  def get_info
    self.scrape_anime.css("div#article-body")
  end
 
  def apply_info
    self.get_info.each do |show|
      anime = AnimeCollection.new
      anime.title = show.css("h2")[1..30].text
      anime.episode_count = show.css("").text
      anime.description = show.css("").text
    end
  end
  
  def begin_scrape
    self.apply_info
  end
end 