class PointHistory < ApplicationRecord
	belongs_to :project, optional: true
	belongs_to :supporter
end
