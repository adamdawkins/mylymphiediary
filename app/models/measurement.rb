class Measurement < ApplicationRecord
  belongs_to :measuring_point
  belongs_to :recording

  validates :value, presence: true, numericality: true

end
