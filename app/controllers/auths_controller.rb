class AuthsController < ApplicationController

    #show the data users
    def show
        @auth = Auth.find(params[:id])
    end

    #create users
    def new
        @auth = Auth.new
    end

    def create
        @auth = Auth.new(auth_params)
        if @auth.save
            redirect_to @auth
        else 
            render :new
        end
    end


    private
        def auth_params
            params.require(:auth).permit(:email, :name, :first_name, :password, :password_confirm, :gender, :country)
        end
end
