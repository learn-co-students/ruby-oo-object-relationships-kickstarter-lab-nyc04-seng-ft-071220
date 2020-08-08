
class ProjectBacker

    attr_reader :project, :backer 

    @@all = []

    def initialize(project_param, backer_param)
        @project = project_param
        @backer = backer_param
        @@all << self
    end

    def self.all 
        @@all 
    end
    
end