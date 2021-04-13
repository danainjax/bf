class ReadersController < ApplicationController

    def new
        @reader = Reader.new
    end

    def create
       @reader = Reader.new(reader_params)
        if @reader.save 
            redirect_to reader_path(@reader)
        end
    end

    def show
        @reader = Reader.find(params[:id])
    end

    def edit
        @reader = Reader.find(params[:id])
    end

    def update
        @reader = Reader.find_by_id(params[:id])
        @reader.update(reader_params)
        redirect_to reader_path(@reader)
    end

    def destroy
        @reader.destroy
        redirect_to reader_path(@reader)
    end



private

    def reader_params
        params.require(:reader).permit(:username, :password, :first_name, :last_name, :favorite_genre, :favorite_book, :profile_pic)
    end
end
