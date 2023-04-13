require_relative 'decorator'
class CapitalizeDecorator < Decorator
  def correct_name
    @name.correct_name.capitalize
  end
end
