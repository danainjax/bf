class ReadersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    before_action :set_reader, except: [:new, :create]
    
    

    def new
        @reader = Reader.new
    end

    #this is the signup action
    def create
       @reader = Reader.new(reader_params)
        if @reader.save 
            session[:reader_id] = @reader.id
            redirect_to reader_path(@reader)
        else
            render :new
        end
    end

    def show
        if !@reader
            redirect_to '/' 
        elsif
            @reader.id == session[:reader_id] 
        else
            redirect_to '/'
        end
    end

    def edit
        #check this code, currently able to edit via URL hacking
        if !@reader || !@reader.id == session[:reader_id]
            redirect_to '/'
        end
       
    end

    def update
        if @reader.update(reader_params)
            redirect_to reader_path(@reader)
        else
            render :edit
        end
    end

    def destroy
        @reader.destroy
        session.clear
        redirect_to root_path
    end



private

    def reader_params
        params.require(:reader).permit(:username, :password, :first_name, :last_name, :favorite_genre, :favorite_book, :profile_pic, :email)
    end

    def set_reader
        @reader = Reader.find_by_id(params[:id])
    end  
end
