class AffectedBodyPart < ApplicationRecord
  belongs_to :user
  belongs_to :body_part
  has_many :measuring_points, dependent: :destroy
  has_many :measurements, dependent: :destroy

  validates_uniqueness_of :body_part_id, scope: :user_id
  validates_presence_of :user_id
  validates_presence_of :body_part_id

  def value_for_measuring_point(measuring_point_id)
    measuring_point_values.where(measuring_point_id: measuring_point.id).value
  end


end
