require_relative 'Nameable'
require_relative 'Person'

class Decorator < Nameable
  def initialize(name)
    super()
    @name = name
  end

  def correct_name
    @name.correct_name
  end
end
