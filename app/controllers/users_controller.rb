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
    redirect_to root_path
  end
  
  def destroy
    User.find(params[:id]).destroy
    redirect_to root_path
  end
end
