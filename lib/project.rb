require 'pry'

class Project

    attr_reader :title

    def initialize(title_param)
        @title = title_param 
    end

    def add_backer(backer_param)
        ProjectBacker.new(self, backer_param)
    end

    def backers 
        pb_joiner_array = ProjectBacker.all.select { |pb_joiner| pb_joiner.project == self}
        pb_joiner_array.map { |project_instance| project_instance.backer}
    end
    
end