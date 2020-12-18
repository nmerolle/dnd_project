class Spell
  
  attr_accessor :name
  
  @@all = []

  def initialize(name:)
    self.name = name
    self.save
  end
  
  def save
    @@all << self
  end

end