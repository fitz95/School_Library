require_relative 'Person'

class Student < Person
  def initialize(classroom)
    super(id, age, parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
