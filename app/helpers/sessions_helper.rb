module SessionsHelper
	# 登入指定的用户
	def log_in(user)
		session[:user_id] = user.id
	end

	# 返回当前登陆的用固话
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def logged_in?
		!current_user.nil?
	end
end
