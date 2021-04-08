class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "#{@user.name} has been created successfully."
      redirect_to root_path   
    else
      flash[:alert] = "Name field cannot be empty"
      render :new
    end
  end

  def show
    @user = user.find_by(id: session[:user_id]) if session[:user_id]
  end

  def edit
    
  end
  def destroy
    
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
