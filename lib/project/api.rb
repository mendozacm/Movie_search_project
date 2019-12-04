class Project::API 
  BASE_URL = 'http://api.themoviedb.org/3'
  API_KEY = 'cb09e4c3864336c419d217cc3e2f9387'
  
  def self.query_movie_db(query)
   results = RestClient.get("#{BASE_URL}/trending/all/day?api_key=#{API_KEY}")

 json = JSON.parse(results)
 genres = results.split( /, */ )

  binding.pry
  
  end
  
end