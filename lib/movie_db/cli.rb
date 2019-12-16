class MovieDB::CLI
  
  def start 
    puts "Welcome user"
    MovieDB::API.query_movie_db
    menu
  end
  
  def
  
  
  def menu
    puts "To see a list of todays trending movies just hit 'enter'"
    input = nil 
    while input != "exit"
      input = gets.strip
      
        MovieDB::Trending.all.each.with_index(1) do |m, i|
          puts "#{i}. #{m. title}"
        end
      puts "What movie would you like to know more about? Just type in the number of the movie on the list! Or type 'exit' to exit"
      
      input = gets.strip
      if input.to_i > 0 && input.to_i <= MovieDB::Trending.all.length
        show_details
      elsif input == "exit"
      puts "Goodbye, have a great day!!"
      else
        puts "I'm sorry, I think you hit the wrong key, hit enter to continue"
    
      end
    end
  end 
end
