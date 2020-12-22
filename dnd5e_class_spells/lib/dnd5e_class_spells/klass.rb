class  Dnd5eClassSpells::Klass
  attr_accessor :name, :klass_index
  
  @@all = []
  
  def initialize(name:, klass_index:)
    self.name = name
    self.klass_index = klass_index
    self.save
  end
  
  def save 
    @@all << self
  end
    
  def self.all
    Dnd5eClassSpells::API.get_klasses if @@all.empty? 
    @@all
  end
  
  def self.list_klasses
    @@all.each_with_index do |klass, index|
      puts "#{index+1}. #{klass.name}"
    end
  end
  
  
  
  
end