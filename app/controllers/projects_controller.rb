class ProjectsController < ApplicationController
  before_action :authorize_admin
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(hobbies_params)
    if @project.save
      flash[:notice] = "Project successfully added."
      redirect_to admins_path
    else
      flash[:alert] = "Project was not saved, please check submission"
      redirect_to new_project
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to admins_path
    else
      redirect_to edit_project_path(@project)
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admins_path
  end


private
  def project_params
    params.require(:project).permit(:name, :description, :image)
  end


end
