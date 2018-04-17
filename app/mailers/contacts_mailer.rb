class ContactsMailer < ApplicationMailer
	default from: "donotreply.websitemailer@gmail.com"
	layout 'mailer'

	def send_email(email)
	    @email = email
	    mail(to: "brucemakallan@gmail.com", subject: email.subject)
	end
end
