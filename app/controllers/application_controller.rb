class ApplicationController < ActionController::Base
    include ReadersHelper
    before_action :authorized
    helper_method :logged_in?
    helper_method :current_reader
    before_action :set_genres

    def current_reader
        Reader.find_by(id: session[:reader_id])
    end

    def logged_in?
        !current_reader.nil?
    end

    def authorized
        redirect_to '/login' unless logged_in?
    end

    def set_genres
        @options = ([['Hardcover Fiction', 'Hardcover Fiction'], ['Hardcover Nonfiction','Hardcover Nonfiction'],['Celebrities','Celebrities'],['Hardcover Advice','Hardcover Advice'],['Family','Family'],['Food and Fitness','Food and Fitness'],['Culture','Culture'],['Young Adult','Young Adult'], ['Health','Health'], ['Humor','Humor'], ['Mass Market Paperback','Mass Market Paperback'], ['Paperback Advice','Paperback Advice'], ['Trade Fiction Paperback', 'Trade Fiction Paperback'], ['Travel', 'Travel'], ['Animals','Animals'], ['Business Books','Business Books'],['Hardcover Political Books','Hardcover Political Books'], ['Manga','Manga'], ['Picture Books','Picture Books'],['Hardcover Graphic Books','Hardcover Graphic Books'], ['Race and Civil Rights', 'Race and Civil Rights'], ['Religion Spirituality and Faith', 'Religion Spirituality and Faith'], ['Science', 'Science'], ['Sports', 'Sports'], ['Combined Print and E-Book Fiction','Combined Print and E-Book Fiction'],['Combined Print and E-Book NonFiction','Combined Print and E-Book NonFiction']])
    end
end
