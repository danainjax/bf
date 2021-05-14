module BooksHelper

    def full_date(date)
        date.to_time.strftime('%b %d, %Y')
    end
end
