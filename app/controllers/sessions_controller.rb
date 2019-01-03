class SessionsController < ApplicationController
  def new
  end

  def create
    user = BlogUser.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to new_path
    else
      flash[:danger] = "Error! Invalid credentials"
      render 'new'
    end
  end

  def destroy

  end
end
