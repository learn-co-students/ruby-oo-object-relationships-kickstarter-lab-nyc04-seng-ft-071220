require 'pry'
class Project

    attr_reader :title

    def initialize(title)
        @title=title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        this_project.map{|project| project.backer}
    end

    def this_project
        ProjectBacker.all.select{|projectbacker| projectbacker.project == self}
    end
end