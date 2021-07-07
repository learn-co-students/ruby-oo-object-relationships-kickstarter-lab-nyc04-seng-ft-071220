require_relative '../lib/backer'
require_relative '../lib/project_backer'

class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_array = ProjectBacker.all.select do |project_list| 
            project_list.project == self
        end
        backer_array.map do |project_list|
            project_list.backer
        end
    end

end