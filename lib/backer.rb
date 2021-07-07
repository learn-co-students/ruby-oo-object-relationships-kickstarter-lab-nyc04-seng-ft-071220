require 'pry'

class Backer


    @@all=[]


    attr_accessor :name

    def initialize(name_arg)
        @name=name_arg
        @@all << self

    end

    def self.all
        @@all
    end

    def back_project(project)
      ProjectBacker.new(project, self)
    end


    def backed_projects
    project_back=ProjectBacker.all.select do |back|
        back.backer==self
    end
    project_back.map do |back|
        back.project
    end
end
end