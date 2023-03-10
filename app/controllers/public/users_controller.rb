class Public::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(user.id), notice: 'ユーザー情報を編集しました。'
    else
      render "edit"
    end
  end
  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
