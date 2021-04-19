class SessionsController < ApplicationController
  def new
    
  end


  def create
    reader = Reader.find_by(username: params[:session][:username])
    if reader && reader.authenticate(params[:session][:password])
      session[:reader_id] = reader.id
        redirect_to reader
    else
      render 'new'
    end
  end

  def destroy
   session.delete :reader_id
   redirect_to login_path
  end

  
end
