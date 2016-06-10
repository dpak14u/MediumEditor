class User < ActiveRecord::Base
	has_many :user_comment_photos
    validates_presence_of :name
end
