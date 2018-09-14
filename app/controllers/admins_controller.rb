class AdminsController < ApplicationController
  before_action :authorize_admin
  def index
    @skills = Skill.all
    @hobbies = Hobby.all
  end

end
