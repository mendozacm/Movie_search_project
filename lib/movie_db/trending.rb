class MovieDB::Trending
  attr_accessor :media_type, :id, :vote_count, :vote_average,:title, :release_date
   
    @@all = []
  def initialize(args)
      args.each do |k,v|
        self.send("#{k}=", v) if self.respond_to?(k)
      end
      @@all << self
  end
  
  def self.all
    @@all
  end
end
