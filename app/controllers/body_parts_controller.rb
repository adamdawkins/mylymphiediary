class BodyPartsController < ApplicationController
  def index
    @body_parts = BodyPart.all
    session[:body_part_ids] ||= []
  end

  def update
    body_part_ids = session[:body_part_ids] || []
    body_part_ids << params[:id].to_i
    session[:body_part_ids] = body_part_ids.uniq
    
    respond_to do |format|
      format.html { redirect_to body_parts_path }
    end
  end

  def destroy
    body_part_ids = session[:body_part_ids] - [params[:id].to_i]
    session[:body_part_ids] = body_part_ids.uniq
    
    respond_to do |format|
      format.html { redirect_to body_parts_path }
    end
  end
end
