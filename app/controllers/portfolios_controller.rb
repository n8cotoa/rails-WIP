class PortfoliosController < ApplicationController
  def index
    @title = "My Portfolio"
    @projects = Project.all
    @hobbies = Hobby.all
    @skills = Skill.all
  end

  def contact

  end
end
