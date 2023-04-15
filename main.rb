require_relative 'app'

APP = App.new

def person_info()
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    type = gets.chomp.to_i
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    if type == 1
      print 'Has parent permission? [Y/N]: '
      parent_permission = gets.chomp.downcase == 'y'
      APP.create_person(name, age, 'student', parent_permission: parent_permission)
    elsif type == 2
      print 'Specialization: '
      specialization = gets.chomp
      APP.create_person(name, age, 'teacher', specialization: specialization)
    else
      puts 'Invalid option'
    end
end

def main
  puts "\nPlease choose an option by entering a number:
1 - List all books
2 - List all people
3 - Create a person
4 - Create a book
5 - Create a rental
6 - List all rentals for a given person id
7 - Exit"
  user_choice = gets.chomp.to_i
  case user_choice
  when 1
    APP.list_of_books
  when 2
    APP.list_of_people
  when 3
    person_info()
  when 4
    APP.create_book
  when 5
    APP.create_rental
  when 6
    APP.list_rentals_by_person_id
  when 7
    puts 'Thank you for using this app!'
    exit 0
  else
    puts 'That is not a valid option'
  end
rescue Interrupt
  warn "\nProgram exited"
  exit 130
end

puts 'Welcome to School Library App!'

loop { main }
