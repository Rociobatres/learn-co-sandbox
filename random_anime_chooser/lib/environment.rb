require_relative "./anime_chooser/version"
require_relative "./anime_chooser/director"
require_relative "./anime_chooser/my_collection"
require_relative "./anime_chooser/scraper"

require 'nokogiri'
require 'open-uri'

module RandomAnimeChooser
  class Error < StandardError; end
end


