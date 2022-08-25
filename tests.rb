require './person'
require './student'
require './classroom'
require './rental'
require './book'

p 'Student-Classroom tests'
p pedro = Student.new(501, 19, 'Pedro Salas')
p laura = Student.new(103, 21, 'Laura Ponce' )
p mairy = Student.new(207, 20, 'Mairy Calderón')

p class619 = Classroom.new(101)
p class619.students

p pedro.classroom
p class619.add_student(pedro)
p pedro.classroom
p pedro.classroom.label
p class619.students

p laura.classroom
p class619.add_student(laura)
p laura.classroom
p laura.classroom.label
p class619.students

p mairy.classroom
p class619.add_student(mairy)
p mairy.classroom
p mairy.classroom.label
p class619.students

p class619.students.count
p class619.students.first.name
p class619.students.first.age

p raul = Student.new(305, 23, 'Raúl Rivas')
p raul.classroom
p class619.students.count
p raul.classroom = class619
p raul.classroom

p class619.students.count
p class619.students.last.name
p class619.students.last.age

p "Many-to-many tests"
p miguel = Person.new('31', 'Miguel')
p julio = Person.new('29', 'Julio')
p manu = Person.new('35', 'Manuel')

p lab = Book.new('The Labyrinth of Solitude', 'Octavio Paz')
p termo = Book.new('Thermodynamics: An Engineering Approach', 'Yunus Cengel')

p rental_1 = Rental.new('2022-06-25', lab, miguel)
p rental_2 = Rental.new('2022-08-13', lab, julio)

p miguel.rentals.count
p miguel.rentals.map { |rental| rental.date }
p termo.rentals.count
p lab.rentals.count
p lab.rentals.map { |rental| rental.book.author}
p lab.rentals.map { |rental| rental.person.name}

p rental_3 = Rental.new('2022-07-18', termo, julio)
p rental_4 = Rental.new('2022-08-04', lab, manu)

p julio.rentals.count
p julio.rentals.map { |rental| rental.date }
p termo.rentals.count
p termo.rentals.map { |rental| rental.person.name }
p lab.rentals.count
p lab.rentals.map {|rental| rental.person.name }
