class Measurement < ApplicationRecord
  belongs_to :recording
  belongs_to :measuring_point
end
