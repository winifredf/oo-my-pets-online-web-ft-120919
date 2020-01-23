require_relative 'environment'

  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    Dog.all.each {|dog| dog.mood = "happy" if dog.owner == self}
  end
  
  def feed_cats
    Cat.all.each {|cat| cat.mood = "happy" if cat.owner == self}
  end
  
  def sell_pets
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end
  
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end
  
  def list_pets
    "I have ${dogs.count} dog(s), and #{cats.count} cat(s)."
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
