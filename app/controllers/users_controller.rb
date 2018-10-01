class UsersController < ApplicationController
  # get '/users' do
  #   @users = User.all
  #   erb :index
  # end
  def index
    @users = User.all
  end

  # get '/users/:id' do
  #   @users = User.find(params[:id])
  #   erb :show
  # end
  def show
    @user = User.find(params[:id])
  end

  # get '/users/:id/edit' do
  #    erb :edit
  # end
  def edit
    @user = User.find(params[:id])
  end

  # put '/users/:id' do
  #   
  # end
  def update
    user = User.find(params[:id])
    user.update(
      username: params[:user][:username],
      password: params[:user][:password]
    )

    # goes to show page
    redirect_to user_path(user)
  end

  # delete '/users/:id' do
  #   
  # end
  def destroy
    user = User.find(params[:id])
    user.destroy
    # User.destroy(params[:id])

    redirect_to users_path
  end

  # get '/users/new' do
  #   erb :new
  # end
  def new
    @user = User.new
  end

  # get '/users' do
  #   
  # end
  def create
    user = User.create(
      username: params[:user][:username],
      password: params[:user][:password]
    )

    # Profile.create(
    #   user_id: user.id
    # )

    session[:user_id] = user.id

    # redirect_to '/users/new'
    redirect_to users_path
  end
end
