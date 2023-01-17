class UserTypesController < ApplicationController

    def create
        def create
            user_type = User_type.create(type_params)
            render json: user_type, status: :created
        end
    end

    private
        def post_params
            params.permit(:description)
        end

end
