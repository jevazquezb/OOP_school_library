require './person'

class Teacher < Person
  attr_reader :specialization

  def initialize(specialization, age, name = 'Unknown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
