class BlogPost < ActiveRecord::Base

  ## ASSOCIATIONS
  belongs_to :user

  ## VALIDATIONS
  validates :title, presence: true

end
