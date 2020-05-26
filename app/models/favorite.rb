class Favorite < ApplicationRecord

	belongs_to :supporter
    belongs_to :project
end
