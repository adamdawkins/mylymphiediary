class MeasuringPoint < ApplicationRecord
  belongs_to :affected_body_part

  validates :value, presence: true, numericality: true
end
