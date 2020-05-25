class ProjectsController < ApplicationController
  def index
    @projects = Project.all.page(params[:page]).per(10)
    @areas = Area.all
  end

  def show
   @project = Project.find(params[:id])
   @area = Area.find(@project.area_id)
   #@remaining_day = (Date.new(@project.created_at.utc.year, @project.created_at.utc.month, @project.created_at.utc.day) + @project.post_period.to_i - Date.today).to_i
   @supportersSum = PointHistory.where(project_id: @project.id).group(:supporter_id).count(:supporter_id)
   @point_history = PointHistory.new

  end

  def new
    @project = Project.new
    @areas = Area.all
  end

  def edit
  end

  def create
    @project = current_owner.projects.build(project_params)
    @project.number_of_supporters = 0
    @project.publication_status = true
    @project.total_support = 0
    if @project.save
      # binding.pry
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
                             :deadline,:target_amount,:total_support)
  end

  def area_id
    @project.area
  end
end
