class  Dnd5eClassSpells::API 

  BASE_URL = "https://www.dnd5eapi.co/api/"

  def self.get_klasses
    response = RestClient.get(BASE_URL + "classes")
    data = JSON.parse(response)
    @klass_data = data["results"]
  end

  def self.list_klasses
    @klass_data.each_with_index do |klass,index|
      puts "#{index+1}. #{klass["name"]}"
    end
  end
  
end
