class MovieDB::CLI
  
  def start 
    puts "Welcome user"
    menu
  end
  
  def menu
        

      puts "To see a list of todays trending movies just hit 'enter'?"
    
    input = gets.strip
     
     MovieDB::API.query_movie_db(input)
     MovieDB::Trending.all.each.with_index(1) do |m, i|
      puts "#{i}. #{m. title}"
      
      end
      
      puts "What movie would you like to know more about?"
      input = gets.strip
      movie = MovieDB::Trending.all[input.to_i - 1]
      MovieDB::API.query_single_movie(movie)
      
      puts "Revenue: #{movie.revenue}"
      puts "Budget: #{movie.budget}"
      puts "Tagline: #{movie.tagline}"
  end
    
  end
