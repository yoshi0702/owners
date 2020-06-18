class HomeController < ApplicationController

	def top
		@projects = Project.where("deadline >= '#{Date.today}'").order(deadline: 'desc')
		# クラスをDateに無理くり変換
		# @remaining_days = (Date.new(project.created_at.utc.year, project.created_at.utc.month, project.created_at.utc.day) + project.post_period.to_i - Date.today).to_i
		# @remaining_days = {}
	 #    @projects.each do |project|
	 #        remaining_day = (Date.new(project.created_at.utc.year, project.created_at.utc.month, project.created_at.utc.day) + project.post_period.to_i - Date.today).to_i
	 #        if remaining_day.to_i <= 0
	 #           project.update(publication_status: false)
	 #        end
	 #        @remaining_days.store(project.id,remaining_day)
  #     	end
	end



    private
	def project_params
    params.require(:project).permit(:area_id)
  	end
end
