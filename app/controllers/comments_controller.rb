class CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments
  end

  def show
    comments = Comment.all
    render json: comments
  end

  def create
    comments = Comment.create(comments_params)
    render json: comments, status: :created
  end

  def destroy
    comments = Comment.find(params[:id])
    comments.destroy
    head :no_content
  end

  private

  def comments_params
    params.permit(:comment)
  end
end
