module ReadersHelper

    def delete_reader_data
        @reader.reviews.destroy_all
    end
end
