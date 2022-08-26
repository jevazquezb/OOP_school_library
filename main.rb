require './app'

def main
  app = App.new()

  puts 'Welcome to School Library App!'

  repeat = true
  arr_books = []
  arr_people = []
  arr_rentals = []

  while repeat
    msg = "\nPlease choose an option by entering a number:
    1 - List all books.
    2 - List all people.
    3 - Create a person.
    4 - Create a book.
    5 - Create a rental.
    6 - List all rentals for a given person id.
    7 - Exit.";

    puts msg
    print "\nOption: "
    opt = gets.chomp.to_i

    case opt
    when 1
      app.list_books(arr_books)                
    when 2
      app.list_people(arr_people)    
    when 3
      person = app.create_person()
      arr_people.push(person) if person != nil
    when 4
      book = app.create_book()
      arr_books.push(book) if book != nil
    when 5
      rental = app.create_rental(arr_books, arr_people)
      arr_rentals.push(rental) if rental != nil
    when 6
      app.list_rentals(arr_rentals)
    else
      puts "Thank you for using this app!"
      return
    end
  end
end

main()