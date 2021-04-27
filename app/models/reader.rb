class Reader < ApplicationRecord
    has_many :reviews
    has_many :books, through: :reviews
    has_one_attached :profile_pic

    has_secure_password #validation, .authenticate, .password, .password=

    #validations come from ActiveRecord
    # validates :username,:email,  presence: true, uniqueness: true
    # validates :password, length: { in: 6..12 }, allow_nil: true
    
    
   
end
