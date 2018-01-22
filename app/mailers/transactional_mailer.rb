class TransactionalMailer < ApplicationMailer
  default from: 'NeuEve <orders@neueve.com>'

  def alacarte_email(pdt_hash)
    @pdt_hash = pdt_hash

    mail(to: "kevin@neueve.com", subject: 'NeuEve Order Confirmation')
  end

  def subscription_email(pdt_hash)
    @pdt_hash = pdt_hash

    mail(to: "kevin@neueve.com", subject: 'NeuEve Subscription Confirmation')
  end
end
