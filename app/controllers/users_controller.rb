class UsersController < ApplicationController

  def index
    @users = User.all
  end


  def create
    @user = User.new(params[:user].permit(:email, :name, :birth_date))

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end


  def new
    @user = User.new
  end


  def edit
    @user = User.find(params[:id])
  end


  def show
    @user = User.find(params[:id])
    @participants = @user.participants
  end


  def update
    @user = User.find(params[:id])
    if @user.update(params[:user].permit(:email, :name, :birth_date))
      redirect_to @user
    else
      render 'edit'
    end
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

end
