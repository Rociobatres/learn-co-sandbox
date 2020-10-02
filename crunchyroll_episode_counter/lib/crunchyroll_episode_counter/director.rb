class CrunchyrollEpisodeCounter::Director 
  #the #call method will be what brings all the methods together when it is called in the bin 
  def call 
    puts "\nWelcome to the Crunchyroll episode counter! I will be directing you to your next anime! What kind of anime do you want to watch? (Accepts: short, medium, long): \n"
    anime_length #this method will take the users response and call the appropriate array  
    #length_lists #this method will hold the arrays according to length
    #collection_scraper #this method will be the scraper getting the information from Crunchyroll 
    #collection_sorter #this method will be what sorts the scraped info into the three arrays 
    #director_response #this will give the user a response according to their input 
  end 
  
  def anime_length 
    user_pref = gets.strip   
    if user_pref == "short"
      #puts "\nThese animes are 25 episodes or less!"
      puts @AnimeCollection 
    elsif user_pref == "medium"
      puts "\nThese animes are 26 to 100 episodes!"
    elsif user_pref == "long" 
      puts "\nThese animes are 100+ episodes long!" 
      #come back and enter a diff 'else' for when they type in something other than 'short', 'medium', or 'long'
    else 
      puts "\nSorry dear, try again and input: short, medium, or long"
    end #would like to loop it back to the beginning instead of having them type ./bin again :( 
  end 
  
  def length_list 
    @AnimeCollection = CrunchyrollEpisodeCounter::AnimeCollection.all  
  end 
end 
