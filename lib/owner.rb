class Owner
  
  attr_reader :name
  attr_reader :species
  
  def initialize(name)
    @name = name
    
  end
  
  def initialize(species)
    @species = species
  end
end