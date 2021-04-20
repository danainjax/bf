class SessionsController < ApplicationController
  def new
    
  end

  def home
  end

  def create
    reader = Reader.find_by(username: params[:session][:username])
    if reader && reader.authenticate(params[:session][:password])
      session[:reader_id] = reader.id
        redirect_to reader
    else
      flash[:message] = "Invalid username or password"
      redirect_to "/login"
    end
  end

  def destroy
   session.delete :reader_id
   redirect_to login_path
  end

  
end
