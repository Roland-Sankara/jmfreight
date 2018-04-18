class ContactsMailer < ApplicationMailer
	default from: "donotreply.websitemailer@gmail.com"
	layout 'mailer'

	def send_email(email)
	    @email = email
	    mail(to: "nkusialex@gmail.com", subject: email.subject)
	end
end
