class SessionController < ApplicationController
    
    def create
        user = User.where(email: params[:email]).first_name
        if (user.valid_password ? (params[:password]))
            render json: user.as_json(only: [:email]), status 
        else 
            head(:unauthorized)
        end
    end
    def destroy
    end
end