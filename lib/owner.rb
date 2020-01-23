
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

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, name_array|
      name_array.each do |pet|
        pet.mood = "nervous"
        #name_array.delete(pet)
      end 
    end
    @pets = {}
  end

  def list_pets
    "I have #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self. count
    @@owners.length
  end
end