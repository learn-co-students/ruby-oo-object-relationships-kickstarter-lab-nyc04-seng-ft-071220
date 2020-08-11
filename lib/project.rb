require 'pry'

class Project

    @@all=[]

    attr_accessor :title

    def initialize(title)
        @title=title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
      ProjectBacker.new(self,backer)
    end

    def backers
     projec_inst=ProjectBacker.all.select do |proj|
        proj.project ==self
     end
     projec_inst.map do |proj|
        proj.backer
     end
    end
end
