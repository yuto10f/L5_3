class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    upass = BCrypt::Password.create(params[:pass])
    user = User.new(uid: params[:uid],pass: upass)
    user.save
    redirect_to users_path
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/'
  end
end
