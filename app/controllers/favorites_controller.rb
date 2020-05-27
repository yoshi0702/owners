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
    favorite = current_supporter.favorites.build(project: @project.id)
    favorite.save
    # 通知の作成
    @project.create_notification_favorite!(current_supporter)
    respond_to :js
  end

  def update
    
  end

  def destroy
    @project = Project.find(params[:project_id])
    favorite = current_supporter.favorites.find_by(article_id: @article.id)
    favorite.destroy
    respond_to :js
  end
end
