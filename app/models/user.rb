class User < ApplicationRecord
#after_create :subscribe_to_newsletter


private

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call

  end

  def send_welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
