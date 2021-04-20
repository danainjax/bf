module SessionsHelper

 #logs in the given reader
    def log_in(reader)
        session[:reader_id] = reader.id 
    end

    
    
end
