require_relative "./crunchyroll_episode_counter/version"
require_relative "./crunchyroll_episode_counter/director"
require_relative "./crunchyroll_episode_counter/anime_collection"
require_relative "./crunchyroll_episode_counter/scraper"

require 'nokogiri'
require 'open-uri'

module CrunchyrollEpisodeCounter
  class Error < StandardError; end
  # Your code goes here...
end
