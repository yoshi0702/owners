class SupportersController < ApplicationController
  before_action :authenticate_supporter!
  def index
  end

  def show
      supporter_project = SupportProject.where(supporter_id: current_supporter.id)
      @projects = Project.find(supporter_project.pluck(:project_id))
      @supporter_counts = {}
      @projects.each do |project|
        supporter_count = SupportProject.where(project_id: project.id).group(:supporter_id).pluck(:supporter_id).count
        @supporter_counts.store(project.id,supporter_count)
      end
  end



  def new
  end

  def edit
    @supporter = Supporter.find(current_supporter.id)
  end

  def create
  end

  def update
    @supporter = Supporter.find(current_supporter.id)
        if @supporter.update(supporter_params)
           redirect_to supporter_path
        else
            render :edit
        end
  end

  def destroy
  end

  private
  def supporter_params
    params.require(:supporter).permit(:surname, :name, :kana_surname, :kana_name, :email, :postal_code, :address, :phone_number, :profire_image,)
  end
end
