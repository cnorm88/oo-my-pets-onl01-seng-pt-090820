class Owner
  
attr_reader :name, :species
# attr_accessor :pets

@@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    # @@pets = {:cats => [], :dogs => []}
  end
  
   def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end    
  
  def self.reset_all
    @@all = @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def cats
    Cat.all.select do |cat|
      cat.owner == self
  end
  
end