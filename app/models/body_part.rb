class BodyPart < ApplicationRecord
  has_many :affected_body_parts, dependent: :nullify
  validates :name, uniqueness: { case_sensitive: false }, presence: true
end
