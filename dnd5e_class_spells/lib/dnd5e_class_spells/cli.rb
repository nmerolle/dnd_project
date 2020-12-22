class Dnd5eClassSpells::CLI

  def call
    puts "\nWelcome to the DnD 5e spell list.\n\n" 
    get_klasses
    get_user_klass_input

  end

 
  def get_klasses
    @klasses = Dnd5eClassSpells::Klass.all
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

 