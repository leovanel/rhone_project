class Admin::ParagraphsController < ApplicationController

  def create

    @article = Article.find(params[:article_id])

    @paragraph = @article.paragraphs.new(body: ph_params[:body])
    puts params
    if @paragraph.save
      flash[:success] = 'Article successfully created'
      redirect_to (article_path(@article.id))
       
    else
      flash.now[:danger] = 'Something went wrong, please check your input'
      render new_admin_article_path
    end

  end

  def update

    @article = Article.find(params[:article_id])
    @paragraph = Paragraph.find(params[:id])

    if @paragraph.update( body:ph_params[:body])
      flash[:success] = 'Article successfully created'
      redirect_to (edit_admin_article_path(@article.id))
       
    else
      flash.now[:danger] = 'Something went wrong, please check your input'
      render :edit
    end



  end

  private 

  def ph_params

    params.require(:paragraph).permit(:body)

  end
end
