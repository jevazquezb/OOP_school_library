require './app_methods'

class App
  attr_accessor :arr_books, :arr_people, :arr_rentals

  def initialize
    @arr_books = []
    @arr_people = []
    @arr_rentals = []
  end

  include AppMethods

  # rubocop:disable Metrics/CyclomaticComplexity
  def select_opt(option)
    case option
    when 1
      list_books(arr_books)
    when 2
      list_people(arr_people)
    when 3
      person = create_person
      @arr_people.push(person)
    when 4
      book = create_book
      @arr_books.push(book)
    when 5
      rental = create_rental(arr_books, arr_people)
      @arr_rentals.push(rental) unless rental.nil?
    when 6
      list_rentals(arr_rentals)
    else
      puts 'Oops! Wrong choice. Select a number from 1 to 7.'
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
