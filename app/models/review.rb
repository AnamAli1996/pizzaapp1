class Review < ActiveRecord::Base
	belongs_to :customer
	mount_uploader :attachment, AttachmentUploader
	validates :stars, presence: true
	validates :comment, presence: true
		
		
end
