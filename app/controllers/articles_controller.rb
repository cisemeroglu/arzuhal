class ArticlesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @articles=@user.articles
    @newarticle=Article.new
  end

  def destroy
    @user = User.find(params[:user_id])
    @user.articles.find(params[:id]).destroy
    redirect_to user_articles_path(@user)
  end


  def create
    @user = User.find(params[:user_id])
    @article = @user.articles.create(article_params)
    redirect_to user_articles_path(@user)
  end

  private
  def article_params
    params.require(:article).permit(:body)
  end



end