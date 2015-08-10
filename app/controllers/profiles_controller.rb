class ProfilesController < ApplicationController

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
  
    
  
  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
    end  # end of profile_params
    
end
