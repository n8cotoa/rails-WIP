class HobbiesController < ApplicationController
  before_action :authorize_admin
  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = Hobby.new(hobbies_params)
    if @hobby.save
      flash[:notice] = "Hobby successfully added."
      redirect_to admins_path
    else
      flash[:alert] = "Hobby was not saved, please check submission"
      redirect_to new_hobby_path
    end
  end

  def edit
    @hobby = Hobby.find(params[:id])
  end

  def update
    @hobby = Hobby.find(params[:id])
    if @hobby.update(hobbies_params)
      redirect_to admins_path
    else
      redirect_to edit_hobby_path(@hobby)
    end
  end

  def destroy
    @hobby = Hobby.find(params[:id])
    @hobby.destroy
    redirect_to admins_path
  end


private
  def hobbies_params
    params.require(:hobby).permit(:name, :description, :image)
  end

end
