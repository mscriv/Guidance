class UserMailer < ActionMailer::Base
  default from: 'admin@blake-guidance.com'


  def signup_confirmation(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Thank you for signing up')
  end
end


