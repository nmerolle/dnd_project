class Dnd5eClassSpells::CLI

  def call
    puts "\nWelcome to the DnD 5e spell list.\n\n" 
    @input = ""
    until @input == "exit"
      get_klasses
      list(@klasses)
      get_user_input(@klasses)
      get_spells
      list(@spells)
      get_user_spell_input(@spells)
      what_next
    end
    goodbye
  end

  def get_klasses
    @klasses = Dnd5eClassSpells::Klass.all
  end
  
  def get_spells
    
    @spells = Dnd5eClassSpells::Spell.all
    
    if @spells.empty?
      puts "\n\nSorry this class can not cast spells. Try another class.\n\n"
      get_user_input(@klasses)
      get_spells
    end
  end
  
  def list(input)
    input.each_with_index do |x, index|
    puts "#{index+1}. #{x.name}"
    end
  end

  def get_user_input(data)
    puts "\nEnter the index for a class to see a list of spells for that class.\n\n"
    user_input = gets.strip
    if valid_input(user_input, data)
      get_klass_spells(user_input)
    else
      puts "\n\nPlease enter a valid index!!"
      get_user_input
    end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def get_klass_spells(user_input)
    klass_int = user_input.to_i
    klass = @klasses[klass_int -1]
    puts "\n\n#{klass.name} Spells\n\n"
    Dnd5eClassSpells::API.get_spells(klass.klass_index)
  end
  
  def get_user_spell_input(data)
    puts "\nEnter the index for a spell to see a description.\n\n"
    user_spell_input = gets.strip
    if valid_input(user_spell_input, data)
      get_spell_info(user_spell_input)
      
    else
      puts "\n\nPlease enter a valid index!!"
      get_user_spell_input(data)
    end
  end
  
  def get_spell_info(user_spell_input)
    spell_int = user_spell_input.to_i
    spell = @spells[spell_int -1]
    Dnd5eClassSpells::API.get_spell_desc(spell.spell_index)
  end
  
  def what_next
    @spells.clear
    puts "\nAre you done? Type 'exit' to exit or hit any key to see more spells."
    @input = gets.strip
  end
  
  def goodbye
    puts "\nGoodbye!!!\n"
  end
  
end



 