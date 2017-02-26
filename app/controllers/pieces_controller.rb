class PiecesController < ApplicationController
  before_action :set_piece, only: [:show, :edit, :update, :destroy]

  def index
    @pieces = Piece.all
  end

  def show
    @comment = @piece.comments.build
    @comments = @piece.comments
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(pieces_params)
    if @piece.save
      redirect_to pieces_path, notice: "新たな曲を登録しました！"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @piece.update(pieces_params)
      redirect_to pieces_path, notice: "楽曲情報を更新しました！"
    else
      render :edit
    end
  end

  def destroy
    @piece.destroy
    redirect_to pieces_path, notice: "楽曲を削除しました！"
  end

  def confirm
    @piece = Piece.new(pieces_params)
    render :new if @piece.invalid?
  end

  private
    def pieces_params
      params.require(:piece).permit(:title, :composer, :arranger, :publisher)
    end

    def set_piece
      @piece = Piece.find(params[:id])
    end
end
