class User < ApplicationRecord
  has_many :affected_body_parts, dependent: :destroy
  has_many :body_parts, through: :affected_body_parts

  validates :email, uniqueness: true, presence: true


  def generate_login_token
    self.login_token = SecureRandom.hex(10)
    self.token_generated_at = Time.now.utc
    save!
  end

  def send_login_email
    generate_login_token

    UserMailer.with(user: self).login_email.deliver_now
  end

  def expire_token!
    self.login_token = nil
    save!
  end
  
  def login_token_expired?
    Time.now.utc > (self.token_generated_at + token_validity)
  end


  private

  def generate_token
    SecureRandom.hex(10)
  end


  def token_validity
    24.hours
  end
end
