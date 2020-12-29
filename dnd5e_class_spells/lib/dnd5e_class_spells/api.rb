class  Dnd5eClassSpells::API 

  BASE_URL = "https://www.dnd5eapi.co/api/"
  SPELL_URL = "https://www.dnd5eapi.co/api/spells/"
  
  def self.get_klasses
    response = RestClient.get(BASE_URL + "classes")
    data = JSON.parse(response)
    
    data["results"].each do |klass_data|
      name = klass_data["name"]
      klass_index = klass_data["index"]
      Dnd5eClassSpells::Klass.new(name: name, klass_index: klass_index)
    end
  end

 def self.get_spells(ind)
    response = RestClient.get(BASE_URL + "classes/#{ind}/spells")
    data = JSON.parse(response)
    
    data["results"].each do |spell_data|
      name = spell_data["name"]
      spell_index = spell_data["index"]
      Dnd5eClassSpells::Spell.new(name: name, spell_index: spell_index)
    end
  end
  
   def self.get_spell_desc(ind)
    response = RestClient.get(SPELL_URL + "#{ind}")
    data = JSON.parse(response)
    puts "\n                           #{data["name"]}\n\n"
    puts "#{data["desc"]}"
  end


  

    
 

end
