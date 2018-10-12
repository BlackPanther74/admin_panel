class UsersController < ApplicationController
  # before_action :authorize, except: [:new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])

    user.update(user_params)

    redirect_to user_path(user)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    redirect_to users_path
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    user.email.downcase!

    if user.save
      flash[:notice] = "Account created successfully"
      redirect_to root_path
    else
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
      render :new
    end

    Profile.create(
      user_id: user.id
    )

    session[:user_id] = user.id

    # redirect_to '/users/new'
  end

  private 

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
