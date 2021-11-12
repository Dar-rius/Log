class LoginsController < ApplicationController
    def new 
        user = Auth.new
    end
    
    def create 
        user = Auth.find_by(email: params[:email])
        
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user, notice:"Vous etes connecter"
        else
            message= "une erreur s'est produite"
            render :new, notice: message
        end
    end
end
