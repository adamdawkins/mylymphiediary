class RecordingsController < ApplicationController
  before_action :set_affected_body_part

  def new
    @recording = @affected_body_part.recordings.build
    @affected_body_part.measuring_points.each do |mp|
      @recording.measurements.build(measuring_point: mp)
    end
  end

  def create
    @recording = @affected_body_part.recordings.build(recording_params) 

    respond_to do |format|
      if @recording.save
        format.html { redirect_to @affected_body_part }
      else
        format.html { rendirect_to new_affected_body_part_recording_path @affected_body_part}
      end
    end
  end



  private

  def set_affected_body_part
    @affected_body_part = AffectedBodyPart.find(params[:affected_body_part_id])
  end

  def recording_params
    params.require(:recording).permit(:recorded_at, :measurment_fields)
  end
end
