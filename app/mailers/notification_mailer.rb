class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.send_message.subject
  # http://vdeep.net/rubyonrails-actionmailer
  # domain should be no-reply@jungle.com
  def send_message(name)
    @name = name
    @greeting = 'Hi, this is greeting from TEST!'

    mail to:'test@test.com', subject: 'mail test'
  end


  # def welcome_email(user)
  #   @user = user
  #   @url  = 'http://example.com/login'
  #   mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  # end

end
