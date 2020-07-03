class ContactMailer < ApplicationMailer
  default from: ENV['DEFAULT']
  SEND_MAIL_TO = ENV['SEND_MAIL_TO']

  def send_contact(contact)
    @contact = contact
    mail(to: SEND_MAIL_TO, subject: 'Hi, You have a new contact form submission')
  end

end
