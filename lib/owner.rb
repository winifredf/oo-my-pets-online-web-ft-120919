class Owner

  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = human