require './person'
require './student'
require './teacher'

mairy = Person.new(15, 'Mairy')
p mairy
p mairy.can_use_services?

mairy = Person.new(15, 'Mairy', parent_permission: false)
p mairy
p mairy.can_use_services?

mairy = Person.new(18, 'Mairy', parent_permission: false)
p mairy
p mairy.can_use_services?

roberto = Student.new(601, 17, 'Roberto')
p roberto
p roberto.play_hooky
p roberto.can_use_services?

roberto = Student.new(601, 17, 'Roberto', parent_permission: false)
p roberto
p roberto.can_use_services?

roberto = Student.new(601, 20, 'Roberto', parent_permission: false)
p roberto
p roberto.can_use_services?

teacher = Teacher.new('Physics', 43)
p teacher
p teacher.can_use_services?
