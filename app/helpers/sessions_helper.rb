module SessionsHelper

 #logs in the given reader
    def log_in(reader)
        session[:reader_id] = reader.id 
    end

    #returns the current logged-in reader (if any)
    def current_reader
        @current_reader ||= Reader.find_by(id: session[:reader_id])
    end

    #returns true if current_reader is not nil
    def logged_in?
        !current_reader.nil?
    end

    def log_out
        session.delete(:reader_id)
        @current_reader = nil
    end

    
end
