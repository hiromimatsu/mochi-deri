class ArticlesController < ApplicationController
  before_action :move_to_index, expect: :index
  
  def index
    @articles = Article.includes(:user)
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:menu, :rule, :image, :restaurant, :instagram, area_id: []).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end