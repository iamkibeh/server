class CommentsController < ApplicationController

    def index
        comments = Comments.all
        render json: comments
    end

    def show
        comments = Comments.all
        render json: comments
        
    end

    def create
        comments = Comments.create(comments_params)
        render json: comments, status: :created
    end

    def destroy
        comments = Comments.find(params[:id])
        comments.destroy
        head :no_content
    end

    private

    def comments_params
        params.permit(:comment)
    end
end
