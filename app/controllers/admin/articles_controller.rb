class Admin::ArticlesController < ApplicationController
  def index

  end
  
  def show

    @article = Article.find(params[:id])
    puts params

  end
  
  def new
    puts params

  end

  def create

    
    @rubric= Rubric.find (params[:rubric_id])
    @user = User.find (params[:user_id])

    @article = Article.new(title: params[:title], body: params[:body], user: @user, rubric: @rubric )
    if @article.save
      flash[:success] = 'Article successfully created'
      redirect_to (admin_article_path(@article.id))
       
    else
      flash.now[:danger] = 'Something went wrong, please check your input'
      render new_admin_article_path
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
