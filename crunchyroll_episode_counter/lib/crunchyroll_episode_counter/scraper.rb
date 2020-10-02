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
  
  def print_courses
    self.apply_info
  #  AnimeCollection.all.each do |course|
  #    if course.title && course.title != ""
  #      puts "Title: #{course.title}"
  #      puts "  Episode_count: #{course.schedule}"
  #      puts "  Description: #{course.description}"
  #    end
  #  end
  end
end 