class Admin::RubricImagesController < ApplicationController
  def create
    @rubric = Rubric.find(params[:rubric_id])
    @rubric.rubric_image.attach(params[:rubric_image])
    redirect_to "/rubrics"
  end
 
end