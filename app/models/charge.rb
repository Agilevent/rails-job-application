class Charge < ActiveRecord::Base
  attr_accessible :amount, :amount_refunded, :currency, :description, :disputed, :failure_message, :fee, :invoice, :livemode, :object, :paid, :refunded, :stripe_id
  
  belongs_to :customer
end
