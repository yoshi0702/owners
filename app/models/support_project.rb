class SupportProject < ApplicationRecord
	belongs_to :project
	belongs_to :supporter
end
