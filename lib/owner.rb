class Owner
  
  attr_reader :name, :species
  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
end