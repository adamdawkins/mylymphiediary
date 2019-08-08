class MeasuringPointValue < ApplicationRecord
  belongs_to :measuring_point
  belongs_to :affected_body_part

  validates_presence_of :affected_body_part_id, :measuring_point_id, :value
end
