class SessionController < ApplicationController

  def new

  end

  def create
    # authenticate
    # check whether info matches database
    # if yes => create a session
    # if not => throw error, render :new

    user = User.find_by(email: params[:email])
    if user.password == params[:password]
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

    def current_user
      @_current_user ||= session[:current_user_id] &&
      User.find_by(id: session[:current_user_id])
    end

end