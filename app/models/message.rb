class Message < ActiveRecord::Base
  has_many :receipts
  has_many :recipients, :through => :receipts
  has_one  :sender,     :through => :receipts
end
