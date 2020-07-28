class ArticlesController < ApplicationController
  before_action :move_to_index, expect: :index
  
  def index
    @articles = Article.includes(:user)
  end

  def new
    @articles = Article.new
  end

  def create
    Article.create(article_params)
  end

  private

  def article_params
    params.require(:article).permit(:quote, :menu, :rule ).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end