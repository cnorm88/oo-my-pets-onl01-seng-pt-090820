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
  
   def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    pets = self.dogs + self.cats 
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end
  
  
end