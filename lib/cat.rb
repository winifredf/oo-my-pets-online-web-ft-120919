class Cat
  attr_reader :name
  attr_accessor :owner
  
  
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    
  end
  
  def self.all
    @@all
  end
end