class SessionController < ApplicationController

    before_action :authenticate_request, except: :create

    def create
        user = User.find_by(email: params[:email])
        puts user
        if user&.authenticate(params[:password])
            token = jwt_encode(user_id: user.id)
            render json: {
                user: user,
                token: token
            }, status: :created
        else
            render json: { error: 'Invalid email or password.' }, status: :unauthorized
        end
    end




end
