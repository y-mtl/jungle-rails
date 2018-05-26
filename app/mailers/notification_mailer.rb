class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.send_message.subject
  # http://vdeep.net/rubyonrails-actionmailer
  # domain should be no-reply@jungle.com
  # def send_message(name)
  #   @name = name
  #   @greeting = 'Hi'

  #   mail to: 'to_okutani@example.com', subject: 'ActionMailerのテスト送信'
  # end

 def send_message(order)
      @order = order
      mail(to: 'test@test.com', subject: 'Order Confirmation: #{@order.id}')
  end

end
