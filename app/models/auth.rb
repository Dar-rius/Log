class Auth < ApplicationRecord
    has_secure_password

    validates :email, presence: true
    validates :name, presence: true
    validates :first_name, presence: true
    validates :gender, presence: true
    validates :country, presence: true

end
