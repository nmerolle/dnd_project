class  Dnd5eClassSpells::API 

  BASE_URL = "https://www.dnd5eapi.co/api/"
  SPELL_URL = "https://www.dnd5eapi.co/api/spells"
  
  def self.get_klasses
    response = RestClient.get(BASE_URL + "classes")
    data = JSON.parse(response)
    
    data["results"].each do |klass_data|
      name = klass_data["name"]
      Dnd5eClassSpells::Klass.new(name: name)
    end
  end

  def self.get_spell_indices
    response = RestClient.get(BASE_URL + "spells")
    data = JSON.parse(response)
    @spell_indices = []
    data["results"].each do |spell_data|
      @spell_indices << spell_data["index"]
    end
    binding.pry
  end
  

    
 

end
