class Picture < ActiveRecord::Base
	belongs_to :customer
	  
	has_attached_file :image,styles:{medium: "300x300>"},:path => ':attachment/:id/:style.:extension',
    :storage        => :s3,
    :s3_host_alias  => 'dev.1stmile.in',
    :s3_credentials => File.join(Rails.root, 'config', 'aws.yml')
   validates_attachment_content_type :image,:content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif','image/vob']  
end
