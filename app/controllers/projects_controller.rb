class ProjectsController < ApplicationController
  def index
  end

  def show
   @project = Project.find(params[:id])
   @supportersSum = Supporter.where(project_id: @project.id).group(:project_id).count
  end

  def new
    @project = Project.new
    @areas = Area.all
  end

  def edit
  end

  def create
    @project = Project.new(Project_params)
    @areas = Area.all
    if @Project.save
       redirect_to Project_url(@Project)
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
  def product_params
    params.require(:project).permit(:number_of_supporters,
                             :project_title, :summary_sentence,
                             :area, :advertising_image_id,
                             :text,:post_period,:target_amount,:total_support)
  end
end
