class User < ActiveRecord::Base
	validates :avatar,
		attachment_content_type: {content_type: /\Aimage\/.*\Z/ }
    has_secure_password
	has_many :performers
    has_attached_file :avatar, styles: { thumb: "100x100!" }, :default_style => :thumb, default_url: "/images/:style/missing.png"




end
