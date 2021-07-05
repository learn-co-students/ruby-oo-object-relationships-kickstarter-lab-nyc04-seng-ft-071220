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
        backers_array = ProjectBacker.all.select {|joiner|
        joiner.project == self
    }
        # binding.pry
        backers_array.map {|joiner|
        joiner.backer
    }
    end
end