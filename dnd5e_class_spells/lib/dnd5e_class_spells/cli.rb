class Dnd5eClassSpells::CLI

  def call
    puts "\nWelcome to the DnD 5e spell list.\n\n"
    Dnd5eClassSpells::API.get_klasses
    Dnd5eClassSpells::Klass.list_klasses
    puts "\nEnter a class to see info on that class.\n\n"
    #description
  end

  

end  