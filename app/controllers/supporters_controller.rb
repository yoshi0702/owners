class SupportersController < ApplicationController
  before_action :authenticate_supporter!
  def index
  end

  def show
      @favoriteprojects = current_supporter.favorites
      @projects = current_supporter.projects

  end



  def new
  end

  def edit
    @supporter = Supporter.find(current_supporter.id)
  end

  def create
  end

  def update
      @supporter = Supporter.find(current_supporter.id)
        if @supporter.update(supporter_params)
           redirect_to supporter_path
        else
            render :edit
        end
  end

  def destroy
  end

  private
  def supporter_params
    params.require(:supporter).permit(:surname, :name, :kana_surname, :kana_name, :email, :postal_code, :address, :phone_number, :profire_image,)
  end
end
