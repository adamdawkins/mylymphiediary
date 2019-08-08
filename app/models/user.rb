class User < ApplicationRecord
  has_many :affected_body_parts, dependent: :destroy
  has_many :body_parts, through: :affected_body_parts

  validates :email, uniqueness: true, presence: true

end
