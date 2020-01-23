
class Owner
  # code goes here

  attr_reader :species, :name

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
    

  def dogs
    Dog.all.select {|dog| dog.owner == self|
  end

  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  