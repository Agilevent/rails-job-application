class Customer < ActiveRecord::Base
  attr_accessible :firstname, :lastname
  
  has_many :charges
end
