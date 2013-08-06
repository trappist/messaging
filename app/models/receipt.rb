class Receipt < ActiveRecord::Base
  belongs_to :message
  belongs_to :sender,    :class_name => Messaging.config.user_class.to_s
  belongs_to :recipient, :class_name => Messaging.config.user_class.to_s
  validates :receiver, :presence => true

  scope :trash,  -> { where(:trash  => true)  }
  scope :inbox,  -> { where(:trash  => false) }
  scope :read,   -> { where(:read   => true)  }
  scope :unread, -> { where(:unread => true)  }
  scope :to,     -> (receiver)  { where(:recipient_id => receiver.id) }
  scope :from,   -> (initiator) { where(:sender_id => initiator.id) }
end
