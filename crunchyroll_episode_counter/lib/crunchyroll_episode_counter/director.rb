class Director 

  def call 
    puts "\nWelcome to the Crunchyroll episode counter! I will be directing you to your next anime! What kind of anime do you want to watch? (Accepts: short, medium, long): \n"
    anime_lists 
    anime_length
  end 
  
  def anime_lists 
    AnimeCollection.new("Hello", 12, "wholesome show")
    AnimeCollection.new("Goodbye",278, "scary, horror")
    @animecollection = AnimeCollection.all   
  end 
  
  def anime_length 
    user_pref = gets.strip   
    if user_pref == "short"
      puts "\nThese animes are 25 episodes or less!\n"
      @animecollection.each.with_index(1) do |anime, idx|
        puts "#{idx}. #{anime.title}"
      end 
    elsif user_pref == "medium"
      puts "\nThese animes are 26 to 100 episodes!"
    elsif user_pref == "long" 
      puts "\nThese animes are 100+ episodes long!" 
    else 
      puts "\nSorry dear, try again and input: short, medium, or long"
    end #would like to loop it back to the beginning instead of having them type ./bin again :( 
  end 

end 
