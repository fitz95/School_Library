require_relative 'Decorator'
class TrimmerDecorator < Decorator
  def correct_name
    @name.correct_name[0, 10]
  end
end
