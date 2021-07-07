class Project

    attr_accessor :title

    def initialize(title)
        @title=title
    end

    def add_backer(backer_inst)
        ProjectBacker.new(self, backer_inst)
    end

    def backers 
        backer_info=ProjectBacker.all.select do |project_info|
            project_info.project.title ==self.title
        end

        backer_info.map do |backers|
            backers.backer 
        end
    end

end
