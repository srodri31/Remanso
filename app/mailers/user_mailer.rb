class UserMailer < ApplicationMailer
  def contact_us(user)
		@user = user
		mail(to: [ENV['EMAIL_TO_CONTACT_US'].split(",").map(&:strip)], subject: '[Intercasa] - Contacto desde el sitio web')		
	 end
   def contact_user(user)
 		@user = user
 		mail(to: user.email, subject: '[Intercasa] - Hemos recibido tu información')
 	 end
end
