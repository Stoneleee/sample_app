class SessionsController < ApplicationController
  def new
  end

  def create
	  user = User.find_by(email: params[:session][:email].downcase)
	  if user && user.authenticate(params[:session][:password])
		  log_in user
		  redirect_to user
	  else
		  flash.now[:danger] = '邮箱地址或者密码错误'
	          render 'new'
	  end
  end

  def destroy
  end

end
