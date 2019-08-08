class Recording < ApplicationRecord
  belongs_to :affected_body_part
  has_many :measurements, dependent: :destroy

  validates :recorded_at, :affected_body_part_id, presence: true
end
