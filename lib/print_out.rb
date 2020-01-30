class PrintOut

  def initialize
    @ages = []
  end

  def enter_year
    puts "Enter year: "
    gets.chomp
  end

  def enter_event_name
    puts "Enter Event Name: "
    gets.chomp
  end

  def initial_enter_age
    puts "Enter Age of First Participant: "
    @ages << gets.chomp.to_i
    additional_enter_ages
    @ages
  end

  def additional_enter_ages
    puts "Do You Have Another Participant? Y for yes, N for no "
    answer = gets.chomp.upcase
    if answer == "Y"
      puts "Enter Age of Next Participant: "
      @ages << gets.chomp.to_i
      additional_enter_ages
    elsif answer == "N"
      puts "Thank You For Your Input"
    else
      puts "Invalid Input, Please Try Again"
      additional_enter_ages
    end
  end
end