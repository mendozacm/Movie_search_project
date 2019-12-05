class MovieDB::API 
  BASE_URL = 'http://api.themoviedb.org/3'
  API_KEY = 'cb09e4c3864336c419d217cc3e2f9387'
  
  def self.query_movie_db(query)
   results = RestClient.get("#{BASE_URL}/trending/#{query}/day?api_key=#{API_KEY}")

binding.pry
  
 
  
  end
  
end