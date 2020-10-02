class Director 

  def call 
    puts "\nWelcome to my Netflix episode counter! I will be directing you to your next show! What kind of show do you want to watch? (Accepts: short, medium, long): \n"
    show_lists 
    show_length
  end 
  
  def show_lists 
    #MyCollection.new("Hello", 12, "wholesome show")
    #MyCollection.new("Goodbye",278, "scary, horror")
    @mycollection = MyCollection.all   
  end 
  
  def show_length 
    user_pref = gets.strip   
    if user_pref == "short"
      puts "\nThese shows are 25 episodes or less!\n"
      @mycollection.each.with_index(1) do |show, idx|
        puts "#{idx}. #{show.name}"
      end 
    elsif user_pref == "medium"
      puts "\nThese shows are 26 to 100 episodes!"
    elsif user_pref == "long" 
      puts "\nThese shows are 100+ episodes long!" 
    else 
      puts "\nSorry dear, try again and input: short, medium, or long"
    end #would like to loop it back to the beginning instead of having them type ./bin again :( 
  end 

end 
