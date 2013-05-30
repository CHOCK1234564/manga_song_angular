class CommentsController < ApplicationController

  # POST /comments

  def create
    @comment = Comment.new(params[:comment])


      if @comment.save
         redirect_to @comment.musique, notice: 'Comment was successfully created.'
      else
         redirect_to @comment.musique, error: 'Comment was not successfully created.'
      end
    end
  end

  