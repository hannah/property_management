class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to owners_path, notice: "Owner Created!"
    else
      render 'new'
    end
  end

  def index
    @owners = Owner.all
  end

  private
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :company)
  end

end
