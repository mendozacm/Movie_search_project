class MovieDB::CLI
  
  def start 
    puts "Welcome user"
    menu
  end
  
  def menu
    puts "What trending category would you like to know about? Your options are all, movie, tv, or person. "
    
    input = gets.strip
    true if 
    MovieDB::API.query_movie_db(input)
    
  end
  
end