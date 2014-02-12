class UsersController < ApplicationController

  self.before_action :load_user, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to user_path @user
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path @user
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to "/"
  end

  private

    def load_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :date_of_birth, :sex, :facebook_link)
    end

end