class AttachmentUploader < CarrierWave::Uploader::Base
  storage Messaging.config.attachment_storage

  if Messaging.config.allowed_attachment_filetypes
    def extension_white_list
      Messaging.config.allowed_attachment_filetypes
    end
  end
end
