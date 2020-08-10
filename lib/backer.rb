require 'pry'
class Backer

    attr_reader :name
    def initialize(name)
        @name = name
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # binding.pry
       projects =  ProjectBacker.all.select do |project|
            project.backer == self
        end 
        # binding.pry
        projects.map(&:project)
    end 
        
end 
