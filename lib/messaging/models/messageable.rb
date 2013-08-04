module Messaging
  module Models
    module Messageable
      extend ActiveSupport::Concern

      module ActiveRecord
        def acts_as_messageable
          include Messageable
        end
      end

      included do
        has_many :receipts
        has_many :sent_messages, :through => :receipts, :foreign_key => :sender_id, :source => :message
        has_many :messages,      :through => :receipts, :foreign_key => :recipient_id
      end

      def send_message(recipients, msg_body)
        #message.deliver
      end

    end
  end
end
