class ProfilesController < ApplicationController
  # get '/profiles' do
  #   @profiles = profile.all
  #   erb :index
  # end
  def index
    @profiles = Profile.all
  end

  # get '/profiles/:id' do
  #   @profiles = profile.find(params[:id])
  #   erb :show
  # end
  def show
    @profile = Profile.find(params[:id])
  end

  # get '/profiles/:id/edit' do
  #    erb :edit
  # end
  def edit
    @profile = Profile.find(params[:id])
  end

  # put '/profiles/:id' do
  #   
  # end
  def update
    profile = Profile.find(params[:id])
    Profile.update(
      email: params[:profile][:email],
      role: params[:profile][:role]
      
    )

    # goes to show page
    redirect_to profile_path(profile)
  end

  # delete '/profiles/:id' do
  #   
  # end
  def destroy
    profile = profile.find(params[:id])
    profile.destroy
    # profile.destroy(params[:id])

    redirect_to profiles_path
  end

  # get '/profiles/new' do
  #   erb :new
  # end
  def new
    @profile = profile.new
  end

  # get '/profiles' do
  #   
  # end
  def create
    profile = profile.create(
      profilename: params[:profile][:profilename],
      password: params[:profile][:password]
    )

    # Profile.create(
    #   profile_id: profile.id
    # )

    session[:profile_id] = profile.id

    # redirect_to '/profiles/new'
    redirect_to profiles_path
  end
end
