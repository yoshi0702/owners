class OwnersController < ApplicationController
  before_action :authenticate_owner!
  def index
  end

  def show
      @owner = Owner.find(current_owner.id)
      @projects = Project.find[:owner_id.current_owner.id]
  end

  def new
      @owner = Owner.new
  end

  def edit
      @owner = Owner.find(current_owner.id)
  end

  def create
    @owner = PostImage.new(post_image_params)
    @owner.save
    redirect_to root_path
  end

  def update
      @owner = Owner.find(current_owner.id)
        if @owner.update(owner_params)
           redirect_to owner_path
        else
            render :edit
        end
  end

  def destroy
  end

  private
  def owner_params
    params.require(:owner).permit(:surname, :name, :kana_surname, :kana_name, :postal_code, :address, :phone_number, :email, :account_status)
  end

end
