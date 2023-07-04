class SessionsController < ApplicationController
  skip_before_action :authorized
  skip_before_action :protect_from_forgery, raise: false
  
  def new 
  end

  def home #root route
  end

  def omniauth
   
    reader = Reader.find_or_create_by(email: auth["info"]["email"]) do |r|

     
      r.username = auth[:info][:name]
      r.email = auth[:info][:email]
      r.password = SecureRandom.hex(6)
      if auth[:info][:image]
        r.omni_pic = auth[:info][:image]
      else 
        r.omni_pic = auth[:info][:picture]
        end
    end 
  
    if reader.valid?
      session[:reader_id] = reader.id
      flash[:message] = "You have successfully logged in."
      redirect_to reader
    else
      flash[:message] = "Unsuccessful login. Please try your password again or log in with another provider."
      redirect_to login_path
    end
  end


  #this is logging in
  def create
    reader = Reader.find_by(username: params[:username])
    #finds the user by username key in the params
    if reader && reader.authenticate(params[:password])
      #if the reader username is found in the params and the password authenticates...
      session[:reader_id] = reader.id
      #then create a new key in sessions hash, setting it equal to existing user's id
        redirect_to reader
    else
      flash[:message] = "Invalid username or password"
      render :new
    end
  end

  def guest_login

    reader = Reader.find_by(username: "Guest")
  
    if reader
      session[:reader_id] = reader.id
      flash[:message] = "You have logged in as a Guest."
      redirect_to '/index.html'
    else
      flash[:message] = "Guest user not found."
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:reader_id)
    flash[:notice] = "You have successfully logged out of bookface. Your books are saved."
    redirect_to root_path
  end

  private
  #auth hash, environment hash, omniauth.auth is the key
  def auth
    request.env['omniauth.auth']
  end 
end
