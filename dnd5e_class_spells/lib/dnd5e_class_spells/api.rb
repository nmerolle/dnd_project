class  Dnd5eClassSpells::API 

  BASE_URL = "https://www.dnd5eapi.co/api/"

  def self.get_classes
    response = RestClient.get(BASE_URL + "classes")
    data = JSON.parse(response)
    klass_data = data["results"]
    binding.pry
  end

end