class Dnd5eClassSpells::Spell
  
  attr_accessor :name, :desc
  
  @@all = []

  def initialize(name:, desc:)
    self.name = name
    self.desc = desc
    self.save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end

end