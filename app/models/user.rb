class User < ApplicationRecord
    validates :usename, presence: true, 
                        uniqueness: { case_sensitivite: false }, 
                        length: { minimum: 3, maximum: 15 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, 
                        uniqueness: { case_sensitivite: false }, 
                        length: { maximum: 100 }
                        format: { with: VALID_EMAIL_REGEX }
end