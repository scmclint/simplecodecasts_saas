class ContactMailer < ActionMailer:: Base
  default to: 'scmclint@gmail.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = emails
    @body = body
    
    mail(from: email, subject: 'Contact Form Message')
  end
end