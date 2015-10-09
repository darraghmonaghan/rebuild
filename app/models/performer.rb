class Performer < ActiveRecord::Base
	belongs_to :user

	has_attached_file :perfavatar, styles: { thumb: "100x100!" }, :default_style => :thumb, default_url: "/images/:style/missing.png"	
	validates :perfavatar,
		attachment_content_type: {content_type: /\Aimage\/.*\Z/ }

	has_attached_file :image1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image1, content_type: /\Aimage\/.*\Z/

     has_attached_file :image2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
     validates_attachment_content_type :image2, content_type: /\Aimage\/.*\Z/

     has_attached_file :image3, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
     validates_attachment_content_type :image3, content_type: /\Aimage\/.*\Z/

     scope :category_id, -> (category_id) {where category_id: category_id }
     
     extend FriendlyId
     friendly_id :performer_name, use: [:slugged, :finders]

end
