require_relative 'Decorator'
class CapitalizeDecorator < Decorator
  def correct_name
    @name.correct_name.capitalize
  end
end
