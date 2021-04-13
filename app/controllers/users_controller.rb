class UsersController < ApplicationController
  before_action :logged_in?, except: [:index]
  before_action :set_user, only: %i[edit show destroy update]
  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.xml { render xml: @users }
      format.json { render json: @users }
    end
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
      flash[:alert] = 'Name field cannot be empty'
      render :new
    end
  end

  def show
  end

  def edit; end

  def destroy; end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def set_user
    user.find_by(id: session[:user_id]) if session[:user_id]
  end
end
