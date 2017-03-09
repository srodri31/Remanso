# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def new_user
    user = User.first
    UserMailer.contact_us(user)
  end
  def new_user_mail
    user = User.first
    UserMailer.contact_user(user)
  end
end
