class Project < ApplicationRecord
	attachment :advertising_image

	belongs_to :owner
	belongs_to :area
end
