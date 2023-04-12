class Teacher < Person
    def initialize(classroom)
        super(id, age, name = "Unknown", parent_permission: true, specialization)
        @specialization = specialization
    end
    
    def can_use_services
        true
    end
end