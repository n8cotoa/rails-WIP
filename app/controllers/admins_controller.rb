class AdminsController < ApplicationController
  before_action :authorize_admin
  def index
    @title = "Admin Portal"
    @skills = Skill.all
    @hobbies = Hobby.all
    @projects = Project.all
  end

end
