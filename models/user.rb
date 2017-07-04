class User < ActiveRecord::Base

  ## ASSOCIATIONS
  has_many :blog_posts

end
