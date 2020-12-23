class Backer

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    ProjectBacker.all.select { |p_b| p_b.backer == self }.map { |p| p.project }
  end
end