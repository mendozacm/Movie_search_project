class MovieDB::CLI
  
  def start 
    puts "Welcome user"
    menu
  end
  
  
  
  def menu
    puts "To see a list of todays trending movies just hit 'enter'"
    input = nil 
    while input != "exit"
      input = gets.strip
      MovieDB::API.query_movie_db(input)
        MovieDB::Trending.all.each.with_index(1) do |m, i|
          puts "#{i}. #{m. title}"
        end
      puts "What movie would you like to know more about? Just type in the number of the movie on the list! Or type 'exit' to exit"
      
      input = gets.strip
      if input.to_i > 0 
      movie = MovieDB::Trending.all[input.to_i - 1]
      MovieDB::API.query_single_movie(movie)
      
      puts "Vote_average: #{movie.vote_average}"
      puts "Vote_count: #{movie.vote_count}"
      puts "Release_date: #{movie.release_date}"
      puts "hit 'enter' to continue"
      elsif input == "exit"
      puts "Goodbye, have a great day!!"
      else
        puts "I'm sorry, I think you hit the wrong key, hit enter to continue"
    
      end
    end
  end 
end
