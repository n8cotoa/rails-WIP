class PortfoliosController < ApplicationController
  def index
    @title = "Nate Cottle"
    @subtitle = 'Junior Web Developer'
    @projects = Project.all
    @hobbies = Hobby.all
    @skills = Skill.all
  end

  def contact

  end
end
