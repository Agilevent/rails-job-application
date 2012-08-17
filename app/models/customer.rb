class Customer < ActiveRecord::Base
  attr_accessible :firstname, :lastname
  
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  
  has_many :charges
end
