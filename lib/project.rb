class Project

    attr_accessor :title

    def initialize(title_par)
        @title = title_par
    end

    def add_backer(backer_ins)
        ProjectBacker.new(self, backer_ins)
    end

    def all_backers
        ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end
    end

    def backers
        self.all_backers.map do |project_backer|
            project_backer.backer
        end
    end

end

#What I Need to Do:
# write a method called `add_backer` that takes in a Backer instance
# and creates a `ProjectBacker` using the Backer instance & current Project instance.

#`backers`, that returns all backers_ associated with this Project instance.