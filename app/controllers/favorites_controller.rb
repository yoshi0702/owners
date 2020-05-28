class FavoritesController < ApplicationController
  before_action :authenticate_supporter!

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @project = Project.find(params[:project_id])
    favorite = current_supporter.favorites.build(project_id: @project.id)
    favorite.save
    respond_to :js
  end

  def update
    
  end

  def destroy
    @project = Project.find(params[:project_id])
    favorite = current_supporter.favorites.find_by(project_id: @project.id)
    favorite.destroy
    respond_to :js
  end
end
