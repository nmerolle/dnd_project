class  Dnd5eClassSpells::API 

  BASE_URL = "https://www.dnd5eapi.co/api/"

  def self.get_klasses
    response = RestClient.get(BASE_URL + "classes")
    data = JSON.parse(response)
    
    data["results"].each do |klass_data|
      name = klass_data["name"]
      Dnd5eClassSpells::Klass.new(name: name)
    end
  end

  def self.get_spells
    response = RestClient.get(BASE_URL + "classes")
    data = JSON.parse(response)
    
    data["results"].each do |spell_data|
      name = spell_data["name"]
      Dnd5eClassSpells::Spell.new(name: name)
    end
  end
  
end
