class CommentsController < ApplicationController

    def index
        comments = Comments.all
        render json: comments
    end

    def create
        
    end
end
