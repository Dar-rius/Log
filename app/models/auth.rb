class Auth < ApplicationRecord

    validates :email, presence: true
    validates :name, presence: true
    validates :first_name, presence: true
    validates :password, presence: true, length: {minimum:8, message:"Erreur le mot de passe doit atteindre 8 caracteres"}
    validates :password_confirm, confirmation:{case_sensitive: true, message:"une erreur"}
    validates :gender, presence: true
    validates :country, presence: true

end
