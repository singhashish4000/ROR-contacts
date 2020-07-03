class SendContactEmailJob < ApplicationJob
  queue_as :default

  def perform(contact)
    @contact = contact
    ContactMailer.send_contact(@contact).deliver
  end

end
