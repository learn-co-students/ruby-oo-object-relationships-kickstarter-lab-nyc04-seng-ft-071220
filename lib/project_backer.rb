class ProjectBacker

    attr_reader :project, :backer
    @@all = []

    def initialize(project_instance, backer_instance)
        @project = project_instance
        @backer = backer_instance
        @@all << self
    end

    def self.all
        @@all
    end

end
