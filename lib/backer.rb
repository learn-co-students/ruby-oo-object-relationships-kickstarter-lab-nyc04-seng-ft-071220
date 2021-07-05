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
        joiners_array = ProjectBacker.all.select {|joiner| 
            joiner.backer == self
        }
        # binding.pry
        joiners_array.map { |joiner|
            joiner.project
        }

    end
    
end