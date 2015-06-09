class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end
  
   def create
     @new_signup = Signup.create(signup_params)
     redirect_to '/pages/thanks'
  end
  
  private 
  
  def signup_params
    params.require(:signup).permit(:email)
	end
  
 
  
  
end
