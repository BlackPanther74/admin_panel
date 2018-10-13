class ProfilesController < ApplicationController
  before_action :authorize
  
  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    profile = Profile.find(params[:id])
    profile.update(
      email: params[:profile][:email],
      role: params[:profile][:role],
      status: params[:profile][status],
      user_id: user.id
    )

    redirect_to profile_path(profile)
  end

  def destroy
    profile = Profile.find(params[:id])
    Profile.destroy

    respond_to do |format|
      format.html
      format.js {render '/profiles/destroy.js.erb'}
    end

  end

  def new
    @profile = Profile.new
  end

  def create
    profile = Profile.create(
      email: params[:profile][:email],
      role: params[:profile][:role],
      status: params[:profile][status],
      user_id: user.id
    )

    redirect_to profile_path
  end
end
