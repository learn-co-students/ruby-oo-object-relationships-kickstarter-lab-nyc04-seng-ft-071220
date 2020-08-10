class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        joiner =  ProjectBacker.all.select{|backers|backers.backer==self}

        joiner.map{|projects|projects.project}
    end
    
end