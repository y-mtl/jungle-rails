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
  def show
      @order = Order.find(params[:id])
      @line_items = @order.line_items
  end

 def send_message(user_name, user_email, order, total_amount)
      @user_name = user_name
      @order = order
      @total_amount = total_amount
      mail(to: 'test@test.com', subject: 'Your order confirmation. {@order.id}')
  end

end
