class Project < ApplicationRecord
	attachment :advertising_image

	belongs_to :owner
	belongs_to :area


	has_many :support_projects
	has_many :projects, through: :support_projects
	has_many :favorites, dependent: :destroy

	# いいねしているか判定する
  def favorited_by?(supporter)
    favorites.where(supporter_id: supporter.id).exists?
  end
end
