class ProductMail < ActionMailer::Base
  default from: "jagan418@gmail.com"

  def product_email(user,product)
    @user = user
    @product = product
    mail(to: @user.email, subject: 'Product Information')
  end

end
