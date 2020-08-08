
class Backer 

    attr_reader :name 

    def initialize(name_param)
        @name = name_param 
    end

    def back_project(project_param)
        ProjectBacker.new(project_param, self)
    end

    def backed_projects
        pb_joiner_array = ProjectBacker.all.select { |pb_joiner| pb_joiner.backer == self}
        pb_joiner_array.map { |project_instance| project_instance.project}
    end

end