require './student'
require './teacher'
require './book'

class App
  def list_books(books)
    if books.length == 0
      puts 'No books registered so far.'
    else
      books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
    end
  end

  def list_people(people)
    if people.length == 0
      puts 'There are no people registered so far.'
    else
      people.each { |person| puts "[#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_opt = gets.chomp.to_i

    unless (1..2).include? person_opt
      puts 'Wrong option'
      return
    end

    print 'Name: '
    name = gets.chomp

    print 'Age: '
    age = gets.chomp.to_i

    case person_opt
    when 1
      print 'Has parent permission? [Y/N]: '
      permission = gets.chomp.downcase

      case permission
      when 'y'
        permission = true
      when 'n'
        permission = false
      else
        puts 'Wrong option'
        return
      end

      person = Student.new(age, name, parent_permission: permission)
    when 2
      print 'Specialization: '
      specialization = gets.chomp

      person = Teacher.new(specialization, age, name)
    end

    puts 'Person created successfully.'
    person
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)

    puts 'Book created successfully.'
    book
  end

  def create_rental(books, people)
    if books.length == 0
      puts 'No books registered so far.'
    elsif people.length == 0
      puts 'There are no people registered so far.'
    else
      puts 'Select a book from the following list by number:'
      books.each_with_index { |book, i| puts "#{i}) Title: \"#{book.title}\", Author: #{book.author}" }
      book_opt = gets.chomp.to_i

      puts "\nSelect a person from the following list by number (not ID):"
      people.each_with_index { |person, i| puts "#{i}) [#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
      people_opt = gets.chomp.to_i

      print "\nDate: "
      date = gets.chomp

      rental = Rental.new(date, books[book_opt], people[people_opt])      

      puts 'Rental created successfully.'
      return rental
    end
  end

  def list_rentals(rentals)
    print 'ID of person: '
    person_id = gets.chomp.to_i

    person_rentals = rentals.select { |rental| rental.person.id == person_id}

    if person_rentals.length == 0
      puts 'There are no rental records for this person.'
    else
      puts 'Rentals: '
      person_rentals.each { |rental| puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}" }
    end
  end
end
