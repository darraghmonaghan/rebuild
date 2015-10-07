class User < ActiveRecord::Base
	has_secure_password
	has_many :performers

	has_attached_file :avatar, styles: { thumb: "100x100!" }, :default_style => :thumb, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  	def self.confirm(params)
  		@user = User.where(email: params[:user][:email])
  		@user.authenticate(params[:user][:password_digest])
  	end
end
