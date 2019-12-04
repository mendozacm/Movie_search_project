class CLI 
  
  def self.testing_method
    puts "i work!"
  end
  
end

#CLI controller./
class Project::CLI
  
  def call
    list_deals
    menu
    goodbye
  end
  
  def list_deals
    puts "what up"
    puts "today only blah blah blah"
  end
  
  def menu
    puts "enter the number on list you'd like to know more about or type 'exit':"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1" 
          puts "More info on deal 1..."
      when "2"
          puts "More info on deal 2"
      end
    end
  end
  
  def goodbye
    puts "until next time"
  end
end