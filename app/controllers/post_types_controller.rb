class PostTypesController < ApplicationController
    def create
        post_type = Post_type.create(post_params)
        render json: post_type, status: :created
    end

    private

    def post_params
        params.permit(:description)
    end
end