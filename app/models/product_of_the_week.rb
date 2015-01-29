class ProductOfTheWeek < ActiveRecord::Base
	has_attached_file 	:photo, 
						:styles => {:small => "150x150> "},
						:url 	=> "/assets/ProductOfTheWeek/:id/:style/:basename.:extension",
						:path 	=> ":rails_root/public/assets/ProductOfTheWeek/:id/:style//:basename.:extension"

	validates_attachment :photo
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
