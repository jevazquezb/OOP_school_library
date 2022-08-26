require './app'

def main
  app = App.new
  puts 'Welcome to School Library App!'

  loop do
    puts "\nPlease choose an option by entering a number:
    1 - List all books.
    2 - List all people.
    3 - Create a person.
    4 - Create a book.
    5 - Create a rental.
    6 - List all rentals for a given person id.
    7 - Exit."

    print "\nOption: "
    opt = gets.chomp.to_i

    opt == 7 ? break : app.select_opt(opt)
  end
  puts 'Thank you for using this app!'
end

main
