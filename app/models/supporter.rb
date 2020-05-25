class Supporter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profire_image
  has_many :buy_points
  has_many :point_historys

  def full_name
    self.surname + self.name
  end
end
