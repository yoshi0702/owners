class Supporter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profire_image
  has_many :buy_points
  has_many :point_historys


  has_many :support_projects
  has_many :projects, through: :support_projects
  has_many :favorites, dependent: :destroy

  def full_name
    self.surname + self.name
  end
end
