class ProjectsController < ApplicationController
  def index

    @areas = Area.all
    if params[:area_id]
      @area = Area.find(params[:area_id])
      @projects = Project.where(area_id: @area.id)
    else
      @projects = Project.all
    end

    # @projects = Project.all.page(params[:page]).per(10)
    # @areas = Area.all
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
    @project = Project.find(params[:id])
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
      @project = Project.find(params[:id])
        if @project.update(project_params)
           redirect_to project_path
        else
            render :edit
        end
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
