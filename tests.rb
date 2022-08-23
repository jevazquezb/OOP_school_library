require './person'
require './student'
require './teacher'
require './concrete_decorators'

person = Person.new(22, 'maximilianus')
p person
p person.correct_name

capitalized_person = CapitalizeDecorator.new(person)
p capitalized_person
p capitalized_person.correct_name

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
p capitalized_trimmed_person
p capitalized_trimmed_person.correct_name
