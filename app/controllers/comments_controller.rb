class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @piece = @comment.piece
  end

  def create
    @comment = current_user.comments.build(comment_params)
    @piece = @comment.piece
    if @comment.save
      redirect_to pieces_path, notice: "感想を記録しました！"
    else
      render :new
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:piece_id, :content, :play)
    end
end
