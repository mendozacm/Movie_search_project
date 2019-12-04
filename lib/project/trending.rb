class Project::Trending
  attr_accessor :name, :id
  
  @@all = []
  def initialize(args)
      args.each do |k,v|
        self.send("#{k}=",v) if self.respond_to(k)
      end
  end
  
  def self.all
    @@all
  end
  
end
