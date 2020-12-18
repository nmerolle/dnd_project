class Dnd5eClassSpells::CLI

  def call
    puts "Welcome to the DnD 5e spell list."
    Dnd5eClassSpells::API.get_klasses
    Dnd5eClassSpells::API.list_klasses
    puts "\nType in a class to see a list of classes available to that class."
    #description
  end



end  