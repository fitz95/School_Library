require_relative 'app'

class Options
  def initialize
    @app = App.new
  end

  def options(option)
    case option
    when '1' then @app.list_of_books
    when '2' then @app.list_of_people
    when '3' then @app.person_info
    when '4' then @app.create_book
    when '5' then @app.create_rental
    when '6' then @app.list_rentals_by_person_id
    else
      puts 'That is not a valid option'
    end
  end
end
