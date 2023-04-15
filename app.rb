#create first an App.rb file which will be used as console app entry-point and have methods

#required files
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'
require_relative 'person'

class App
    def initialize
        @books = []
        @people = []
        @rentals = []
    end

    def list_of_books
        return p 'No books found' if @books.empty?

        @books.each do |book|
            puts "Title: \"#{book.title}\", Author: #{book.author}"
        end
    end

    def list_of_people
        return p 'No people found' if @people.empty?

        @people.each do |person|
            p "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
        end
    end

    def create_person(name, age, type, parent_permission: false, specialization: '')
        if type == 'student'
          @people << Student.new(age, nil, name: name, parent_permission: parent_permission)
    
        elsif type == 'teacher'
          @people << Teacher.new(age, specialization, name: name)
        else
          puts 'Invalid type'
          return
        end
    
        puts 'Person created successfully'
    end

    def create_book
        print 'Title: '
        title = gets.chomp
    
        print 'Author: '
        author = gets.chomp
    
        @books << Book.new(title, author)
        puts 'Book created successfully'
    end

    def create_rental
        puts 'Select a book from the following list by number'
        @books.each_with_index do |book, index|
          puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
        end
    
        book_index = gets.chomp.to_i
    
        puts
    
        puts 'Select a person from the following list by number (not id)'
        @people.each_with_index do |person, index|
          puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
        end
    
        person_index = gets.chomp.to_i
    
        puts
    
        print 'Date: '
        date = gets.chomp
    
        @rentals << Rental.new(date, @books[book_index], @people[person_index])
        puts 'Rental created successfully'
    end

    def list_rentals_by_person_id
        print 'ID of person: '
        id = gets.chomp

        puts 'Rentals:'
        puts @rentals
        @rentals.each do |rental|
        puts rental.person.id.class
        puts id.class
        puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}" if rental.person.id== id
        end
end