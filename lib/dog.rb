class Dog
  # code goes here
  attr_accessor :mood, :owner
  attr_writer :name
  
  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    @owner.dogs << self
  end
  
  def self.all
    @@all
  end
end