require_relative "./episode_counter/version"
require_relative "./episode_counter/director"
require_relative "./episode_counter/my_collection"
require_relative "./episode_counter/scraper"

require 'nokogiri'
require 'open-uri'

module NetflixEpisodeCounter
  class Error < StandardError; end
  # Your code goes here...
end
