class Scraper

  def scrape_anime 
    doc = Nokogiri::HTML(open("https://www.crunchyroll.com/videos/anime/alpha?group=a"))
  end
 
  def get_info
    self.scrape_anime.css(".wrapper")
  end
 
  def apply_info
    self.get_info.each do |show|
      anime = AnimeCollection.new
      anime.title = show.css("span.series-title.block.ellipsis").text
      anime.episode_count = show.css("span.series-data.block").text
      anime.description = show.css("short-desc").text
    end
  end
  
  def begin_scrape
    self.apply_info
  end
end 