class Admin::RubricsController < ApplicationController

  def index
    @rubrics = Rubric.all

  end
  
  def show

    @rubric = Rubric.find(params[:id])
    

  end
  
  def new

  end

  
  def create
   
    
    @rubric = Rubric.create(title:"")
    if @rubric.save
      flash[:success] = 'Rubric successfully created'
      redirect_to (admin_rubric_path(@rubric.id))
       
    else
      flash.now[:danger] = 'Something went wrong, please check your input'
      redirect_to "/"
    end
    

  end
  

  def edit

    @rubric = Rubric.find(params[:id])

  end

  def update
    @rubric = Rubric.find(params[:id])

    
    
    if @rubric.update(title:rubric_params[:title])
      flash[:success] = 'Rubric successfully created'
      redirect_to (rubric_path(@rubric.id))
       
    else
      flash.now[:danger] = 'Something went wrong, please check your input'
      render :edit
    end

  end

  def destroy

  end

  private

  def rubric_params

    params.require(:rubric).permit(:title)

  end


 

end
