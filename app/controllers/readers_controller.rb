class ReadersController < ApplicationController

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
            # reader.errors.full_messages
            render :new
        end
    end

    def show
        @reader = Reader.find_by_id(params[:id])
        redirect_to '/' if !@reader
    end

    def edit
        @reader = Reader.find(params[:id])
    end

    def update
        @reader = Reader.find_by_id(params[:id])
        if @reader.update(reader_params)
            redirect_to reader_path(@reader)
        else
            render :edit
        end
    end

    def destroy
        @reader.destroy
        redirect_to reader_path(@reader)
    end



private

    def reader_params
        params.require(:reader).permit(:username, :password, :first_name, :last_name, :favorite_genre, :favorite_book, :profile_pic, :email)
    end
end
