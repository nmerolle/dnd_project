class Dnd5eClassSpells::CLI

  def call
    
    get_spells
    get_klasses
    get_user_klass_input
    #description
  end

  def get_spells
    Dnd5eClassSpells::API.get_spells
  end
  
  def get_klasses
    puts "\nWelcome to the DnD 5e spell list.\n\n" 
    Dnd5eClassSpells::API.get_klasses
    Dnd5eClassSpells::Klass.list_klasses
  end

  def get_user_klass_input
    puts "\nEnter a class to see info on that class.\n\n"
    binding.pry
    @user_klass_input = gets.strip
  end
  
  
end  

 