class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:name])
    if user.present?
      session[:user_id] = user.id
      flash[:notice] = 'Logged in successfully.'
      redirect_to new_article_path
    else
      flash[:alert] = 'Invalid Credential.'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'logged out.'
    redirect_to log_in_path
  end
end
