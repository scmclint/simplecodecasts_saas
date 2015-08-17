class ProfilesController < ApplicationController
  before_action :authenticate_user!  
  before_action :only_current_user   # prevents cross-user profile actions
  
  def new
    @user = User.find( params[:user_id] )
    @profile = Profile.new
  end  # end of new action

  def create
    @user = User.find( params[:user_id] )
    @profile = @user.build_profile(profile_params)
    
    if @profile.save
      flash[:success] = "Profile Updated (into DB)"
      redirect_to user_path( params[:user_id] )
    else  # nope didn't save successfully
      render action: :new
    end  # end of if @profile.save
    
  end  # end of create action
  
  def edit
    @user = User.find( params[:user_id] )
    @profile = @user.profile
  end
  
  def update
    @user = User.find( params[:user_id] )
    @profile = @user.profile

    if @profile.update_attributes(profile_params)
      flash[:success] = "Profile edit update successful"
      redirect_to user_path( params[:user_id] )
    else
      flash[:fail] = "Profile NOT UPDATED"
      render action: :edit
    end
    
  end
  
  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :avatar, :job_title, :phone_number, :contact_email, :description)
    end  # end of profile_params
    
    def only_current_user
      @user = User.find( params[:user_id] )
      flash[:fail] = "Please login"
      redirect_to(root_url) unless @user == current_user
    end
end
