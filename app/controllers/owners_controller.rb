class OwnersController < ApplicationController
  def index
  end

  def show
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
end
