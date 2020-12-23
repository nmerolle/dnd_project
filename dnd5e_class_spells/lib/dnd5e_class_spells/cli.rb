class Dnd5eClassSpells::CLI

  def call
    puts "\nWelcome to the DnD 5e spell list.\n\n" 
    get_klasses
    list_klasses
    get_user_klass_input

  end

  def get_klasses
    @klasses = Dnd5eClassSpells::Klass.all
  end
  
  def list_klasses
    @klasses.each_with_index do |klass, index|
    puts "#{index+1}. #{klass.name}"
    end
  end

  def get_user_klass_input
    puts "\nEnter the index for a class to spells for that class.\n\n"
    user_klass_input = gets.strip
    if valid_input(user_klass_input, @klasses)
      get_klass_spells(user_klass_input)
    else
      puts "\n\nPlease enter a valid index!!"
      get_user_klass_input
    end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def get_klass_spells(user_klass_input)
    klass_int = user_klass_input.to_i
    klass = @klasses[klass_int -1 ]
    Dnd5eClassSpells::API.get_spells(klass.klass_index)
    binding.pry
  end
    


end  

 