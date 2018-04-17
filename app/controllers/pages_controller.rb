class PagesController < ApplicationController

  def home
    
  end

  def services
    @page_title = "JMFreight | Services"
  end

  def about
    @page_title = "JMFreight | About"
  end

  def contact
    @page_title = "JMFreight | Contact"

    if params[:commit] == "Send"
        puts "Send button Clicked"
        p "*" * 55

        fullname = params['fullname']
        email = params['email']
        subject = params['subject']
        message = params['message']

        #send email
        @email = Email.new(fullname: fullname, email: email, subject: subject, message: message)
        ContactsMailer.send_email(@email).deliver
        
        #redirect
        redirect_to home_path, notice: 'Your Message was sent'
    end
  end
end
