class Backer
    attr_reader :name, :backer

    def initialize(name)
        @name = name
        @backer = backer
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       yay = ProjectBacker.all.select{|proj| proj.backer == self}
       yay.collect{|proj| proj.project}
    end


end