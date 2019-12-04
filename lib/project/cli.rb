class CLI 
  
  def self.testing_method
    puts "i work!"
  end
  
end

#CLI controller./
class Project::CLI
  
  #bundles the 3 main functions of the CLI
  def call
    list_deals
    menu
    goodbye
  end
  
  #lists out the data
  def list_deals
    puts "what up"
    puts "today only blah blah blah"
  end
  
  #allows the user to interact with the data
  def menu
    #gives input a value
    input = nil
   #keeps the program in a loop until you type exit
    while input != "exit"
    
    puts "Enter the number on list you'd like to know more about or type 'exit':"
      input = gets.strip.downcase
      case input
      when "1" 
          puts "More info on deal 1..."
      when "2"
          puts "More info on deal 2"
      
      end
    end
  end
  
  #tells the user goodbye!
  def goodbye
    puts "until next time"
  end
  
  
end