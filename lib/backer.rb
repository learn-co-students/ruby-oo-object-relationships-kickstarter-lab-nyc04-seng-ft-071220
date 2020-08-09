require_relative 'project_backer'
require 'pry'

class Backer

    attr_accessor :name

    def initialize(name_par)
        @name = name_par
    end

    def back_project(project_ins)
        ProjectBacker.new(project_ins, self)
    end

    def all_projects
        ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end
    end

    def backed_projects
        self.all_projects.map do |project_backer|
            project_backer.project
        end
    end

end

#What I Need to Do:
#write an instance method called `back_project` that takes in a Project
#instance. This method should create a `ProjectBacker` instance using the
#provided Project instance and the current Backer instance

#the final step for the Backer class is to build an instance method 
#that returns all the projects associated with _this Backer instance.