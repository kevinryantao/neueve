class TransactionalMailer < ApplicationMailer
  default from: 'NeuEve <orders@neueve.com>'

  def alacarte_email(pdt_hash)
    @pdt_hash = pdt_hash

    @is_bv_user = is_bv_user(pdt_hash)

    payer_email = pdt_hash["payer_email"]

    mail(to: payer_email, subject: "NeuEve Order Confirmation (##{@pdt_hash["txn_id"]})")
  end

  def is_bv_user(pdt_hash)
    (1..(pdt_hash["num_cart_items"].to_i)).each do |i|
      if pdt_hash["item_name#{i}"].include? "BV"
        return true
      end
    end
    false
  end

  def subscription_email(pdt_hash)
    @pdt_hash = pdt_hash

    payer_email = pdt_hash["payer_email"]

    mail(to: payer_email, subject: "NeuEve Subscription Confirmation (##{@pdt_hash["subscr_id"]})")
  end
end
