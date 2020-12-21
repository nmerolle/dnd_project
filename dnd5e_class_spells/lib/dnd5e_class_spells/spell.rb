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
  
  def self.list_spells
    @@all.each_with_index do |klass, index|
      puts "#{index+1}. #{klass.name}"
    end
  end
  
  
    
  
end