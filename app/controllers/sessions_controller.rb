class SessionsController < ApplicationController
  # skip_before_action :verify_authenticity_token, only: :create
  def new #renders the login form, does not create a new object
    # if logged_in?
    #   redirect_to 'root'
  end

  def home #root route
    
  end

  def facebook
    # byebug
    reader = Reader.find_or_create_by(email: auth["info"]["email"]) do |r|
        r.username = auth['info']['name']
        r.email = auth['info']['email']
        r.profile_pic = auth['info']['image']
        r.password = SecureRandom.hex(12)
      end
      binding.pry
      if reader.valid?
        session[:reader_id] = reader.id
      redirect_to reader_path(reader)
      else
        redirect_to '/login'
      end

  end

  

  

  def omniauth
    
    reader = Reader.find_or_create_by(uid: request.env['omniauth.auth'][:uid], provider: request.env['omniauth.auth'][:provider]) do |r|
      
      r.username = request.env['omniauth.auth'][:info][:first_name]
      r.email = request.env['omniauth.auth'][:info][:email]
      r.password = SecureRandom.hex(6)
    end 
    
    if reader.valid?
      session[:reader_id] = reader.id
      redirect_to reader
    else
      redirect_to login_path
    end
  end


  #this is logging in
  def create
    reader = Reader.find_by(username: params[:session][:username])
    #finds the user by username key in the params
    if reader && reader.authenticate(params[:session][:password])
      #if the reader username is found in the params and the password authenticates...
      session[:reader_id] = reader.id
      #then create a new key in sessions hash, setting it equal to existing user's id
        redirect_to reader
    else
      flash[:message] = "Invalid username or password"
      render :new
    end
  end

  def destroy
    session.delete(:reader_id)
    current_reader = nil
    flash[:notice] = "You have successfully logged out of bookface. Your books are saved."
    redirect_to root_path
  end

  private
  #auth hash, environment hash, omniauth.auth is the key
  def auth
    request.env['omniauth.auth']
  end 
end
