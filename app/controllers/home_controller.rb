class HomeController < ApplicationController

	def top
		@projects = Project.all
		# クラスをDateに無理くり変換
		#  Date.new(@project.created_at.utc.year, @project.created_at.utc.month, @project.created_at.utc.day) + @project.post_period.to_i
		# c = (b - Date.today).to_i



		# @supportersSum = Supporter.where(project_id: @project.id).count
	end



    private
	def project_params
    params.require(:project).permit(:area_id)
  	end
end
