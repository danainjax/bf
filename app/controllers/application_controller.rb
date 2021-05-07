class ApplicationController < ActionController::Base
    include ReadersHelper
    before_action :authorized
    helper_method :logged_in?
    helper_method :current_reader

    def current_reader
        Reader.find_by(id: session[:reader_id])
    end

    def logged_in?
        !current_reader.nil?
    end

    def authorized
        redirect_to '/login' unless logged_in?
    end
end
