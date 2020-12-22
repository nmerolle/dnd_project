class  Dnd5eClassSpells::API 

  BASE_URL = "https://www.dnd5eapi.co/api/"
  SPELL_URL = "https://www.dnd5eapi.co/api/spells"
  
  def self.get_klasses
    response = RestClient.get(BASE_URL + "classes")
    data = JSON.parse(response)
    
    data["results"].each do |klass_data|
      name = klass_data["name"]
      klass_index = klass_data["index"]
      Dnd5eClassSpells::Klass.new(name: name, klass_index: klass_index)
    end
  end



  

    
 

end
