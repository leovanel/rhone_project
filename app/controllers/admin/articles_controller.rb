class Admin::ArticlesController < ApplicationController
  def index

  end
  
  def show

    @article = Article.find(params[:id])
    puts params

  end
  
  def new

  end

  def create

    @article = Article.new(title: params[:title],body: params[:body],user_id : params[:user_id],rubric_id: rubrics_params[:id])
    if @article.save
      flash[:success] = 'Rubric successfully created'
      redirect_to (admin_article_path(@article.id))
       
    else
      flash.now[:danger] = 'Something went wrong, please check your input'
      render new_admin_rubric_path
    end

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private  

  def rubrics_params

    params.require(:rubric).permit(:id)
  end

end
