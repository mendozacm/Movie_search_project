class CLI 
  
  def self.testing_method
    puts "i work!"
  end
  
end

#CLI controller./
class Project::CLI
  def call
    puts "what up"
    list_deals
  end
  def list_deals
    puts "today only blah blah blah"
  end
  
  
end