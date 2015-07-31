class ProfilesController < ApplicationController
  public

  def new
    # Identify the user
    @user = User.find(params[:user_id])

    # Profile add form show up on page asscociation by routes.rb loop with user
    @profile = @user.build_profile
    
    # allow user to fill out their own information
    # save the information or cancel to avoid save
    # 

  end
  
end
