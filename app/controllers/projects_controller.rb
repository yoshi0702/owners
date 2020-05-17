class ProjectsController < ApplicationController
  def index
    @projects = Project.all.page(params[:page]).per(10)
    @areas = Area.all
  end

  def show
   @project = Project.find(params[:id])
   @area = Area.find(@project.area_id)
   # binding.pry
   @supportersSum = Supporter.where(project_id: @project.id).count
  end

  def new
    @project = Project.new
    @areas = Area.all
  end

  def edit
  end

  def create
    @project = current_owner.projects.build(project_params)
    @project.number_of_supporters = 1
    @project.publication_status = true
    @project.post_period = 60
    @project.total_support = 60
    @areas = Area.all
    if @project.save
       redirect_to project_url(@project)
    else
      render 'new'
    end
  end



  def update
  end

  def destroy
  end

  private
  def project_params
    params.require(:project).permit(:number_of_supporters,
                             :project_title, :summary_sentence,
                             :advertising_image,:text,:area_id,
                             :post_period,:target_amount,:total_support)
  end

  def area_id
    @project.area
  end
end
