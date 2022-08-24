require './person_decorator'

class CapitalizeDecorator < PersonDecorator
  def correct_name
    @nameable.correct_name.upcase
  end
end

class TrimmerDecorator < PersonDecorator
  def correct_name
    @nameable.correct_name[0..9] # .slice(0, 10) can be used instead of [0..9]
  end
end
