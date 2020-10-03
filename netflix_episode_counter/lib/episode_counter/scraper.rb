class Scraper

  def self.apply_info
    
    doc = Nokogiri::HTML(open("https://www.buzzfeed.com/michellemkim/anime-recommendations-to-watch-quarantine"))

    doc.css(".subbuzz").each do |show|
      MyCollection.new(show.css(".js-subbuzz__title-text").text.strip.to_i, show.css(".js-subbuzz__title-text").text.strip, show.css(".subbuzz__description").text)
    end 
  end 
end
