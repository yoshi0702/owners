class FavoritesController < ApplicationController
  before_action :authenticate_supporter!

  def create
    @project = Project.find(params[:project_id])
    favorite = current_supporter.favorites.build(project_id: @project.id)
    favorite.save
    respond_to :js
  end


  def destroy
    @project = Project.find(params[:project_id])
    favorite = current_supporter.favorites.find_by(project_id: @project.id)
    favorite.destroy
    respond_to :js
  end
end
