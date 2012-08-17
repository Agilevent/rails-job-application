class Charge < ActiveRecord::Base
  attr_accessible :amount, :amount_refunded, :currency, :description, :disputed, :failure_message, :fee, :invoice, :livemode, :object, :paid, :refunded, :stripe_id
  
  validates :amount, :numericality => { :greater_than_or_equal_to  => 0 }
  validates :fee, :numericality => { :greater_than_or_equal_to  => 0 }
  validates :amount_refunded, :numericality => { :greater_than_or_equal_to  => 0, :allow_nil => true }
  validates :currency, :length => {:is => 3}
  
  belongs_to :customer
end
