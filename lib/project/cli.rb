class Project::CLI
  
  def call
    greeting
    list_movies
    menu
    goodbye
  end
  
  def greeting
    puts "Hello there! Would you like to know more about todays trending movies?"
  end
  
  def list_movies
    input = nil
    puts "Here are todays trending movies:"
    #puts Project::API.query_movie_db(input)
  end
  
  def menu
    input = nil
    while input != "exit"
    
    puts "Enter the name on the list you'd like to know more about, type 'list' to see the trending movies again, or type 'exit':"
      input = gets.strip.downcase
      case input
      
      when "Action" 
          puts "More info on deal 1..."
      
      when "Adventure"
          puts "More info on deal 2"
     
      when "list"
        list_movies
        
      
      when "exit"
        nil
      
      
      else
        puts "Sorry, not a valid option"
      end
    end
  end
  
  def goodbye
    puts "until next time"
  end
  
  
end