class User < ApplicationRecord
  has_many :affected_body_parts, dependent: :destroy

  validates :email, uniqueness: true, presence: true

  def body_parts
    affected_body_parts.collect(&:body_part)
  end
end
