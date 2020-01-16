class Admin::ArticleImagesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @article.article_images.attach(params[:article_images])
    redirect_to (edit_admin_article_path(@article.id))
    
  end
end
