class Admin::PhImagesController < ApplicationController

  def create
    
    @paragraph= Paragraph.find(params[:paragraph_id])
    @article = @paragraph.article
    @paragraph.ph_image.attach(params[:ph_image])
    redirect_to (admin_article_path(@article.id))
  end
 
end
