class UserMailer < ApplicationMailer
  default from: 'notifications@mylymphiediary.com'

  def login_email
    @user = params[:user] 
    @url = "http://localhost:3000/auth/#{@user.login_token}"

    mail to: @user.email, subject: 'Login to My Lymphie Diary'
  end
end
