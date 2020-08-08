class Backer

    attr_reader :name

    def initialize(name)
        @name=name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        this_backer.map{|project| project.project}
    end

    def this_backer
        ProjectBacker.all.select{|projectbacker| projectbacker.backer == self}
    end
end