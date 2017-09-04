class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def welcome_email(order, order_products)
    @order = order
    @order_products = order_products
    mail(to: @order.email, subject: @order.id)
  end
end
