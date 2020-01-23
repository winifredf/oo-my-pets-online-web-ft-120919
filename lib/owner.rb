class Owner
  
  attr_reader :name
  
  
  @@all = []
  def initialize(name)
    @name = name
  end
  
  def name
    @name = name
  end
end