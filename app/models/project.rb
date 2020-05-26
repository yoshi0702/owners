class Project < ApplicationRecord
	attachment :advertising_image

	belongs_to :owner
	belongs_to :area


	has_many :support_projects
	has_many :projects, through: :support_projects
	has_many :favorites, dependent: :destroy
end
