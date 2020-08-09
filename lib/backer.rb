require 'pry'
class Backer

    attr_accessor :name
    def initialize(name)
        @name=name
    end

    def back_project (proj_inst)
        ProjectBacker.new(proj_inst,self)
    end

    def backed_projects
        backed_project=ProjectBacker.all.select do |project_info|
            project_info.backer.name ==self.name
        end

        backed_project.map do |project_info|
            project_info.project
        end
    end

end

# binding.pry
# 0