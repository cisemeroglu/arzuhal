class UsersController < ApplicationController

  def create
    @user=User.new(user_params)

    if @user.save
      redirect_to @user
    else
      redirect_to 'new'
    end

  end

  def index
  @users= User.all
  end
  def show
    @user=User.find(params[:id])
    @articles=@user.articles
  end

  def new
    @user=User.new
  end
  private
  def user_params
    params.require(:user).permit(:username, :fullname)
  end

  end

