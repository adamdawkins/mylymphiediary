class MeasuringPointsController < ApplicationController
  before_action :set_affected_body_part
  def index
    @measuring_points = @affected_body_part.measuring_points
  end

  def create
    @measuring_point = @affected_body_part.measuring_points.build(measuring_point_params)
    respond_to do |format|
      if @measuring_point.save
        format.html { redirect_to affected_body_part_measuring_points_path(@affected_body_part), notice: "measurement added successfully" }
      else
      end
    end
  end

  private

  def measuring_point_params
    params.require(:measuring_point).permit(:value)
  end

  def set_affected_body_part
    @affected_body_part = AffectedBodyPart.find(params[:affected_body_part_id])
  end
end
