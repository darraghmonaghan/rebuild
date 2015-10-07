class User < ActiveRecord::Base
    has_secure_password
	has_many :performers

	


    has_attached_file :avatar, styles: { thumb: "100x100!" }, :default_style => :thumb, default_url: "/images/:style/missing.png"
     validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
