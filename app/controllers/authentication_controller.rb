class AuthenticationController < ApplicationController
    skip_before_action :authenticate_user
    
    def create
        user = User.find_by_email(params[:email])
        user = User.find_by_type(params[:user_type])
        if user&.authenticate(params[:password])
            token = JwtToken.encode(user_id: user.id)
            render json: {
                user: user,
                token: token
            }, status: :created
        else
            render json: { error: 'Invalid email or password.' }, status: :unauthorized
        end
    end
    
end
