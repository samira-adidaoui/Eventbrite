class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @first_name = params[:id]
    
  end

  def edit
    @user = (params[:id])
    
    
  end
end
