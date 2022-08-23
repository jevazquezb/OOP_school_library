require './person'
require './student'
require './teacher'
require './concrete_decorators'

person = Person.new(22, 'maximilianus')
p person
p person.correct_name

capitalizedPerson = CapitalizeDecorator.new(person)
p capitalizedPerson
p capitalizedPerson.correct_name

capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
p capitalizedTrimmedPerson
p capitalizedTrimmedPerson.correct_name
