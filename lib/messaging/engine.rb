module Messaging
  class Engine < Rails::Engine
    initializer "messaging.models.messageable" do
      ActiveSupport.on_load(:active_record) do
        extend Messaging::Models::Messageable::ActiveRecord
      end
    end
  end
end
