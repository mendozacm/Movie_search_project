class MovieDB::Trending
  attr_accessor :id, :vote_count, :vote_average,:title, :release_date, :budget, :revenue, :tagline
   
    @@all = []
  def initialize(args)
      update(args)
      @@all << self
  end
  
  def update(args)
    args.each do |k,v|
        self.send("#{k}=", v) if self.respond_to?(k)
  end
end
  def self.all
    @@all
  end
end
