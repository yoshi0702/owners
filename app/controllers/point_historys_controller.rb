class PointHistorysController < ApplicationController
  before_action :authenticate_supporter!
  def index
  end

  def show
      @point_history = PointHistory.where(supporter_id: current_supporter.id)

  end

  def status_change
  end

  def new
      @point_history = BuyPoint.new
  end

  def edit
  end

  def create
        # プロジェクト詳細にてログインユーザーが支援フォーム入力!
        @point_history = PointHistory.new(point_history_params)
        if @point_history.point > current_supporter.point_historys.sum(:point)
            render :new
        else
            @point_history.supporter_id = current_supporter.id
            @point_history.project_id = params[:project_id]
            @point_history.point = params[:point_history][:point].to_i*-1
            @point_history.save!


            #####
            @project = Project.find(params[:project_id])
            @project.number_of_supporters = @project.number_of_supporters.to_i + 1
            # @project.number_of_supporters += 1
            # @project.number_of_supporters = @project.number_of_supporters + 1
            @project.total_support = @project.total_support.to_i + params[:point_history][:point].to_i
            @project.save!
            ######
            support_project = SupportProject.new(supporter_id: current_supporter.id,project_id: @project.id)
            support_project.save!
            redirect_to projects_path
        end
  end


  def update
  end

  def destroy
  end

  private
  def point_history_params
    params.require(:point_history).permit(:point)
  end
end
