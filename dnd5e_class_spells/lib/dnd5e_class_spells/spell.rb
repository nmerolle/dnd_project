class  Dnd5eClassSpells::Spell
  
  attr_accessor :name, :desc
  
  @@all = []
  
  def initialize(name:)
    self.name = name
    self.save
  end
  
  def save 
    @@all << self
  end
    
  def self.all
    @@all
  end

  
  
    
  
end