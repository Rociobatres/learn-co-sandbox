class Director 

  def call 
    puts "\nHello friend! Welcome to Random Anime Chooser! I'll be your director today and I will be picking from my collection of great anime. Give me a number 1 - 32: \n"
    show_lists 
    show_length
  end 
  
  def get_lists
    Scraper.apply_info 
  end 
  
  def show_lists 
    #MyCollection.new("Hello", 12, "wholesome show")
    #MyCollection.new("Goodbye",278, "scary, horror")
    get_lists
    @mycollection = MyCollection.all
  end 
  
  def show_length 
    user_pref = gets.strip   
    if user_pref == "short"
      puts "\nThese shows are 25 episodes or less!\n"
      @mycollection.each.with_index(1) do |program, idx|
        puts "#{idx}. #{program.name} \n#{program.description}"
        #puts "#{idx}. #{program.name}"
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
