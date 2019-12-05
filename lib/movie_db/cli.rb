class MovieDB::CLI
  
  def start 
    puts "Welcome user"
    menu
  end
  
  def menu
    puts "What trending movie would you like to know about? Your options are movie, tv, or person. If you pick wrong results will be from all. "
    
    input = gets.strip
     
     MovieDB::API.query_movie_db(input)
    
      MovieDB::Trending.all.each.with_index(1) do |m, i|
      puts "#{i}. #{m. title}"
      end
  end
    
  end