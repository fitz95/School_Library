require './classes/app'
require './classes/options'


def main
  options = Options.new
  puts '___________________________________________________________'
  puts ''
  puts 'WELCOME TO THE SCHOOL LIBRARY APP'
  puts '___________________________________________________________'
  puts ''

  loop do 
    display_menu
    option = gets.chomp

    if option == '7'
      puts 'Thank You for using this application'
      return
    end

    options.options(option)
  end
end



def display_menu
  puts ''
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  puts ''
  print 'Enter number: '
end

main