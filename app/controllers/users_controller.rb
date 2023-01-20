class UsersController < ApplicationController
      rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method
    skip_before_action :authenticate_user, only: [:create, :index, :show]
    before_action :find_user, only: [:update, :destroy]


  def index
    users = User.all
    render json: users, each_serializer: UsersSerializer
  end

  def me
    user = find_user
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  def show 
    user = User.find_by!(id: params[:id])
    if user
      render json: user, status: :ok
    end

  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end

  def create
    user = User.create(user_params)
    if user.valid?
      render json: user, serializer: UsersSerializer, status: :created
    else
      render json: { error: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    # byebug
    user = User.find(params[:id])
    if user.valid?
      user.update(user_params)
      render json: user, status: :ok
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end
  
  private

  def find_user
    User.find_by(id: params[:id])
  end

  def user_params
    params.permit(:first_name, :last_name, :email, :phone_number, :password, :agreement, :github, :linkedin, :cv_link, :country, :bio, :skills, :profession, :user_type, :company_name, :company_website, :profile_img, :twitter_url, :user_location, :id)
  end

  def record_not_found_method
    render json: { error: "Record not found" }, status: :not_found
  end
end
