class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  def new
    @piece = Piece.find(params[:piece_id])
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.build(comment_params)
    @comment.piece_id = params[:piece_id]
    @piece = @comment.piece
    if @comment.save
      redirect_to piece_path(@piece), notice: "コメントを記録しました！"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to piece_path(@piece), notice: "コメントを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to piece_path(@piece), notice: "コメントを削除しました！"
  end

  private
    def comment_params
      params.require(:comment).permit(:piece_id, :content, :memo, :play)
    end

    def set_comment
      @comment = Comment.find(params[:id])
      @piece = @comment.piece
    end
end
