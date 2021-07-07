require 'pry'

class ProjectBacker

    attr_reader :project, :backer
    @@all=[]
    def initialize (project, backer)
        @project=project
        @backer=backer
        @@all << self
    end

    def self.all
        @@all
    end

end


# book = Project.new('Ruby, Ruby, and More Ruby')
# magic = Project.new('Magic The Gathering Thing')
# karaoke = Project.new('Karaoke')
# party= Project.new('Party')
# steven = Backer.new('Steven')
# spencer = Backer.new('Spencer')
# meryl = Backer.new('Meryl')

# ProjectBacker.new(book,steven)
# ProjectBacker.new(magic, spencer)
# ProjectBacker.new(karaoke,meryl)
# ProjectBacker.new(party,steven)
# ProjectBacker.new(party,meryl)

# steven.backed_projects

# binding.pry
# 0
