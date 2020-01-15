class Admin::RubricImagesController < ApplicationController
  def create
    @rubric = Rubric.find(params[:rubric_id])
    @rubric.rubric_image.attach(params[:rubric_image])
    redirect_to (edit_admin_rubric_path(@rubric.id))
  end
 
end
