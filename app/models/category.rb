class Category < ActiveRecord::Base
	 extend FriendlyId
     friendly_id :category, use: [:slugged, :finders]

end
