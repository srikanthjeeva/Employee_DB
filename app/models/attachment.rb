class Attachment < ActiveRecord::Base
  has_attachment :storage => :file_system

  validates_as_attachment

  belongs_to :attachable, :polymorphic => true
end
