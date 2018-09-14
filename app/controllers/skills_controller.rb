class SkillsController < ApplicationController
  before_action :authorize_admin
  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skills_params)
    if @skill.save
      flash[:notice] = "Skill successfully added."
      redirect_to admins_path
    else
      flash[:alert] = "Skill was not saved, please check submission"
      redirect_to new_skill(@admin)
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to admins_path
  end


private
  def skills_params
    params.require(:skill).permit(:name, :experience)
  end

end
