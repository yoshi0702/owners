class OwnersController < ApplicationController
  def index
  end

  def show
      @owner = Owner.find(params[:id])
  end

  def new
      @owner = Owner.new
  end

  def edit
  end

  def create
    @owner = PostImage.new(post_image_params)
    @owner.owner_id = current_owner.id
    @owner.save
    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  private
  def owner_params
    params.require(:owner).permit(:surname, :name, :kana_surname, :kana_name, :postal_code, :address, :phone_number, :email, :account_status)
  end

end
