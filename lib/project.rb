require 'pry'
class Project

    attr_reader :title 

    def initialize(title)
        @title = title
    end 
 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        # binding.pry
        pb = ProjectBacker.all.select do |projects|
            projects.project == self
        end 
        # binding.pry
        pb.map(&:backer)
    end 

end 
