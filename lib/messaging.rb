module Messaging
  module Models
    autoload :Messageable, 'messaging/models/messageable'
  end

  mattr_accessor :user_class
  mattr_accessor :attachment_storage
  mattr_accessor :allowed_attachment_filetypes

  require 'messaging/engine'
  require 'messaging/concerns/configurable_mailer'
  class << self
    def setup
      yield self
    end
  end
end
