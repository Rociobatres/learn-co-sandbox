class CrunchyrollEpisodeCounter::Director 
  #the #call method will be what brings all the methods together when it is called in the bin 
  def call 
    puts "\nWelcome to the Crunchyroll episode counter! I will be directing you to your next anime! What kind of anime do you to watch? (Accepts: short, medium, long) : \n"
    anime_length #this method will take the users response and call the appropriate array  
    #length_lists #this method will hold the arrays according to length
    #collection_scraper #this method will be the scraper getting the information from Crunchyroll 
    #collection_sorter #this method will be what sorts the scraped info into the three arrays 
    #director_response #this will give the user a response according to their input 
  end 
  
  def anime_length 
    user_pref = gets.strip   
    if user_pref == "short"
      puts @short = ["\nThese animes are 25 episodes or less!"]
    elsif user_pref == "medium"
      puts @medium =["\nThese animes are 26 to 100 episodes!"]
    else 
      puts @long = ["\nThese animes are 100+ episodes long!"] 
      #come back and enter a diff 'else' for when they type in something other than 'short', 'medium', or 'long'
    end
  end 
  
  def length_list 
    @short = ["These are short animes"]
    @medium = ["These are medium animes"]
    @long = ["These are long ass animes"]
  end 
end 
