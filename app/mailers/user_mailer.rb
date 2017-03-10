class UserMailer < ApplicationMailer
  def contact_us(user)
		@user = user
		mail(to: [ENV['EMAIL_TO_CONTACT_US'].split(",").map(&:strip)], subject: '[Portón del Norte] - Contacto desde el sitio web')
	 end
   def contact_user(user)
 		@user = user
 		mail(to: user.email, subject: '[Portón del Norte] - Hemos recibido tu información')
 	 end
end
