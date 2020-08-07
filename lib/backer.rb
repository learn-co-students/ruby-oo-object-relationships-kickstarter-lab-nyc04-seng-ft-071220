require_relative '../lib/project'
require_relative '../lib/project_backer'

class Backer

    attr_reader :name
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_array = ProjectBacker.all.select do |project_list|
            project_list.backer == self
        end
        project_array.map do |project_list|
            project_list.project
        end
    end

end