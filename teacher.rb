class Teacher < Person
  def initialize(specialization)
    super(id, age, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
