class AdminsController < ApplicationController

  def index
    @users = User.all
  end

  def edit
    @user = User.find_by id: params[:id]
    if @user.admin?
      @user.update admin:false
      flash[:notice] = "Revoked #{@user.first_name} admin!"
    else
      @user.update admin:true
      flash[:notice] = "Maked #{@user.first_name} admin!"
    end
    redirect_to admins_path
  end

end
