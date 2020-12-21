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
    puts "\nEnter the index for a class to spells for that class.\n\n"
    @user_klass_input = gets.strip
    if valid_input(@user_klass_input, Dnd5eClassSpells::Klass.all)
      puts "x"
    else
      puts "\n\nPlease enter a valid index!!"
      get_user_klass_input
    end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
end  

 