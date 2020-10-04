class Director 

  def call 
    puts "\nHello friend! Welcome to Random Anime Chooser! I'll be your director today and I will be picking from my collection of great anime. Give me a number 1 - 32: \n"
    show_lists 
    user_input 
  end 
  
  def get_lists
    Scraper.apply_info 
  end 
  
  def show_lists 
    get_lists
    @mycollection = MyCollection.all 
  #  @mycollection.each.with_index(1) do |anime, idx|
  #    puts "#{idx}. #{anime.name}"
  #  end 
  end 

  def user_input
    user_pick = gets.strip.to_i 
    if user_pick < 1 
      puts "\nOops! It seems you have entered an invalid answer. Try again and follow the instructions on the screen! :)"
    elsif user_pick > 32
      puts "\nOops! It seems you have entered an invalid answer. Try again and follow the instructions on the screen! :)"
    else 
    choose_show(user_pick)
  end 
  end 
  
  def choose_show(user_pick)
    anime = @mycollection[user_pick-1]
    puts "You got *#{anime.name[3..-1]} * !\nWould you like to see a short description? \n(Enter '1' for Yes or '2' for No)"
    user_choice = gets.strip 
    if user_choice == "1"
      puts "#{anime.description}"
    elsif user_choice == "2" 
      puts "Thank you for looking through my collection! Come back for more anime recommendations!"
    else 
      puts "\nOops! It seems you have entered an invalid answer. Try again and follow the instructions on the screen! :)"
    end 
  end 

end 