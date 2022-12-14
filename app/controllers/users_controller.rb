class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        users = User.all
        render json: users, each_serializer: UsersSerializer
    end

    def show
        user = find_user
        if user
            render json: user
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end

    def create
        user = User.create(user_params)
        if user.valid?
            # session[:user_id] = user.id
            render json: user, serializer: UsersSerializer, status: :created
        else
            render json: { error: user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def find_user
        User.find_by(id: session[:user_id])
    end

    def user_params
        params.permit(:first_name, :last_name, :email, :phone_number, :password, :agreement, :github, :linkedin, :cv_link, :country, :bio, :skills, :profession, :user_type, :company_name, :company_website, :avatar)
    end

    def record_not_found_method
        render json: { error: "Destination not found" }, status: :not_found
    end


end
