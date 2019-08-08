class MeasuringPoint < ApplicationRecord
  belongs_to :body_part
  has_many :measuring_point_values, dependent: :destroy

  has_many :measurements, dependent: :destroy
end
