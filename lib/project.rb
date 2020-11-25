class Project
    attr_reader :title, :backer

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        cool = ProjectBacker.all.select{|proj| proj.project == self}
        cool.collect{|x| x.backer}
    end


end