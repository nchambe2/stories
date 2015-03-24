class SignupsController < ApplicationController

  def new
  	@signup = Signup.new
  end
  
   def create
    @signup = Signup.new(signup_params)
    if @signup.save
      redirect_to(:controller => 'pages', :action => 'thankyou')
    else
      render('new')
    end
  end

  private
  
 def sigunup_params
  	params.require(:name).permit(:name, :email)
  end

end
