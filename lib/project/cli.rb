

#CLI controller./
class Project::CLI
  
  #bundles the 3 main functions of the CLI
  def call
    greeting
    list_genres
    menu
    goodbye
  end
  
  #greets user
  def greeting
    puts "Hello there! What genre of movies are you interested in today?"
  end
  
  #lists out the data
  def list_genres
    input = nil
    puts "Pick your favortie genre and get a list of movies"
    puts Project::API.query_movie_db(input)
  end
  
  #allows the user to interact with the data
  def menu
    #gives input a value
    input = nil
   #keeps the program in a loop until you type exit
    while input != "exit"
    
    puts "Enter the genre name on the list you'd like to know more about, type 'list' to see info again or type 'exit':"
      input = gets.strip.downcase
      case input
      
      when "Action" 
          puts "More info on deal 1..."
      
      when "Adventure"
          puts "More info on deal 2"
     
      when "list"
        list_genres
      
      when "exit"
        nil
      
      
      else
        puts "Sorry, not a valid option"
      end
    end
  end
  
  #tells the user goodbye!
  def goodbye
    puts "until next time"
  end
  
  
end